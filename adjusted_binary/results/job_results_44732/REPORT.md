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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        brthmon    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       24     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        5     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0       20     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0       11     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        1     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0       17     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       25     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        3     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       25     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       32     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        1     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       20     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        1     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        0     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       22     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       21     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       22     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       18     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        1     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       24     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       41     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                     0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                     0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                     0       17     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                     0       24     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                     0       18     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                     1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                    0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                    1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                    0       33     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                    1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                    0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                    1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       40     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       30     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       17     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        1     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       27     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       42     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        2     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       29     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0       10     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       26     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       32     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        2     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       34     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        5     373
0-24 months   ki1000108-IRC              INDIA                          1                     0       28     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       10     410
0-24 months   ki1000108-IRC              INDIA                          2                     0       21     410
0-24 months   ki1000108-IRC              INDIA                          2                     1        7     410
0-24 months   ki1000108-IRC              INDIA                          3                     0       18     410
0-24 months   ki1000108-IRC              INDIA                          3                     1        9     410
0-24 months   ki1000108-IRC              INDIA                          4                     0       18     410
0-24 months   ki1000108-IRC              INDIA                          4                     1        3     410
0-24 months   ki1000108-IRC              INDIA                          5                     0       14     410
0-24 months   ki1000108-IRC              INDIA                          5                     1        8     410
0-24 months   ki1000108-IRC              INDIA                          6                     0       23     410
0-24 months   ki1000108-IRC              INDIA                          6                     1       14     410
0-24 months   ki1000108-IRC              INDIA                          7                     0       19     410
0-24 months   ki1000108-IRC              INDIA                          7                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          8                     0       27     410
0-24 months   ki1000108-IRC              INDIA                          8                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          9                     0       17     410
0-24 months   ki1000108-IRC              INDIA                          9                     1       10     410
0-24 months   ki1000108-IRC              INDIA                          10                    0       23     410
0-24 months   ki1000108-IRC              INDIA                          10                    1       15     410
0-24 months   ki1000108-IRC              INDIA                          11                    0       28     410
0-24 months   ki1000108-IRC              INDIA                          11                    1       12     410
0-24 months   ki1000108-IRC              INDIA                          12                    0       34     410
0-24 months   ki1000108-IRC              INDIA                          12                    1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       1                     0       71     380
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       24     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     0       55     380
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       12     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     0       35     380
0-24 months   ki1000109-EE               PAKISTAN                       3                     1        8     380
0-24 months   ki1000109-EE               PAKISTAN                       4                     0       14     380
0-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     380
0-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        4     380
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       11                    0       62     380
0-24 months   ki1000109-EE               PAKISTAN                       11                    1        8     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    0       76     380
0-24 months   ki1000109-EE               PAKISTAN                       12                    1        9     380
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       43     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       39     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       30     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       29     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       12     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        2     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       43     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       12     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       37     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1        4     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       33     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1        3     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       22     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1        4     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       38     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1        5     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       41     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       11     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       71     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       10     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       46     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1        9     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       66     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1        8     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        6     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        1     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0        7     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        5     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        1     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        1     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        0     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        0     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        6     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       14     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       15     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       11     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        9     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1        1     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       58     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       15     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       51     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        6     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       41     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       42     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       31     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       10     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       31     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       43     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1        4     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       41     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1        8     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1        9     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       51     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1        4     624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      156    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      166    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       12    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      158    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        6    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      175    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      175    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       10    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      153    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       13    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      203    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       15    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      220    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       12    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      205    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       11    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      233    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      204    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       17    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      190    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       15    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      242    2919
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       54    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      221    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1       37    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      257    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1       49    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0      172    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       24    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0      174    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1       29    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0      139    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       25    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0      118    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       23    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      202    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1       34    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      213    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1       40    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      302    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1       50    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      218    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1       37    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      220    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1       39    2919
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       28     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       26     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       27     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       35     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       23     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       33     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0       66     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1        6     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0       45     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1        3     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0       47     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1        2     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0       33     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1        5     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0       56     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1        2     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0       45     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1        1     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0       55     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1        1     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0       79     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1        3     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0       87     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1        5     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0       87     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1        4     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0       69     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1        5     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0       85     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1        6     797
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       41     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      181     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       54     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      177     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       60     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0       24     272
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        4     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     0       26     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     0       17     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        3     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     0       19     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        9     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        1     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     0       15     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        2     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     0       19     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        3     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    0       20     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        7     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    0       23     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        6     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    0       18     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       10     272
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      146    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0      113    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1        2    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       13    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       97    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       81    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1        4    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       95    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1        5    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0      120    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1        3    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0      154    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1        9    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      144    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       12    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0      131    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1        6    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0      133    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       11    1507
0-24 months   ki1114097-CMIN             PERU                           1                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           1                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           2                     0       78     929
0-24 months   ki1114097-CMIN             PERU                           2                     1        3     929
0-24 months   ki1114097-CMIN             PERU                           3                     0       96     929
0-24 months   ki1114097-CMIN             PERU                           3                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           4                     0       90     929
0-24 months   ki1114097-CMIN             PERU                           4                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           5                     0       91     929
0-24 months   ki1114097-CMIN             PERU                           5                     1        2     929
0-24 months   ki1114097-CMIN             PERU                           6                     0       80     929
0-24 months   ki1114097-CMIN             PERU                           6                     1        3     929
0-24 months   ki1114097-CMIN             PERU                           7                     0       75     929
0-24 months   ki1114097-CMIN             PERU                           7                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           8                     0       87     929
0-24 months   ki1114097-CMIN             PERU                           8                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           9                     0       72     929
0-24 months   ki1114097-CMIN             PERU                           9                     1        0     929
0-24 months   ki1114097-CMIN             PERU                           10                    0       63     929
0-24 months   ki1114097-CMIN             PERU                           10                    1        3     929
0-24 months   ki1114097-CMIN             PERU                           11                    0       58     929
0-24 months   ki1114097-CMIN             PERU                           11                    1        2     929
0-24 months   ki1114097-CMIN             PERU                           12                    0       71     929
0-24 months   ki1114097-CMIN             PERU                           12                    1        1     929
0-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       30     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                     0       19     215
0-24 months   ki1114097-CONTENT          PERU                           4                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                     0       14     215
0-24 months   ki1114097-CONTENT          PERU                           5                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6                     0       13     215
0-24 months   ki1114097-CONTENT          PERU                           6                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                     0       28     215
0-24 months   ki1114097-CONTENT          PERU                           7                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                     0       23     215
0-24 months   ki1114097-CONTENT          PERU                           8                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9                     0       26     215
0-24 months   ki1114097-CONTENT          PERU                           9                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10                    0       14     215
0-24 months   ki1114097-CONTENT          PERU                           10                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           11                    0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12                    0       11     215
0-24 months   ki1114097-CONTENT          PERU                           12                    1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      449    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1       53    8127
0-24 months   ki1119695-PROBIT           BELARUS                        2                     0      462    8127
0-24 months   ki1119695-PROBIT           BELARUS                        2                     1       39    8127
0-24 months   ki1119695-PROBIT           BELARUS                        3                     0      524    8127
0-24 months   ki1119695-PROBIT           BELARUS                        3                     1       56    8127
0-24 months   ki1119695-PROBIT           BELARUS                        4                     0      506    8127
0-24 months   ki1119695-PROBIT           BELARUS                        4                     1       42    8127
0-24 months   ki1119695-PROBIT           BELARUS                        5                     0      554    8127
0-24 months   ki1119695-PROBIT           BELARUS                        5                     1       56    8127
0-24 months   ki1119695-PROBIT           BELARUS                        6                     0      574    8127
0-24 months   ki1119695-PROBIT           BELARUS                        6                     1       50    8127
0-24 months   ki1119695-PROBIT           BELARUS                        7                     0      688    8127
0-24 months   ki1119695-PROBIT           BELARUS                        7                     1       79    8127
0-24 months   ki1119695-PROBIT           BELARUS                        8                     0      750    8127
0-24 months   ki1119695-PROBIT           BELARUS                        8                     1       52    8127
0-24 months   ki1119695-PROBIT           BELARUS                        9                     0      667    8127
0-24 months   ki1119695-PROBIT           BELARUS                        9                     1       70    8127
0-24 months   ki1119695-PROBIT           BELARUS                        10                    0      743    8127
0-24 months   ki1119695-PROBIT           BELARUS                        10                    1       77    8127
0-24 months   ki1119695-PROBIT           BELARUS                        11                    0      706    8127
0-24 months   ki1119695-PROBIT           BELARUS                        11                    1       55    8127
0-24 months   ki1119695-PROBIT           BELARUS                        12                    0      823    8127
0-24 months   ki1119695-PROBIT           BELARUS                        12                    1       52    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1226   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      119   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      964   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      100   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1083   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      108   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      913   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       82   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      931   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       97   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1022   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      121   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1040   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      124   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1139   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      116   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1187   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      108   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      960   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       87   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1093   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       98   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1105   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      116   13939
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       68     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       45     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       25     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       44     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       33     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       62     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       91     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       91     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0      134     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1        1     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0      105     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       94     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1        1     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1146   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1       68   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0      938   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1       57   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1113   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1       66   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0      792   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1       67   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      630   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1       44   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      640   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1       53   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      712   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1       49   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0      998   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1       84   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1324   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1       94   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1359   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1       96   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1413   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1       89   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1397   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      100   13329
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      223    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1       11    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      256    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1       15    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      185    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1       19    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      178    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1       13    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      108    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1       15    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      140    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1        8    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      129    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1        6    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0       86    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1        5    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       36    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1        2    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    1435
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       21     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       25     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1        4     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     0       19     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     0       20     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     0       11     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     0       19     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     0       25     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    0       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    0       17     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    0       26     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    1        2     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       25     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     0        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     0       32     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     0       16     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     0        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       24     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       23     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    1        0     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    0       24     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       41     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                     0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                     0       27     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                     1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                     0       17     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                     0       24     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                     0       19     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                     0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                     1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                    0       27     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                    0       33     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                    0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                    1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       42     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       30     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       17     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       16     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       22     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       26     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0       12     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       30     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       28     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       44     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        0     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       30     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       20     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       24     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       27     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       32     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        1     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        2     368
0-6 months    ki1000108-IRC              INDIA                          1                     0       29     410
0-6 months    ki1000108-IRC              INDIA                          1                     1        9     410
0-6 months    ki1000108-IRC              INDIA                          2                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          2                     1        5     410
0-6 months    ki1000108-IRC              INDIA                          3                     0       18     410
0-6 months    ki1000108-IRC              INDIA                          3                     1        9     410
0-6 months    ki1000108-IRC              INDIA                          4                     0       18     410
0-6 months    ki1000108-IRC              INDIA                          4                     1        3     410
0-6 months    ki1000108-IRC              INDIA                          5                     0       14     410
0-6 months    ki1000108-IRC              INDIA                          5                     1        8     410
0-6 months    ki1000108-IRC              INDIA                          6                     0       25     410
0-6 months    ki1000108-IRC              INDIA                          6                     1       12     410
0-6 months    ki1000108-IRC              INDIA                          7                     0       22     410
0-6 months    ki1000108-IRC              INDIA                          7                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          8                     0       27     410
0-6 months    ki1000108-IRC              INDIA                          8                     1       17     410
0-6 months    ki1000108-IRC              INDIA                          9                     0       17     410
0-6 months    ki1000108-IRC              INDIA                          9                     1       10     410
0-6 months    ki1000108-IRC              INDIA                          10                    0       23     410
0-6 months    ki1000108-IRC              INDIA                          10                    1       15     410
0-6 months    ki1000108-IRC              INDIA                          11                    0       30     410
0-6 months    ki1000108-IRC              INDIA                          11                    1       10     410
0-6 months    ki1000108-IRC              INDIA                          12                    0       38     410
0-6 months    ki1000108-IRC              INDIA                          12                    1       14     410
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       82     380
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       13     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       64     380
0-6 months    ki1000109-EE               PAKISTAN                       2                     1        3     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       40     380
0-6 months    ki1000109-EE               PAKISTAN                       3                     1        3     380
0-6 months    ki1000109-EE               PAKISTAN                       4                     0       16     380
0-6 months    ki1000109-EE               PAKISTAN                       4                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       5                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       5                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                     0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                     1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        4     380
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       68     380
0-6 months    ki1000109-EE               PAKISTAN                       11                    1        2     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       79     380
0-6 months    ki1000109-EE               PAKISTAN                       12                    1        6     380
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0       23     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       47     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       44     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       31     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        2     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0       50     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1        5     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0       38     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1        3     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     0       36     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     0       23     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     1        3     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     0       42     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     1        1     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     0       45     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     1        7     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    0       79     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    1        1     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    0       52     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    1        3     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    0       73     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    1        1     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        7     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0        8     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        6     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        5     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       10     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       17     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       17     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       13     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        6     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       10     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    1        0     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       60     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       12     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     0       54     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     0       55     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     1        4     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     0       35     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     1        6     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     0       34     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     1        1     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    0       46     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    0       48     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    0       52     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    1        3     622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      164    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        7    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      173    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        5    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      162    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      184    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      181    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      160    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      210    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1        8    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      226    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        6    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      214    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        2    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      237    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       13    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      212    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      194    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       11    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      235    2437
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       17    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      205    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1        9    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      245    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       13    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      154    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       11    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      156    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       11    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0      132    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1        9    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       99    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1        6    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      181    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       14    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      197    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       16    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      281    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1       10    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      200    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       12    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      213    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       11    2437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     0       30     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     0       35     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    0       31     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0      115     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      211     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       24     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      219     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0       26     272
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1        2     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     0       19     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     0       19     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     0        9     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     0       17     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    0       27     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    1        2     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    0       24     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    1        4     272
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    0       16     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0      112     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1        3     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     0       79     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     0       69     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     1        4     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     0       53     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     1        3     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     0       64     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     1        1     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     0       55     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     1        2     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     0       64     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     0       62     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     0      102     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    0       95     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    1        1     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    0       86     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    0      110     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    1        1     966
0-6 months    ki1114097-CMIN             PERU                           1                     0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                     0       64     699
0-6 months    ki1114097-CMIN             PERU                           2                     1        3     699
0-6 months    ki1114097-CMIN             PERU                           3                     0       71     699
0-6 months    ki1114097-CMIN             PERU                           3                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           4                     0       60     699
0-6 months    ki1114097-CMIN             PERU                           4                     1        2     699
0-6 months    ki1114097-CMIN             PERU                           5                     0       63     699
0-6 months    ki1114097-CMIN             PERU                           5                     1        2     699
0-6 months    ki1114097-CMIN             PERU                           6                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           6                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           7                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           7                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           8                     0       73     699
0-6 months    ki1114097-CMIN             PERU                           8                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           9                     0       56     699
0-6 months    ki1114097-CMIN             PERU                           9                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           10                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           10                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           11                    0       41     699
0-6 months    ki1114097-CMIN             PERU                           11                    1        1     699
0-6 months    ki1114097-CMIN             PERU                           12                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           12                    1        1     699
0-6 months    ki1114097-CONTENT          PERU                           1                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                     0       19     215
0-6 months    ki1114097-CONTENT          PERU                           4                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                     0       14     215
0-6 months    ki1114097-CONTENT          PERU                           5                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                     0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                     0       28     215
0-6 months    ki1114097-CONTENT          PERU                           7                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                     0       23     215
0-6 months    ki1114097-CONTENT          PERU                           8                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                     0       26     215
0-6 months    ki1114097-CONTENT          PERU                           9                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10                    0       14     215
0-6 months    ki1114097-CONTENT          PERU                           10                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11                    0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12                    0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                    1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0      448    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1       53    8126
0-6 months    ki1119695-PROBIT           BELARUS                        2                     0      463    8126
0-6 months    ki1119695-PROBIT           BELARUS                        2                     1       38    8126
0-6 months    ki1119695-PROBIT           BELARUS                        3                     0      524    8126
0-6 months    ki1119695-PROBIT           BELARUS                        3                     1       56    8126
0-6 months    ki1119695-PROBIT           BELARUS                        4                     0      506    8126
0-6 months    ki1119695-PROBIT           BELARUS                        4                     1       42    8126
0-6 months    ki1119695-PROBIT           BELARUS                        5                     0      555    8126
0-6 months    ki1119695-PROBIT           BELARUS                        5                     1       55    8126
0-6 months    ki1119695-PROBIT           BELARUS                        6                     0      576    8126
0-6 months    ki1119695-PROBIT           BELARUS                        6                     1       48    8126
0-6 months    ki1119695-PROBIT           BELARUS                        7                     0      690    8126
0-6 months    ki1119695-PROBIT           BELARUS                        7                     1       77    8126
0-6 months    ki1119695-PROBIT           BELARUS                        8                     0      750    8126
0-6 months    ki1119695-PROBIT           BELARUS                        8                     1       52    8126
0-6 months    ki1119695-PROBIT           BELARUS                        9                     0      667    8126
0-6 months    ki1119695-PROBIT           BELARUS                        9                     1       70    8126
0-6 months    ki1119695-PROBIT           BELARUS                        10                    0      743    8126
0-6 months    ki1119695-PROBIT           BELARUS                        10                    1       77    8126
0-6 months    ki1119695-PROBIT           BELARUS                        11                    0      706    8126
0-6 months    ki1119695-PROBIT           BELARUS                        11                    1       55    8126
0-6 months    ki1119695-PROBIT           BELARUS                        12                    0      824    8126
0-6 months    ki1119695-PROBIT           BELARUS                        12                    1       51    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1241   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       87   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      980   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       68   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1100   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       78   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      930   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       60   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      954   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       66   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1050   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       90   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1060   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      102   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1161   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       90   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1203   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       88   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      975   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       64   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1111   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       70   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1131   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       88   13847
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     0       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     0       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     0       53     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    0       69     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    0       30     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1154   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1       55   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0      946   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1       43   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1137   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1       39   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0      814   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1       41   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0      648   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1       23   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0      666   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1       24   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0      729   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1       32   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1024   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1       55   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1344   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1       69   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1381   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1       71   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1422   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1       71   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1418   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1       74   13280
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      190    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1        2    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      234    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1        6    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      191    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1        5    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      175    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1        3    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      113    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1        8    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      143    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1        4    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      130    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1        3    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0       85    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1        1    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0       38    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    1331
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       18     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0       19     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0       18     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       23     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       19     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0       15     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       22     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       11     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        8     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       19     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0       13     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        8     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       23     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       22     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       26     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        0     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       18     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       23     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       24     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       38     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                     0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                     0       21     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                     1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                     0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                     0       26     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                     0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                     0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                     0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                     1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0       23     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       35     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       15     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       13     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       13     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       18     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       19     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       24     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       33     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        2     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       29     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       19     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       26     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       28     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        0     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       41     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       33     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       40     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        3     373
6-24 months   ki1000108-IRC              INDIA                          1                     0       36     410
6-24 months   ki1000108-IRC              INDIA                          1                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          2                     0       26     410
6-24 months   ki1000108-IRC              INDIA                          2                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          3                     0       26     410
6-24 months   ki1000108-IRC              INDIA                          3                     1        1     410
6-24 months   ki1000108-IRC              INDIA                          4                     0       21     410
6-24 months   ki1000108-IRC              INDIA                          4                     1        0     410
6-24 months   ki1000108-IRC              INDIA                          5                     0       21     410
6-24 months   ki1000108-IRC              INDIA                          5                     1        1     410
6-24 months   ki1000108-IRC              INDIA                          6                     0       33     410
6-24 months   ki1000108-IRC              INDIA                          6                     1        4     410
6-24 months   ki1000108-IRC              INDIA                          7                     0       33     410
6-24 months   ki1000108-IRC              INDIA                          7                     1        3     410
6-24 months   ki1000108-IRC              INDIA                          8                     0       42     410
6-24 months   ki1000108-IRC              INDIA                          8                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          9                     0       25     410
6-24 months   ki1000108-IRC              INDIA                          9                     1        2     410
6-24 months   ki1000108-IRC              INDIA                          10                    0       36     410
6-24 months   ki1000108-IRC              INDIA                          10                    1        2     410
6-24 months   ki1000108-IRC              INDIA                          11                    0       38     410
6-24 months   ki1000108-IRC              INDIA                          11                    1        2     410
6-24 months   ki1000108-IRC              INDIA                          12                    0       47     410
6-24 months   ki1000108-IRC              INDIA                          12                    1        5     410
6-24 months   ki1000109-EE               PAKISTAN                       1                     0       80     375
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       12     375
6-24 months   ki1000109-EE               PAKISTAN                       2                     0       57     375
6-24 months   ki1000109-EE               PAKISTAN                       2                     1        9     375
6-24 months   ki1000109-EE               PAKISTAN                       3                     0       36     375
6-24 months   ki1000109-EE               PAKISTAN                       3                     1        6     375
6-24 months   ki1000109-EE               PAKISTAN                       4                     0       14     375
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     375
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        4     375
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       11                    0       64     375
6-24 months   ki1000109-EE               PAKISTAN                       11                    1        6     375
6-24 months   ki1000109-EE               PAKISTAN                       12                    0       81     375
6-24 months   ki1000109-EE               PAKISTAN                       12                    1        4     375
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       15     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       11     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       39     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        7     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       34     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       26     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       27     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        3     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       16     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        0     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       41     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1        9     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       37     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1        1     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       31     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1        3     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       25     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1        1     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       37     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1        4     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       43     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1        6     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       67     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1        9     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       40     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1        6     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       64     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1        8     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        6     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0        8     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        0     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        0     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        6     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       13     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       15     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       10     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        9     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1        1     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       49     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1        6     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       40     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       39     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       41     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       35     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       30     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       38     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1        3     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       38     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1        5     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       45     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1        4     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       49     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1        2     541
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      130    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      145    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      136    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        4    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      137    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       10    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      143    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1        6    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      133    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      189    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1        7    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      196    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1        6    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      175    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      203    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1        5    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      183    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1        9    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      165    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1        4    2018
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      237    2738
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       37    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                     0      217    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                     1       29    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                     0      242    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                     1       41    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                     0      173    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                     1       14    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                     0      171    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                     1       21    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                     0      138    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                     1       16    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                     0      117    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                     1       18    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                     0      203    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                     1       21    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                     0      208    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                     1       27    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                    0      287    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                    1       41    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                    0      210    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                    1       27    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                    0      214    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                    1       29    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       23     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       30     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       19     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       20     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0       12     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0       14     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       21     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       28     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1        0     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0       66     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1        6     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0       45     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1        3     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0       47     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1        2     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0       33     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1        5     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0       56     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1        2     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0       45     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1        1     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0       55     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1        1     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0       79     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1        3     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0       87     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1        5     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0       87     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1        4     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0       69     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1        5     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0       85     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1        6     797
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       96     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       30     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      194     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       37     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      187     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     590
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     0       25     252
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     0       24     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     0       16     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     0       21     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     0       17     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        0     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        9     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        0     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     0       14     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     0       18     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        1     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     0       18     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        2     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    0       19     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        7     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    0       22     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        4     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    0       20     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    1        7     252
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                     0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                     0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                     0        9     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                     0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                     0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                     0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                     0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                     0        8     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                     1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                    0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                    0       11     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                    0       11     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                    1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      147    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0      111    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0      108    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1        9    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       99    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1        2    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0      105    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1        5    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       80    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1        3    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       91    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1        5    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0      118    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1        3    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0      151    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1        9    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      143    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       11    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0      129    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1        6    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0      133    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       10    1482
6-24 months   ki1114097-CMIN             PERU                           1                     0       48     878
6-24 months   ki1114097-CMIN             PERU                           1                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           2                     0       75     878
6-24 months   ki1114097-CMIN             PERU                           2                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           3                     0       96     878
6-24 months   ki1114097-CMIN             PERU                           3                     1        1     878
6-24 months   ki1114097-CMIN             PERU                           4                     0       90     878
6-24 months   ki1114097-CMIN             PERU                           4                     1        1     878
6-24 months   ki1114097-CMIN             PERU                           5                     0       90     878
6-24 months   ki1114097-CMIN             PERU                           5                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           6                     0       78     878
6-24 months   ki1114097-CMIN             PERU                           6                     1        2     878
6-24 months   ki1114097-CMIN             PERU                           7                     0       74     878
6-24 months   ki1114097-CMIN             PERU                           7                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           8                     0       84     878
6-24 months   ki1114097-CMIN             PERU                           8                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           9                     0       65     878
6-24 months   ki1114097-CMIN             PERU                           9                     1        0     878
6-24 months   ki1114097-CMIN             PERU                           10                    0       57     878
6-24 months   ki1114097-CMIN             PERU                           10                    1        0     878
6-24 months   ki1114097-CMIN             PERU                           11                    0       53     878
6-24 months   ki1114097-CMIN             PERU                           11                    1        1     878
6-24 months   ki1114097-CMIN             PERU                           12                    0       63     878
6-24 months   ki1114097-CMIN             PERU                           12                    1        0     878
6-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                     0       18     215
6-24 months   ki1114097-CONTENT          PERU                           2                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                     0       30     215
6-24 months   ki1114097-CONTENT          PERU                           3                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                     0       19     215
6-24 months   ki1114097-CONTENT          PERU                           4                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                     0       14     215
6-24 months   ki1114097-CONTENT          PERU                           5                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6                     0       13     215
6-24 months   ki1114097-CONTENT          PERU                           6                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                     0       28     215
6-24 months   ki1114097-CONTENT          PERU                           7                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                     0       23     215
6-24 months   ki1114097-CONTENT          PERU                           8                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9                     0       26     215
6-24 months   ki1114097-CONTENT          PERU                           9                     1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10                    0       14     215
6-24 months   ki1114097-CONTENT          PERU                           10                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           11                    0        9     215
6-24 months   ki1114097-CONTENT          PERU                           11                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12                    0       11     215
6-24 months   ki1114097-CONTENT          PERU                           12                    1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0      499    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        2                     0      492    7975
6-24 months   ki1119695-PROBIT           BELARUS                        2                     1        2    7975
6-24 months   ki1119695-PROBIT           BELARUS                        3                     0      572    7975
6-24 months   ki1119695-PROBIT           BELARUS                        3                     1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        4                     0      541    7975
6-24 months   ki1119695-PROBIT           BELARUS                        4                     1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        5                     0      590    7975
6-24 months   ki1119695-PROBIT           BELARUS                        5                     1        1    7975
6-24 months   ki1119695-PROBIT           BELARUS                        6                     0      612    7975
6-24 months   ki1119695-PROBIT           BELARUS                        6                     1        2    7975
6-24 months   ki1119695-PROBIT           BELARUS                        7                     0      746    7975
6-24 months   ki1119695-PROBIT           BELARUS                        7                     1        2    7975
6-24 months   ki1119695-PROBIT           BELARUS                        8                     0      790    7975
6-24 months   ki1119695-PROBIT           BELARUS                        8                     1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        9                     0      723    7975
6-24 months   ki1119695-PROBIT           BELARUS                        9                     1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        10                    0      810    7975
6-24 months   ki1119695-PROBIT           BELARUS                        10                    1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        11                    0      741    7975
6-24 months   ki1119695-PROBIT           BELARUS                        11                    1        0    7975
6-24 months   ki1119695-PROBIT           BELARUS                        12                    0      851    7975
6-24 months   ki1119695-PROBIT           BELARUS                        12                    1        1    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1016   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       35   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      790   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       34   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      875   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1       32   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      756   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       25   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      741   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       33   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      836   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1       32   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      854   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1       24   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      907   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       27   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      975   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       21   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      756   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       25   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      900   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1       29   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      940   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1       31   10694
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       67     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       45     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       25     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       39     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       42     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       33     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       62     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       90     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       89     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    0      129     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    1        1     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    0      103     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       93     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    1        1     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      674    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1       14    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0      561    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1       15    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0      708    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1       27    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0      577    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1       27    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      582    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1       22    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      583    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1       32    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      613    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1       18    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0      741    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1       30    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0      798    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1       25    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0      798    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1       27    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0      865    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1       18    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0      774    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1       26    8555
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      225    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1        9    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      261    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1        9    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      190    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1       14    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      181    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1       10    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      114    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1        9    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      144    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1        4    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      132    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1        3    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0       85    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1        4    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       36    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1        2    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    1432


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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9dbbf549-ad4e-4e08-b952-0f64b1709456/e2963d16-cfd9-4015-a85f-14429cfc6f2d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9dbbf549-ad4e-4e08-b952-0f64b1709456/e2963d16-cfd9-4015-a85f-14429cfc6f2d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9dbbf549-ad4e-4e08-b952-0f64b1709456/e2963d16-cfd9-4015-a85f-14429cfc6f2d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9dbbf549-ad4e-4e08-b952-0f64b1709456/e2963d16-cfd9-4015-a85f-14429cfc6f2d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0877193    0.0453108   0.1301278
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0674157    0.0305729   0.1042586
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0365854    0.0078460   0.0653247
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0789474    0.0405967   0.1172980
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0540541    0.0214629   0.0866452
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0783133    0.0374348   0.1191917
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0688073    0.0351990   0.1024157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0517241    0.0232199   0.0802283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0509259    0.0216014   0.0802505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0680000    0.0367873   0.0992127
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0769231    0.0417840   0.1120621
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0731707    0.0375149   0.1088265
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1824324    0.1384287   0.2264362
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1434109    0.1006359   0.1861858
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1601307    0.1190342   0.2012272
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1224490    0.0765495   0.1683485
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1428571    0.0947120   0.1910022
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1524390    0.0974173   0.2074607
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1631206    0.1021249   0.2241162
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.1440678    0.0992583   0.1888772
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1581028    0.1131391   0.2030664
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1420455    0.1055703   0.1785206
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1450980    0.1018625   0.1883336
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1505792    0.1070163   0.1941420
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1055777    0.0188618   0.1922936
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0778443   -0.0064529   0.1621415
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0965517    0.0210110   0.1720925
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0766423    0.0207296   0.1325551
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0918033    0.0038573   0.1797493
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0801282    0.0383761   0.1218803
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.1029987    0.0504157   0.1555817
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0648379    0.0200114   0.1096644
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0949796    0.0233882   0.1665711
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0939024    0.0386281   0.1491767
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0722733    0.0113451   0.1332015
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0594286    0.0086292   0.1102279
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0884758    0.0732984   0.1036533
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0939850    0.0764506   0.1115193
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0906801    0.0743713   0.1069889
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0824121    0.0653248   0.0994993
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0943580    0.0764876   0.1122284
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1058618    0.0880252   0.1236984
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1065292    0.0888052   0.1242532
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0924303    0.0764056   0.1084549
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0833977    0.0683387   0.0984567
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0830946    0.0663745   0.0998147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0822838    0.0666768   0.0978908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0950041    0.0785566   0.1114516
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0560132    0.0412812   0.0707451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0572864    0.0425812   0.0719917
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0559796    0.0416782   0.0702811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0779977    0.0585750   0.0974203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0652819    0.0452326   0.0853312
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0764791    0.0544288   0.0985294
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0643890    0.0473356   0.0814424
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0776340    0.0598608   0.0954072
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0662906    0.0527324   0.0798487
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0659794    0.0494434   0.0825154
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0592543    0.0478121   0.0706966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0668003    0.0525894   0.0810111
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0674603    0.0364865   0.0984341
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0420561    0.0151584   0.0689537
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0503876    0.0236906   0.0770846
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0666667    0.0285980   0.1047354
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.0658683    0.0282394   0.1034971
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.0638298    0.0234730   0.1041866
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.0571429    0.0127364   0.1015494
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.0717949    0.0355548   0.1080349
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.0751174    0.0397127   0.1105221
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.0343643    0.0134303   0.0552982
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.0566038    0.0254910   0.0877166
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.0491071    0.0208029   0.0774114
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1057884    0.0189102   0.1926667
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0758483   -0.0093074   0.1610040
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0965517    0.0210201   0.1720833
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0766423    0.0207364   0.1325482
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0901639    0.0025345   0.1777934
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0769231    0.0353429   0.1185032
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.1003911    0.0465761   0.1542062
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0648379    0.0200094   0.1096665
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0949796    0.0233967   0.1665626
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0939024    0.0386292   0.1491757
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0722733    0.0113496   0.1331970
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0582857    0.0075947   0.1089767
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0655120    0.0522041   0.0788200
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0648855    0.0499717   0.0797993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0662139    0.0520139   0.0804140
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0606061    0.0457423   0.0754698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0647059    0.0496082   0.0798035
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0789474    0.0632935   0.0946013
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0877797    0.0715089   0.1040504
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0719424    0.0576234   0.0862615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0681642    0.0544159   0.0819125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0615977    0.0469782   0.0762172
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0592718    0.0458041   0.0727396
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0721903    0.0576615   0.0867192
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0454921    0.0315223   0.0594620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0434783    0.0304829   0.0564736
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0331633    0.0225571   0.0437694
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0479532    0.0337519   0.0621545
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0342772    0.0203306   0.0482238
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0347826    0.0217407   0.0478245
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0420499    0.0281176   0.0559823
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0509731    0.0359826   0.0659637
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0488323    0.0367241   0.0609405
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0488981    0.0352910   0.0625051
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0475553    0.0374162   0.0576943
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0495979    0.0369432   0.0622525
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1350365    0.0945625   0.1755105
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1178862    0.0775817   0.1581907
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1448763    0.1038609   0.1858918
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.0748663    0.0371393   0.1125933
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.1093750    0.0652197   0.1535303
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1038961    0.0556962   0.1520960
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.1333333    0.0759804   0.1906863
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.0937500    0.0555720   0.1319280
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.1148936    0.0741144   0.1556729
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.1250000    0.0892028   0.1607972
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.1139241    0.0734668   0.1543813
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.1193416    0.0785731   0.1601100
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0333016    0.0224537   0.0441495
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0412621    0.0276812   0.0548431
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0352811    0.0232741   0.0472882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0320102    0.0196643   0.0443561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0426357    0.0284018   0.0568695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0368664    0.0243301   0.0494026
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0273349    0.0165488   0.0381209
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0289079    0.0181623   0.0396536
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0210843    0.0121617   0.0300069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0320102    0.0196643   0.0443561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0312164    0.0200332   0.0423995
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0319258    0.0208677   0.0429840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0203488    0.0102588   0.0304389
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0260417    0.0115509   0.0405325
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0367347    0.0209099   0.0525595
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0447020    0.0265820   0.0628220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0364238    0.0190540   0.0537936
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0520325    0.0301375   0.0739275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0285261    0.0157283   0.0413240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0389105    0.0249319   0.0528891
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0303767    0.0183259   0.0424275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0327273    0.0176354   0.0478191
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0203851    0.0108854   0.0298847
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0325000    0.0207583   0.0442417


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0659432   0.0560037   0.0758828
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1510791   0.1380852   0.1640731
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0837948   0.0281977   0.1393918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0915417   0.0867542   0.0963292
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650461   0.0602071   0.0698852
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570373   0.0478278   0.0662468
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0829436   0.0271087   0.1387786
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686791   0.0644666   0.0728917
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0449548   0.0407437   0.0491660
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325416   0.0291786   0.0359047
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0328463   0.0285768   0.0371158


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7685393   0.3704941   1.5942295
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.4170734   0.1658146   1.0490644
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9000000   0.4535214   1.7860236
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6162162   0.2845104   1.3346520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8927711   0.4382780   1.8185724
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7844037   0.3945236   1.5595751
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.5896552   0.2832835   1.2273683
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5805556   0.2737229   1.2313358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7752000   0.3980081   1.5098562
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8769231   0.4509179   1.7053971
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8341463   0.4198837   1.6571259
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.7861039   0.5356574   1.1536466
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8777536   0.6171821   1.2483371
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.6712018   0.4298015   1.0481859
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.7830688   0.5173820   1.1851914
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.8355917   0.5413255   1.2898219
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.8941424   0.5730019   1.3952669
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.7897050   0.5327544   1.1705842
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8666374   0.5968777   1.2583154
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.7786195   0.5474207   1.1074633
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.7953522   0.5420831   1.1669523
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8253968   0.5663431   1.2029455
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.7373178   0.4041962   1.3449845
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.9145088   0.6248427   1.3384589
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7259331   0.4705565   1.1199056
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8695329   0.4304401   1.7565454
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.7589502   0.4217424   1.3657754
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.9755726   0.5688033   1.6732353
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6141251   0.3337225   1.1301295
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.8996185   0.5639962   1.4349627
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.8894156   0.5092537   1.5533712
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.6845511   0.3892877   1.2037632
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.5628895   0.3279653   0.9660918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0622670   0.8244501   1.3686835
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0249137   0.7993682   1.3140980
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9314640   0.7116985   1.2190911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0664830   0.8259974   1.3769850
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1965048   0.9407811   1.5217396
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2040486   0.9481107   1.5290758
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0446952   0.8185923   1.3332498
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9426041   0.7347892   1.2091936
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9391780   0.7209639   1.2234388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9300143   0.7201504   1.2010361
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0737858   0.8415339   1.3701360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0227313   0.6996071   1.4950954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9994013   0.6988741   1.4291599
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.3924878   0.9757245   1.9872642
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.1654739   0.7751029   1.7524505
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.3653765   0.9221640   2.0216067
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1495323   0.7794501   1.6953294
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.3859954   1.0027986   1.9156223
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1834813   0.8489023   1.6499283
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1779260   0.8325079   1.6666624
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0578640   0.7785182   1.4374440
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.1925812   0.8449884   1.6831592
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6234195   0.2836979   1.3699498
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.7469220   0.3705048   1.5057633
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.9882353   0.4749433   2.0562645
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.9764001   0.4691660   2.0320252
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.9461827   0.4331365   2.0669277
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.8470588   0.3434885   2.0888868
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.0642534   0.5379017   2.1056546
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1135046   0.5766711   2.1500859
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 0.5093996   0.2375561   1.0923229
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.8390677   0.4099748   1.7172631
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.7279412   0.3483893   1.5209950
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.7169811   0.3848980   1.3355797
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.9126871   0.6233548   1.3363138
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7244870   0.4694377   1.1181067
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.8523044   0.4336944   1.6749645
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.7271408   0.4046925   1.3065074
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.9489803   0.5565857   1.6180146
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.6129017   0.3334659   1.1264975
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8978265   0.5628979   1.4320401
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.8876438   0.5087380   1.5487570
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.6831875   0.3888277   1.2003904
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.5509650   0.3199766   0.9487018
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9904361   0.7287973   1.3460033
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0107137   0.7522128   1.3580493
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9251132   0.6728089   1.2720319
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9876944   0.7248816   1.3457925
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.2050817   0.9072651   1.6006588
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3399015   1.0177556   1.7640148
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0981560   0.8263294   1.4594017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0404836   0.7814725   1.3853414
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9402498   0.6879693   1.2850423
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9047466   0.6670532   1.2271382
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.1019396   0.8278843   1.4667157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9557312   0.6164077   1.4818474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7289889   0.4712587   1.1276710
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0540989   0.6969348   1.5943018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7534751   0.4500787   1.2613900
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7645850   0.4776550   1.2238754
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9243340   0.5819955   1.4680412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1204819   0.7574089   1.6575983
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0734221   0.7270294   1.5848535
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0748685   0.7353818   1.5710781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0453510   0.7311806   1.4945129
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0902510   0.7277645   1.6332857
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8729949   0.5540512   1.3755410
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.0728679   0.7103784   1.6203274
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.5544154   0.3084593   0.9964894
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8099662   0.4898924   1.3391620
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.7693928   0.4428708   1.3366546
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9873874   0.5845187   1.6679257
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.6942568   0.4187189   1.1511123
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.8508338   0.5346762   1.3539374
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9256757   0.6115385   1.4011799
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8436538   0.5300855   1.3427112
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8837727   0.5610104   1.3922276
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2390430   0.7797821   1.9687903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0594424   0.6614283   1.6969614
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9612219   0.5801950   1.5924775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2802879   0.8030368   2.0411731
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1070441   0.6912865   1.7728492
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8208266   0.4920780   1.3692062
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8680636   0.5295412   1.4229950
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6331325   0.3711629   1.0800023
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9612219   0.5801950   1.5924775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9373827   0.5776045   1.5212597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9586877   0.5959058   1.5423278
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2797619   0.5972761   2.7420995
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.8052478   0.9782062   3.3315264
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 2.1967833   1.1608215   4.1572774
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.7899716   0.9527436   3.3629179
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 2.5570267   1.3346828   4.8988309
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.4018565   0.7181876   2.7363346
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.9121734   1.0449885   3.4989927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.4927964   0.7838268   2.8430273
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.6083117   0.8152501   3.1728503
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0017796   0.5353181   1.8747029
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.5971428   0.8604310   2.9646367


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0217761   -0.0622799   0.0187278
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0313533   -0.0727352   0.0100287
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0217829   -0.0665265   0.0229606
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0030659   -0.0113847   0.0175165
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0090330   -0.0047427   0.0228086
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0104230   -0.0395053   0.0186594
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0228448   -0.0672736   0.0215840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0031671   -0.0095167   0.0158509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0005373   -0.0132781   0.0122035
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0177976   -0.0559491   0.0203539
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0007600   -0.0110487   0.0095286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0124975    0.0027828   0.0222121


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3302243   -1.1082504   0.1606800
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2075290   -0.5145763   0.0372712
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.2599558   -0.8359756   0.1353433
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0334916   -0.1379804   0.1791261
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1388700   -0.1019304   0.3270494
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1827395   -0.8190552   0.2309894
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2754254   -0.8468763   0.1192101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0461143   -0.1576347   0.2140025
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0119525   -0.3388267   0.2351154
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1518066   -0.5275014   0.1314846
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0233549   -0.3937968   0.2486314
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.3804829    0.0051247   0.6142216
