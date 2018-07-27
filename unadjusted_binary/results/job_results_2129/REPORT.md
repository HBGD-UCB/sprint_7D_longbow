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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

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

agecat      studyid                    country                        month    stunted   n_cell       n
----------  -------------------------  -----------------------------  ------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        3     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       18     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        6     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        8     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              0       21     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              0       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              0        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              1        4     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              0       17     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              0       20     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             0       19     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             0       13     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             1        2     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             0       25     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             1        2     257
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       13     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        5     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              1        4     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              0        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              0       13     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              1        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             0       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             0       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             0       25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             1        2     241
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       12     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        6     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        9     212
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        9     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       17     191
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4              0        8     191
Birth       ki0047075b-MAL-ED          BRAZIL                         4              1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5              0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         5              1        3     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6              0        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         6              1        1     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7              0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         7              1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8              0       16     191
Birth       ki0047075b-MAL-ED          BRAZIL                         8              1        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9              0       24     191
Birth       ki0047075b-MAL-ED          BRAZIL                         9              1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10             0       18     191
Birth       ki0047075b-MAL-ED          BRAZIL                         10             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11             0       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         11             1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12             0       10     191
Birth       ki0047075b-MAL-ED          BRAZIL                         12             1        3     191
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              0        7     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             0       14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             1        1     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              0        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        1     169
Birth       ki0047075b-MAL-ED          INDIA                          1              0       15     206
Birth       ki0047075b-MAL-ED          INDIA                          1              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          2              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          2              1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          3              0       18     206
Birth       ki0047075b-MAL-ED          INDIA                          3              1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          4              0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          4              1        2     206
Birth       ki0047075b-MAL-ED          INDIA                          5              0        6     206
Birth       ki0047075b-MAL-ED          INDIA                          5              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          6              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          6              1        1     206
Birth       ki0047075b-MAL-ED          INDIA                          7              0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          7              1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          8              0       13     206
Birth       ki0047075b-MAL-ED          INDIA                          8              1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          9              0       14     206
Birth       ki0047075b-MAL-ED          INDIA                          9              1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          10             0       19     206
Birth       ki0047075b-MAL-ED          INDIA                          10             1        5     206
Birth       ki0047075b-MAL-ED          INDIA                          11             0       16     206
Birth       ki0047075b-MAL-ED          INDIA                          11             1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          12             0       11     206
Birth       ki0047075b-MAL-ED          INDIA                          12             1        3     206
6 months    ki0047075b-MAL-ED          INDIA                          1              0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          1              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          2              0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          2              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          3              0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          3              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          4              0       10     236
6 months    ki0047075b-MAL-ED          INDIA                          4              1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          5              0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          5              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          6              0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          6              1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          7              0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          7              1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          8              0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          8              1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          9              0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          9              1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          10             0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          10             1        7     236
6 months    ki0047075b-MAL-ED          INDIA                          11             0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          11             1        6     236
6 months    ki0047075b-MAL-ED          INDIA                          12             0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          12             1        3     236
24 months   ki0047075b-MAL-ED          INDIA                          1              0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1              1       13     227
24 months   ki0047075b-MAL-ED          INDIA                          2              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          2              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          3              0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          3              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          4              0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          4              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          5              0        5     227
24 months   ki0047075b-MAL-ED          INDIA                          5              1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          6              0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          6              1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          7              0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          7              1       11     227
24 months   ki0047075b-MAL-ED          INDIA                          8              0       11     227
24 months   ki0047075b-MAL-ED          INDIA                          8              1       10     227
24 months   ki0047075b-MAL-ED          INDIA                          9              0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          9              1        6     227
24 months   ki0047075b-MAL-ED          INDIA                          10             0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          10             1       13     227
24 months   ki0047075b-MAL-ED          INDIA                          11             0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          11             1       10     227
24 months   ki0047075b-MAL-ED          INDIA                          12             0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          12             1        6     227
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              0       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             1        0     236
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              0        8     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              0       13     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              0       11     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             1        9     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             1        3     228
Birth       ki0047075b-MAL-ED          NEPAL                          1              0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        4     173
Birth       ki0047075b-MAL-ED          NEPAL                          2              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          3              0       11     173
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          4              0       14     173
Birth       ki0047075b-MAL-ED          NEPAL                          4              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          5              0       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          5              1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          6              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          6              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          7              0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          7              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          8              0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          8              1        2     173
Birth       ki0047075b-MAL-ED          NEPAL                          9              0        8     173
Birth       ki0047075b-MAL-ED          NEPAL                          9              1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          10             0       16     173
Birth       ki0047075b-MAL-ED          NEPAL                          10             1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          11             0       15     173
Birth       ki0047075b-MAL-ED          NEPAL                          11             1        3     173
Birth       ki0047075b-MAL-ED          NEPAL                          12             0        9     173
Birth       ki0047075b-MAL-ED          NEPAL                          12             1        1     173
Birth       ki0047075b-MAL-ED          PERU                           1              0       32     287
Birth       ki0047075b-MAL-ED          PERU                           1              1        5     287
Birth       ki0047075b-MAL-ED          PERU                           2              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           2              1        4     287
Birth       ki0047075b-MAL-ED          PERU                           3              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           3              1        3     287
Birth       ki0047075b-MAL-ED          PERU                           4              0       18     287
Birth       ki0047075b-MAL-ED          PERU                           4              1        3     287
Birth       ki0047075b-MAL-ED          PERU                           5              0       23     287
Birth       ki0047075b-MAL-ED          PERU                           5              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           6              0       17     287
Birth       ki0047075b-MAL-ED          PERU                           6              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           7              0       21     287
Birth       ki0047075b-MAL-ED          PERU                           7              1        2     287
Birth       ki0047075b-MAL-ED          PERU                           8              0       19     287
Birth       ki0047075b-MAL-ED          PERU                           8              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           9              0       22     287
Birth       ki0047075b-MAL-ED          PERU                           9              1        0     287
Birth       ki0047075b-MAL-ED          PERU                           10             0       21     287
Birth       ki0047075b-MAL-ED          PERU                           10             1        3     287
Birth       ki0047075b-MAL-ED          PERU                           11             0       24     287
Birth       ki0047075b-MAL-ED          PERU                           11             1        7     287
Birth       ki0047075b-MAL-ED          PERU                           12             0       18     287
Birth       ki0047075b-MAL-ED          PERU                           12             1        3     287
6 months    ki0047075b-MAL-ED          PERU                           1              0       27     273
6 months    ki0047075b-MAL-ED          PERU                           1              1        9     273
6 months    ki0047075b-MAL-ED          PERU                           2              0       16     273
6 months    ki0047075b-MAL-ED          PERU                           2              1        5     273
6 months    ki0047075b-MAL-ED          PERU                           3              0       14     273
6 months    ki0047075b-MAL-ED          PERU                           3              1        7     273
6 months    ki0047075b-MAL-ED          PERU                           4              0       16     273
6 months    ki0047075b-MAL-ED          PERU                           4              1        4     273
6 months    ki0047075b-MAL-ED          PERU                           5              0       22     273
6 months    ki0047075b-MAL-ED          PERU                           5              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           6              0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           7              0       19     273
6 months    ki0047075b-MAL-ED          PERU                           7              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           8              0       13     273
6 months    ki0047075b-MAL-ED          PERU                           8              1        3     273
6 months    ki0047075b-MAL-ED          PERU                           9              0       18     273
6 months    ki0047075b-MAL-ED          PERU                           9              1        5     273
6 months    ki0047075b-MAL-ED          PERU                           10             0       16     273
6 months    ki0047075b-MAL-ED          PERU                           10             1        3     273
6 months    ki0047075b-MAL-ED          PERU                           11             0       21     273
6 months    ki0047075b-MAL-ED          PERU                           11             1       11     273
6 months    ki0047075b-MAL-ED          PERU                           12             0       16     273
6 months    ki0047075b-MAL-ED          PERU                           12             1        4     273
24 months   ki0047075b-MAL-ED          PERU                           1              0       13     201
24 months   ki0047075b-MAL-ED          PERU                           1              1       15     201
24 months   ki0047075b-MAL-ED          PERU                           2              0       13     201
24 months   ki0047075b-MAL-ED          PERU                           2              1        6     201
24 months   ki0047075b-MAL-ED          PERU                           3              0        8     201
24 months   ki0047075b-MAL-ED          PERU                           3              1        6     201
24 months   ki0047075b-MAL-ED          PERU                           4              0        7     201
24 months   ki0047075b-MAL-ED          PERU                           4              1        5     201
24 months   ki0047075b-MAL-ED          PERU                           5              0       11     201
24 months   ki0047075b-MAL-ED          PERU                           5              1        8     201
24 months   ki0047075b-MAL-ED          PERU                           6              0        8     201
24 months   ki0047075b-MAL-ED          PERU                           6              1        3     201
24 months   ki0047075b-MAL-ED          PERU                           7              0       11     201
24 months   ki0047075b-MAL-ED          PERU                           7              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           8              0        8     201
24 months   ki0047075b-MAL-ED          PERU                           8              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           9              0       17     201
24 months   ki0047075b-MAL-ED          PERU                           9              1        4     201
24 months   ki0047075b-MAL-ED          PERU                           10             0       11     201
24 months   ki0047075b-MAL-ED          PERU                           10             1        2     201
24 months   ki0047075b-MAL-ED          PERU                           11             0       12     201
24 months   ki0047075b-MAL-ED          PERU                           11             1        9     201
24 months   ki0047075b-MAL-ED          PERU                           12             0        8     201
24 months   ki0047075b-MAL-ED          PERU                           12             1        8     201
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       23     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       15     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        3     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       20     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        1     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       19     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       24     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        4     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       20     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       37     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        3     262
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       29     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       14     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       10     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       14     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       25     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             1       11     254
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       21     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        6     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        9     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        5     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        7     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1       14     238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       13     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       11     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       14     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        2     123
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       17     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        4     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        7     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        9     247
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1       16     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1       17     214
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       10     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1        5     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              0       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              0       23     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              1       12     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              0       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              0       19     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              1       20     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              0       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              0       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              1        6     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             0       21     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             0       35     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             1        7     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             0       18     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             1        7     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       11     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1       28     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0        5     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       12     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1       21     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              0        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              0        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              0        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             0        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             1        2      90
6 months    ki1000108-IRC              INDIA                          1              0       25     407
6 months    ki1000108-IRC              INDIA                          1              1       11     407
6 months    ki1000108-IRC              INDIA                          2              0       16     407
6 months    ki1000108-IRC              INDIA                          2              1       11     407
6 months    ki1000108-IRC              INDIA                          3              0       19     407
6 months    ki1000108-IRC              INDIA                          3              1       10     407
6 months    ki1000108-IRC              INDIA                          4              0       16     407
6 months    ki1000108-IRC              INDIA                          4              1        6     407
6 months    ki1000108-IRC              INDIA                          5              0       13     407
6 months    ki1000108-IRC              INDIA                          5              1        7     407
6 months    ki1000108-IRC              INDIA                          6              0       32     407
6 months    ki1000108-IRC              INDIA                          6              1        5     407
6 months    ki1000108-IRC              INDIA                          7              0       25     407
6 months    ki1000108-IRC              INDIA                          7              1       11     407
6 months    ki1000108-IRC              INDIA                          8              0       39     407
6 months    ki1000108-IRC              INDIA                          8              1        6     407
6 months    ki1000108-IRC              INDIA                          9              0       20     407
6 months    ki1000108-IRC              INDIA                          9              1        7     407
6 months    ki1000108-IRC              INDIA                          10             0       31     407
6 months    ki1000108-IRC              INDIA                          10             1        5     407
6 months    ki1000108-IRC              INDIA                          11             0       34     407
6 months    ki1000108-IRC              INDIA                          11             1        7     407
6 months    ki1000108-IRC              INDIA                          12             0       37     407
6 months    ki1000108-IRC              INDIA                          12             1       14     407
24 months   ki1000108-IRC              INDIA                          1              0       17     409
24 months   ki1000108-IRC              INDIA                          1              1       19     409
24 months   ki1000108-IRC              INDIA                          2              0       13     409
24 months   ki1000108-IRC              INDIA                          2              1       14     409
24 months   ki1000108-IRC              INDIA                          3              0       14     409
24 months   ki1000108-IRC              INDIA                          3              1       15     409
24 months   ki1000108-IRC              INDIA                          4              0        9     409
24 months   ki1000108-IRC              INDIA                          4              1       13     409
24 months   ki1000108-IRC              INDIA                          5              0        4     409
24 months   ki1000108-IRC              INDIA                          5              1       17     409
24 months   ki1000108-IRC              INDIA                          6              0       29     409
24 months   ki1000108-IRC              INDIA                          6              1        8     409
24 months   ki1000108-IRC              INDIA                          7              0       21     409
24 months   ki1000108-IRC              INDIA                          7              1       15     409
24 months   ki1000108-IRC              INDIA                          8              0       34     409
24 months   ki1000108-IRC              INDIA                          8              1       11     409
24 months   ki1000108-IRC              INDIA                          9              0       13     409
24 months   ki1000108-IRC              INDIA                          9              1       14     409
24 months   ki1000108-IRC              INDIA                          10             0       27     409
24 months   ki1000108-IRC              INDIA                          10             1        9     409
24 months   ki1000108-IRC              INDIA                          11             0       27     409
24 months   ki1000108-IRC              INDIA                          11             1       14     409
24 months   ki1000108-IRC              INDIA                          12             0       31     409
24 months   ki1000108-IRC              INDIA                          12             1       21     409
Birth       ki1000108-IRC              INDIA                          1              0       27     388
Birth       ki1000108-IRC              INDIA                          1              1        7     388
Birth       ki1000108-IRC              INDIA                          2              0       23     388
Birth       ki1000108-IRC              INDIA                          2              1        2     388
Birth       ki1000108-IRC              INDIA                          3              0       23     388
Birth       ki1000108-IRC              INDIA                          3              1        4     388
Birth       ki1000108-IRC              INDIA                          4              0       20     388
Birth       ki1000108-IRC              INDIA                          4              1        2     388
Birth       ki1000108-IRC              INDIA                          5              0       20     388
Birth       ki1000108-IRC              INDIA                          5              1        1     388
Birth       ki1000108-IRC              INDIA                          6              0       30     388
Birth       ki1000108-IRC              INDIA                          6              1        4     388
Birth       ki1000108-IRC              INDIA                          7              0       31     388
Birth       ki1000108-IRC              INDIA                          7              1        4     388
Birth       ki1000108-IRC              INDIA                          8              0       36     388
Birth       ki1000108-IRC              INDIA                          8              1        3     388
Birth       ki1000108-IRC              INDIA                          9              0       23     388
Birth       ki1000108-IRC              INDIA                          9              1        2     388
Birth       ki1000108-IRC              INDIA                          10             0       33     388
Birth       ki1000108-IRC              INDIA                          10             1        4     388
Birth       ki1000108-IRC              INDIA                          11             0       34     388
Birth       ki1000108-IRC              INDIA                          11             1        6     388
Birth       ki1000108-IRC              INDIA                          12             0       43     388
Birth       ki1000108-IRC              INDIA                          12             1        6     388
6 months    ki1000109-EE               PAKISTAN                       1              0       39     372
6 months    ki1000109-EE               PAKISTAN                       1              1       51     372
6 months    ki1000109-EE               PAKISTAN                       2              0       36     372
6 months    ki1000109-EE               PAKISTAN                       2              1       30     372
6 months    ki1000109-EE               PAKISTAN                       3              0       24     372
6 months    ki1000109-EE               PAKISTAN                       3              1       19     372
6 months    ki1000109-EE               PAKISTAN                       4              0        5     372
6 months    ki1000109-EE               PAKISTAN                       4              1       11     372
6 months    ki1000109-EE               PAKISTAN                       10             0        3     372
6 months    ki1000109-EE               PAKISTAN                       10             1        1     372
6 months    ki1000109-EE               PAKISTAN                       11             0       28     372
6 months    ki1000109-EE               PAKISTAN                       11             1       42     372
6 months    ki1000109-EE               PAKISTAN                       12             0       44     372
6 months    ki1000109-EE               PAKISTAN                       12             1       39     372
Birth       ki1000109-EE               PAKISTAN                       12             0        1       2
Birth       ki1000109-EE               PAKISTAN                       12             1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       1              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       1              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4              0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       4              1        2       7
Birth       ki1000109-ResPak           PAKISTAN                       5              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       5              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       6              0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       6              1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       7              0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       7              1        0       7
6 months    ki1000109-ResPak           PAKISTAN                       1              0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       1              1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       2              0        8     235
6 months    ki1000109-ResPak           PAKISTAN                       2              1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       3              0        6     235
6 months    ki1000109-ResPak           PAKISTAN                       3              1       10     235
6 months    ki1000109-ResPak           PAKISTAN                       4              0       16     235
6 months    ki1000109-ResPak           PAKISTAN                       4              1       10     235
6 months    ki1000109-ResPak           PAKISTAN                       5              0       20     235
6 months    ki1000109-ResPak           PAKISTAN                       5              1       12     235
6 months    ki1000109-ResPak           PAKISTAN                       6              0       30     235
6 months    ki1000109-ResPak           PAKISTAN                       6              1       18     235
6 months    ki1000109-ResPak           PAKISTAN                       7              0       22     235
6 months    ki1000109-ResPak           PAKISTAN                       7              1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       8              0       21     235
6 months    ki1000109-ResPak           PAKISTAN                       8              1       12     235
6 months    ki1000109-ResPak           PAKISTAN                       9              0       16     235
6 months    ki1000109-ResPak           PAKISTAN                       9              1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       10             0        7     235
6 months    ki1000109-ResPak           PAKISTAN                       10             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11             0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12             0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       12             1        1     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0       61    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       24    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0       59    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1       22    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              0       61    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              1       19    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              0       57    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              1       19    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              0       49    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              1       27    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              0       73    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              1       28    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              0       65    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              1       50    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              0      101    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              1       51    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              0      132    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              1       34    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             0      113    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             1       37    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             0       93    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             0       92    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             1       37    1336
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              0        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              0       14     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              0       11     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              1        5     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              0        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              0       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              0       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             0        8     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             1        7     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              1       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              0       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              1       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              0       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              1       13     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              0        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              0        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             0       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             0       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             1       11     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             0       40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             1       23     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0       35     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              0       36     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              0       36     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              0       34     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              1       10     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              0       32     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              1        8     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              1       11     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              0       27     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              1       18     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              0       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              0       23     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             0       37     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             0       31     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             1       18     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             0       43     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             1        7     537
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       15     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1       27     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1       18     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1       22     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       17     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1       20     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       14     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1       16     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       11     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        8     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       19     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       20     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       21     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1       24     429
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             1        0      28
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      123    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       15    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      136    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       12    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      133    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1       13    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      133    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1       14    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      133    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1       20    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      126    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1       16    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      166    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1       21    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      178    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1       28    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      168    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1       14    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      185    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1       24    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      181    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1       11    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      170    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        9    2029
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              1        4     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              0       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              1        9     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              0       20     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              1        8     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              1        6     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              1       12     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              0       15     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              1        9     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              1        5     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              0       23     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              1       11     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             1       11     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             1       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             0        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             1        3     299
6 months    ki1113344-GMS-Nepal        NEPAL                          6              0       83     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6              1       21     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7              0      166     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7              1       50     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8              0      181     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8              1       45     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9              0       13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9              1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10             0        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10             1        1     563
24 months   ki1113344-GMS-Nepal        NEPAL                          6              0       44     499
24 months   ki1113344-GMS-Nepal        NEPAL                          6              1       35     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7              0      106     499
24 months   ki1113344-GMS-Nepal        NEPAL                          7              1       95     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      115     499
24 months   ki1113344-GMS-Nepal        NEPAL                          8              1       86     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9              0        9     499
24 months   ki1113344-GMS-Nepal        NEPAL                          9              1        7     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10             0        2     499
24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        0     499
6 months    ki1114097-CMIN             BANGLADESH                     1              0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     1              1       13     243
6 months    ki1114097-CMIN             BANGLADESH                     2              0       19     243
6 months    ki1114097-CMIN             BANGLADESH                     2              1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     3              0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     3              1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     4              0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     4              1        6     243
6 months    ki1114097-CMIN             BANGLADESH                     5              0       14     243
6 months    ki1114097-CMIN             BANGLADESH                     5              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     6              0        5     243
6 months    ki1114097-CMIN             BANGLADESH                     6              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     7              0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     7              1        5     243
6 months    ki1114097-CMIN             BANGLADESH                     8              0        7     243
6 months    ki1114097-CMIN             BANGLADESH                     8              1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     9              0       10     243
6 months    ki1114097-CMIN             BANGLADESH                     9              1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     10             0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     10             1        8     243
6 months    ki1114097-CMIN             BANGLADESH                     11             0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     11             1       12     243
6 months    ki1114097-CMIN             BANGLADESH                     12             0       12     243
6 months    ki1114097-CMIN             BANGLADESH                     12             1       15     243
24 months   ki1114097-CMIN             BANGLADESH                     1              0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     1              1       18     242
24 months   ki1114097-CMIN             BANGLADESH                     2              0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     2              1       16     242
24 months   ki1114097-CMIN             BANGLADESH                     3              0        9     242
24 months   ki1114097-CMIN             BANGLADESH                     3              1        9     242
24 months   ki1114097-CMIN             BANGLADESH                     4              0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     4              1       15     242
24 months   ki1114097-CMIN             BANGLADESH                     5              0        5     242
24 months   ki1114097-CMIN             BANGLADESH                     5              1       11     242
24 months   ki1114097-CMIN             BANGLADESH                     6              0        2     242
24 months   ki1114097-CMIN             BANGLADESH                     6              1        6     242
24 months   ki1114097-CMIN             BANGLADESH                     7              0        7     242
24 months   ki1114097-CMIN             BANGLADESH                     7              1        8     242
24 months   ki1114097-CMIN             BANGLADESH                     8              0        4     242
24 months   ki1114097-CMIN             BANGLADESH                     8              1       14     242
24 months   ki1114097-CMIN             BANGLADESH                     9              0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     9              1       12     242
24 months   ki1114097-CMIN             BANGLADESH                     10             0        6     242
24 months   ki1114097-CMIN             BANGLADESH                     10             1       18     242
24 months   ki1114097-CMIN             BANGLADESH                     11             0        8     242
24 months   ki1114097-CMIN             BANGLADESH                     11             1       17     242
24 months   ki1114097-CMIN             BANGLADESH                     12             0        5     242
24 months   ki1114097-CMIN             BANGLADESH                     12             1       21     242
Birth       ki1114097-CMIN             BANGLADESH                     1              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1              1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     2              0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     2              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     4              1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5              0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     5              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8              0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     8              1        3      13
Birth       ki1114097-CMIN             BANGLADESH                     9              0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     9              1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     10             0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     10             1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     11             0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     11             1        1      13
Birth       ki1114097-CMIN             BRAZIL                         1              0       13     115
Birth       ki1114097-CMIN             BRAZIL                         1              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         2              0        7     115
Birth       ki1114097-CMIN             BRAZIL                         2              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         3              0       12     115
Birth       ki1114097-CMIN             BRAZIL                         3              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         4              0        9     115
Birth       ki1114097-CMIN             BRAZIL                         4              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         5              0        5     115
Birth       ki1114097-CMIN             BRAZIL                         5              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         6              0        6     115
Birth       ki1114097-CMIN             BRAZIL                         6              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         7              0        4     115
Birth       ki1114097-CMIN             BRAZIL                         7              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         8              0       12     115
Birth       ki1114097-CMIN             BRAZIL                         8              1        1     115
Birth       ki1114097-CMIN             BRAZIL                         9              0        8     115
Birth       ki1114097-CMIN             BRAZIL                         9              1        0     115
Birth       ki1114097-CMIN             BRAZIL                         10             0       14     115
Birth       ki1114097-CMIN             BRAZIL                         10             1        2     115
Birth       ki1114097-CMIN             BRAZIL                         11             0       11     115
Birth       ki1114097-CMIN             BRAZIL                         11             1        0     115
Birth       ki1114097-CMIN             BRAZIL                         12             0        9     115
Birth       ki1114097-CMIN             BRAZIL                         12             1        1     115
6 months    ki1114097-CMIN             BRAZIL                         1              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         1              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         2              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         3              1        2     108
6 months    ki1114097-CMIN             BRAZIL                         4              0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5              0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         6              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         7              0        3     108
6 months    ki1114097-CMIN             BRAZIL                         7              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         8              0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9              0        5     108
6 months    ki1114097-CMIN             BRAZIL                         9              1        2     108
6 months    ki1114097-CMIN             BRAZIL                         10             0       13     108
6 months    ki1114097-CMIN             BRAZIL                         10             1        2     108
6 months    ki1114097-CMIN             BRAZIL                         11             0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12             0        8     108
6 months    ki1114097-CMIN             BRAZIL                         12             1        1     108
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0       17     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1       12     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              0       32     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              1       10     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              0       30     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              1       15     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              0       94     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              1       63     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              0       35     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              1       16     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              1       12     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              0       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              1        9     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              0       16     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              1        8     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              1       19     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             0       24     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             1       10     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             0       17     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             1        6     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             0       18     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             1        7     551
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              0       53     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              1        6     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              0       50     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              1       12     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              0       55     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              1        8     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              0      134     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              1        7     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              0       92     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              1        7     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              0       73     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              1        5     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              0       40     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              1        5     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              0       36     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              0       85     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              1        9     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             0       57     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             1        3     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             0       48     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             1        6     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             0       49     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             1        7     848
6 months    ki1114097-CMIN             PERU                           1              0       56     637
6 months    ki1114097-CMIN             PERU                           1              1        6     637
6 months    ki1114097-CMIN             PERU                           2              0       48     637
6 months    ki1114097-CMIN             PERU                           2              1        3     637
6 months    ki1114097-CMIN             PERU                           3              0       57     637
6 months    ki1114097-CMIN             PERU                           3              1        6     637
6 months    ki1114097-CMIN             PERU                           4              0       67     637
6 months    ki1114097-CMIN             PERU                           4              1        4     637
6 months    ki1114097-CMIN             PERU                           5              0       49     637
6 months    ki1114097-CMIN             PERU                           5              1        5     637
6 months    ki1114097-CMIN             PERU                           6              0       52     637
6 months    ki1114097-CMIN             PERU                           6              1        2     637
6 months    ki1114097-CMIN             PERU                           7              0       44     637
6 months    ki1114097-CMIN             PERU                           7              1        3     637
6 months    ki1114097-CMIN             PERU                           8              0       45     637
6 months    ki1114097-CMIN             PERU                           8              1        2     637
6 months    ki1114097-CMIN             PERU                           9              0       40     637
6 months    ki1114097-CMIN             PERU                           9              1        1     637
6 months    ki1114097-CMIN             PERU                           10             0       23     637
6 months    ki1114097-CMIN             PERU                           10             1        5     637
6 months    ki1114097-CMIN             PERU                           11             0       71     637
6 months    ki1114097-CMIN             PERU                           11             1        3     637
6 months    ki1114097-CMIN             PERU                           12             0       42     637
6 months    ki1114097-CMIN             PERU                           12             1        3     637
24 months   ki1114097-CMIN             PERU                           1              0      118     429
24 months   ki1114097-CMIN             PERU                           1              1       68     429
24 months   ki1114097-CMIN             PERU                           2              0       16     429
24 months   ki1114097-CMIN             PERU                           2              1        4     429
24 months   ki1114097-CMIN             PERU                           3              0       18     429
24 months   ki1114097-CMIN             PERU                           3              1        9     429
24 months   ki1114097-CMIN             PERU                           4              0       14     429
24 months   ki1114097-CMIN             PERU                           4              1        8     429
24 months   ki1114097-CMIN             PERU                           5              0       14     429
24 months   ki1114097-CMIN             PERU                           5              1        9     429
24 months   ki1114097-CMIN             PERU                           6              0       15     429
24 months   ki1114097-CMIN             PERU                           6              1        5     429
24 months   ki1114097-CMIN             PERU                           7              0       16     429
24 months   ki1114097-CMIN             PERU                           7              1        5     429
24 months   ki1114097-CMIN             PERU                           8              0       18     429
24 months   ki1114097-CMIN             PERU                           8              1        6     429
24 months   ki1114097-CMIN             PERU                           9              0        7     429
24 months   ki1114097-CMIN             PERU                           9              1        1     429
24 months   ki1114097-CMIN             PERU                           10             0       10     429
24 months   ki1114097-CMIN             PERU                           10             1        7     429
24 months   ki1114097-CMIN             PERU                           11             0       34     429
24 months   ki1114097-CMIN             PERU                           11             1       12     429
24 months   ki1114097-CMIN             PERU                           12             0       12     429
24 months   ki1114097-CMIN             PERU                           12             1        3     429
Birth       ki1114097-CMIN             PERU                           1              0        1      10
Birth       ki1114097-CMIN             PERU                           2              0        1      10
Birth       ki1114097-CMIN             PERU                           3              0        2      10
Birth       ki1114097-CMIN             PERU                           4              0        3      10
Birth       ki1114097-CMIN             PERU                           8              0        1      10
Birth       ki1114097-CMIN             PERU                           9              0        2      10
6 months    ki1114097-CONTENT          PERU                           1              0        9     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1114097-CONTENT          PERU                           2              0       16     215
6 months    ki1114097-CONTENT          PERU                           2              1        0     215
6 months    ki1114097-CONTENT          PERU                           3              0       26     215
6 months    ki1114097-CONTENT          PERU                           3              1        4     215
6 months    ki1114097-CONTENT          PERU                           4              0       10     215
6 months    ki1114097-CONTENT          PERU                           4              1        2     215
6 months    ki1114097-CONTENT          PERU                           5              0       22     215
6 months    ki1114097-CONTENT          PERU                           5              1        3     215
6 months    ki1114097-CONTENT          PERU                           6              0       11     215
6 months    ki1114097-CONTENT          PERU                           6              1        3     215
6 months    ki1114097-CONTENT          PERU                           7              0       23     215
6 months    ki1114097-CONTENT          PERU                           7              1        1     215
6 months    ki1114097-CONTENT          PERU                           8              0       16     215
6 months    ki1114097-CONTENT          PERU                           8              1        2     215
6 months    ki1114097-CONTENT          PERU                           9              0       17     215
6 months    ki1114097-CONTENT          PERU                           9              1        3     215
6 months    ki1114097-CONTENT          PERU                           10             0       24     215
6 months    ki1114097-CONTENT          PERU                           10             1        0     215
6 months    ki1114097-CONTENT          PERU                           11             0       17     215
6 months    ki1114097-CONTENT          PERU                           11             1        1     215
6 months    ki1114097-CONTENT          PERU                           12             0        5     215
6 months    ki1114097-CONTENT          PERU                           12             1        0     215
24 months   ki1114097-CONTENT          PERU                           1              0        8     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1114097-CONTENT          PERU                           2              0       12     164
24 months   ki1114097-CONTENT          PERU                           2              1        1     164
24 months   ki1114097-CONTENT          PERU                           3              0       19     164
24 months   ki1114097-CONTENT          PERU                           3              1        1     164
24 months   ki1114097-CONTENT          PERU                           4              0        6     164
24 months   ki1114097-CONTENT          PERU                           4              1        4     164
24 months   ki1114097-CONTENT          PERU                           5              0       19     164
24 months   ki1114097-CONTENT          PERU                           5              1        3     164
24 months   ki1114097-CONTENT          PERU                           6              0        8     164
24 months   ki1114097-CONTENT          PERU                           6              1        3     164
24 months   ki1114097-CONTENT          PERU                           7              0       19     164
24 months   ki1114097-CONTENT          PERU                           7              1        0     164
24 months   ki1114097-CONTENT          PERU                           8              0       15     164
24 months   ki1114097-CONTENT          PERU                           8              1        2     164
24 months   ki1114097-CONTENT          PERU                           9              0        9     164
24 months   ki1114097-CONTENT          PERU                           9              1        3     164
24 months   ki1114097-CONTENT          PERU                           10             0       10     164
24 months   ki1114097-CONTENT          PERU                           10             1        3     164
24 months   ki1114097-CONTENT          PERU                           11             0       15     164
24 months   ki1114097-CONTENT          PERU                           11             1        1     164
24 months   ki1114097-CONTENT          PERU                           12             0        3     164
24 months   ki1114097-CONTENT          PERU                           12             1        0     164
Birth       ki1114097-CONTENT          PERU                           5              0        2       2
Birth       ki1119695-PROBIT           BELARUS                        1              0      858   13884
Birth       ki1119695-PROBIT           BELARUS                        1              1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        2              0      788   13884
Birth       ki1119695-PROBIT           BELARUS                        2              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        3              0      964   13884
Birth       ki1119695-PROBIT           BELARUS                        3              1        4   13884
Birth       ki1119695-PROBIT           BELARUS                        4              0      955   13884
Birth       ki1119695-PROBIT           BELARUS                        4              1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        5              0      955   13884
Birth       ki1119695-PROBIT           BELARUS                        5              1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        6              0     1004   13884
Birth       ki1119695-PROBIT           BELARUS                        6              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        7              0     1278   13884
Birth       ki1119695-PROBIT           BELARUS                        7              1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        8              0     1323   13884
Birth       ki1119695-PROBIT           BELARUS                        8              1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        9              0     1308   13884
Birth       ki1119695-PROBIT           BELARUS                        9              1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        10             0     1503   13884
Birth       ki1119695-PROBIT           BELARUS                        10             1        6   13884
Birth       ki1119695-PROBIT           BELARUS                        11             0     1394   13884
Birth       ki1119695-PROBIT           BELARUS                        11             1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        12             0     1521   13884
Birth       ki1119695-PROBIT           BELARUS                        12             1        2   13884
6 months    ki1119695-PROBIT           BELARUS                        1              0      913   15761
6 months    ki1119695-PROBIT           BELARUS                        1              1       89   15761
6 months    ki1119695-PROBIT           BELARUS                        2              0      849   15761
6 months    ki1119695-PROBIT           BELARUS                        2              1       72   15761
6 months    ki1119695-PROBIT           BELARUS                        3              0     1031   15761
6 months    ki1119695-PROBIT           BELARUS                        3              1       62   15761
6 months    ki1119695-PROBIT           BELARUS                        4              0     1009   15761
6 months    ki1119695-PROBIT           BELARUS                        4              1       68   15761
6 months    ki1119695-PROBIT           BELARUS                        5              0     1070   15761
6 months    ki1119695-PROBIT           BELARUS                        5              1       50   15761
6 months    ki1119695-PROBIT           BELARUS                        6              0     1034   15761
6 months    ki1119695-PROBIT           BELARUS                        6              1       68   15761
6 months    ki1119695-PROBIT           BELARUS                        7              0     1363   15761
6 months    ki1119695-PROBIT           BELARUS                        7              1       78   15761
6 months    ki1119695-PROBIT           BELARUS                        8              0     1410   15761
6 months    ki1119695-PROBIT           BELARUS                        8              1       84   15761
6 months    ki1119695-PROBIT           BELARUS                        9              0     1397   15761
6 months    ki1119695-PROBIT           BELARUS                        9              1       95   15761
6 months    ki1119695-PROBIT           BELARUS                        10             0     1586   15761
6 months    ki1119695-PROBIT           BELARUS                        10             1      113   15761
6 months    ki1119695-PROBIT           BELARUS                        11             0     1488   15761
6 months    ki1119695-PROBIT           BELARUS                        11             1      112   15761
6 months    ki1119695-PROBIT           BELARUS                        12             0     1623   15761
6 months    ki1119695-PROBIT           BELARUS                        12             1       97   15761
24 months   ki1119695-PROBIT           BELARUS                        1              0      252    4035
24 months   ki1119695-PROBIT           BELARUS                        1              1       18    4035
24 months   ki1119695-PROBIT           BELARUS                        2              0      192    4035
24 months   ki1119695-PROBIT           BELARUS                        2              1       19    4035
24 months   ki1119695-PROBIT           BELARUS                        3              0      309    4035
24 months   ki1119695-PROBIT           BELARUS                        3              1       14    4035
24 months   ki1119695-PROBIT           BELARUS                        4              0      309    4035
24 months   ki1119695-PROBIT           BELARUS                        4              1       17    4035
24 months   ki1119695-PROBIT           BELARUS                        5              0      291    4035
24 months   ki1119695-PROBIT           BELARUS                        5              1       16    4035
24 months   ki1119695-PROBIT           BELARUS                        6              0      246    4035
24 months   ki1119695-PROBIT           BELARUS                        6              1       20    4035
24 months   ki1119695-PROBIT           BELARUS                        7              0      350    4035
24 months   ki1119695-PROBIT           BELARUS                        7              1       23    4035
24 months   ki1119695-PROBIT           BELARUS                        8              0      331    4035
24 months   ki1119695-PROBIT           BELARUS                        8              1       22    4035
24 months   ki1119695-PROBIT           BELARUS                        9              0      344    4035
24 months   ki1119695-PROBIT           BELARUS                        9              1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        10             0      340    4035
24 months   ki1119695-PROBIT           BELARUS                        10             1       52    4035
24 months   ki1119695-PROBIT           BELARUS                        11             0      341    4035
24 months   ki1119695-PROBIT           BELARUS                        11             1       48    4035
24 months   ki1119695-PROBIT           BELARUS                        12             0      386    4035
24 months   ki1119695-PROBIT           BELARUS                        12             1       57    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1171   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1      173   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0      882   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1      154   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1004   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              1      136   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              0      896   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              1      111   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              0      871   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              1      129   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              0     1003   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              1      129   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1055   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              1      121   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1135   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              1       91   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1230   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              1       83   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             0      957   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             1       85   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1039   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             1       95   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1131   13805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             1      124   13805
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      665    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1      139    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0      479    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1      100    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              0      569    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              1      155    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              0      535    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              1      116    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              0      491    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              1      103    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              0      544    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              1      106    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              0      517    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              1      120    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              0      629    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              1      101    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              0      661    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              1      101    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             0      501    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             1       98    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             0      611    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             1      118    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             0      702    8279
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             1      118    8279
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       18     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       34     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       45     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0       21     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1       39     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0       20     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1       25     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1       33     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0       19     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1       28     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0        5     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1       27     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0        9     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1       22     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0        1     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1        2     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0        5     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1        1     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0       10     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1       15     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0       11     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1       27     456
6 months    ki1148112-LCNI-5           MALAWI                         1              0       41     839
6 months    ki1148112-LCNI-5           MALAWI                         1              1       15     839
6 months    ki1148112-LCNI-5           MALAWI                         2              0       75     839
6 months    ki1148112-LCNI-5           MALAWI                         2              1       39     839
6 months    ki1148112-LCNI-5           MALAWI                         3              0       63     839
6 months    ki1148112-LCNI-5           MALAWI                         3              1       35     839
6 months    ki1148112-LCNI-5           MALAWI                         4              0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         4              1       50     839
6 months    ki1148112-LCNI-5           MALAWI                         5              0       71     839
6 months    ki1148112-LCNI-5           MALAWI                         5              1       38     839
6 months    ki1148112-LCNI-5           MALAWI                         6              0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         6              1       30     839
6 months    ki1148112-LCNI-5           MALAWI                         7              0       40     839
6 months    ki1148112-LCNI-5           MALAWI                         7              1       32     839
6 months    ki1148112-LCNI-5           MALAWI                         8              0       29     839
6 months    ki1148112-LCNI-5           MALAWI                         8              1       14     839
6 months    ki1148112-LCNI-5           MALAWI                         9              0       18     839
6 months    ki1148112-LCNI-5           MALAWI                         9              1        9     839
6 months    ki1148112-LCNI-5           MALAWI                         10             0       21     839
6 months    ki1148112-LCNI-5           MALAWI                         10             1       14     839
6 months    ki1148112-LCNI-5           MALAWI                         11             0       32     839
6 months    ki1148112-LCNI-5           MALAWI                         11             1       17     839
6 months    ki1148112-LCNI-5           MALAWI                         12             0       18     839
6 months    ki1148112-LCNI-5           MALAWI                         12             1       16     839
24 months   ki1148112-LCNI-5           MALAWI                         1              0       21     579
24 months   ki1148112-LCNI-5           MALAWI                         1              1       20     579
24 months   ki1148112-LCNI-5           MALAWI                         2              0       57     579
24 months   ki1148112-LCNI-5           MALAWI                         2              1       31     579
24 months   ki1148112-LCNI-5           MALAWI                         3              0       39     579
24 months   ki1148112-LCNI-5           MALAWI                         3              1       32     579
24 months   ki1148112-LCNI-5           MALAWI                         4              0       38     579
24 months   ki1148112-LCNI-5           MALAWI                         4              1       42     579
24 months   ki1148112-LCNI-5           MALAWI                         5              0       33     579
24 months   ki1148112-LCNI-5           MALAWI                         5              1       29     579
24 months   ki1148112-LCNI-5           MALAWI                         6              0       30     579
24 months   ki1148112-LCNI-5           MALAWI                         6              1       34     579
24 months   ki1148112-LCNI-5           MALAWI                         7              0       27     579
24 months   ki1148112-LCNI-5           MALAWI                         7              1       14     579
24 months   ki1148112-LCNI-5           MALAWI                         8              0       21     579
24 months   ki1148112-LCNI-5           MALAWI                         8              1        7     579
24 months   ki1148112-LCNI-5           MALAWI                         9              0       11     579
24 months   ki1148112-LCNI-5           MALAWI                         9              1        8     579
24 months   ki1148112-LCNI-5           MALAWI                         10             0       17     579
24 months   ki1148112-LCNI-5           MALAWI                         10             1        8     579
24 months   ki1148112-LCNI-5           MALAWI                         11             0       20     579
24 months   ki1148112-LCNI-5           MALAWI                         11             1       16     579
24 months   ki1148112-LCNI-5           MALAWI                         12             0        9     579
24 months   ki1148112-LCNI-5           MALAWI                         12             1       15     579
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     1204   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1      683   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     1079   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      485   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     1322   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      551   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              0      989   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              1      375   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              0      674   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              1      287   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              0      717   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              1      276   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              0      766   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              1      320   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              0     1027   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              1      468   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              0     1317   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              1      550   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             0     1401   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             1      722   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             0     1374   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             1      796   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             0     1405   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             1      825   19613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     1000   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1      356   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0      896   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      295   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     1094   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1      326   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              0      918   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              1      275   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              0      865   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              1      281   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              0      887   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              1      282   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              0      929   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              1      316   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              0     1127   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              1      349   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              0     1204   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              1      367   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             0     1219   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             1      444   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             0     1219   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             1      493   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             0     1227   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             1      442   16811
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      315    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      389    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0      291    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1      317    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0      376    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      354    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0      294    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1      242    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0      205    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1      181    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0      284    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1      288    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0      371    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1      275    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0      356    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1      296    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0      391    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1      352    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0      454    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1      412    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0      477    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1      503    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0      582    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1      627    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       28    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1       14    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      191    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1      137    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      233    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1      168    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0      459    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1      350    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0      351    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1      210    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      257    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1      166    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0      464    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1      337    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      338    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1      174    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      264    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1      151    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      165    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1       86    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0       87    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1       53    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0       51    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1       18    4752
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0       39    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1       12    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0      133    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1       31    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      325    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1      105    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              0      620    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              1      231    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              0      441    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              1      148    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              0      332    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              1      104    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              0      606    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              1      248    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              0      424    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              1      111    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              0      314    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              1      102    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             0      202    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             1       75    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             0      118    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             1       33    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             0       57    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             1       20    4831
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0       92     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1       38     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      111     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              0      113     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              1       46     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              0       93     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              1       30     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              0       60     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              1       34     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              0       53     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              1       16     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              0       25     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              1        7     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              0       20     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              1       11     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             0        8     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             1        2     822


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a4d962b1-d000-4195-9a69-6ea0320bb758/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4d962b1-d000-4195-9a69-6ea0320bb758/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4d962b1-d000-4195-9a69-6ea0320bb758/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4d962b1-d000-4195-9a69-6ea0320bb758/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1287202    0.1108156   0.1466249
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1486486    0.1269856   0.1703117
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1192982    0.1004816   0.1381149
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1102284    0.0908849   0.1295719
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1290000    0.1082237   0.1497763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1139576    0.0954462   0.1324690
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1028912    0.0855263   0.1202560
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0742251    0.0595512   0.0888991
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0632140    0.0500509   0.0763771
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0815739    0.0649540   0.0981938
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0837743    0.0676487   0.0998998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0988048    0.0822950   0.1153145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3619502    0.3401238   0.3837766
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3101023    0.2850990   0.3351056
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2941805    0.2705802   0.3177807
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2749267    0.2499835   0.2998698
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2986472    0.2681570   0.3291375
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2779456    0.2473758   0.3085155
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2946593    0.2664352   0.3228834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3130435    0.2870085   0.3390784
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2945903    0.2741450   0.3150355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3400848    0.3173098   0.3628598
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3668203    0.3442300   0.3894105
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3699552    0.3482745   0.3916358
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2941176    0.1407532   0.4474821
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.3125000    0.0850747   0.5399253
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1935484    0.0542839   0.3328129
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.1818182    0.0677001   0.2959363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3428571    0.1853900   0.5003242
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.4324324    0.2725855   0.5922794
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5128205    0.3557364   0.6699046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.3529412    0.1254650   0.5804174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.3000000    0.0988908   0.5011092
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.2758621    0.1129718   0.4387523
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.1666667    0.0538050   0.2795283
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.2800000    0.1037567   0.4562433
6 months    ki1000108-IRC              INDIA                          1                    NA                0.3055556    0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4074074    0.2218437   0.5929711
6 months    ki1000108-IRC              INDIA                          3                    NA                0.3448276    0.1716219   0.5180332
6 months    ki1000108-IRC              INDIA                          4                    NA                0.2727273    0.0863968   0.4590577
6 months    ki1000108-IRC              INDIA                          5                    NA                0.3500000    0.1407054   0.5592946
6 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351    0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556    0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          8                    NA                0.1333333    0.0338910   0.2327757
6 months    ki1000108-IRC              INDIA                          9                    NA                0.2592593    0.0937582   0.4247603
6 months    ki1000108-IRC              INDIA                          10                   NA                0.1388889    0.0257806   0.2519972
6 months    ki1000108-IRC              INDIA                          11                   NA                0.1707317    0.0554143   0.2860491
6 months    ki1000108-IRC              INDIA                          12                   NA                0.2745098    0.1518812   0.3971384
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2823529    0.1835994   0.3811065
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2716049    0.1654211   0.3777888
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2375000    0.1170863   0.3579137
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2500000    0.1454439   0.3545561
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3552632    0.2609405   0.4495859
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2772277    0.2421375   0.3123180
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.4347826    0.3351577   0.5344075
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3355263    0.2446426   0.4264100
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2048193    0.1397831   0.2698554
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2466667    0.1875200   0.3058134
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2560000    0.1906230   0.3213770
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2868217    0.2090982   0.3645453
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5166667    0.3900551   0.6432782
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4324324    0.2725917   0.5922731
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    NA                0.4571429    0.2918877   0.6223980
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    NA                0.4615385    0.2696650   0.6534119
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    NA                0.4827586    0.3006490   0.6648683
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    NA                0.4193548    0.2454204   0.5932893
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    NA                0.5882353    0.3539765   0.8224941
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    NA                0.4166667    0.1373593   0.6959741
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   NA                0.4615385    0.2696650   0.6534119
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   NA                0.2500000    0.1218866   0.3781134
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   NA                0.3650794    0.2460365   0.4841222
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000    0.1728614   0.4271386
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2800000    0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2800000    0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2272727    0.1033322   0.3512132
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2000000    0.0759254   0.3240746
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2820513    0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4000000    0.2567310   0.5432690
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1842105    0.0608412   0.3075799
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2333333    0.0818434   0.3848233
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2884615    0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3673469    0.2322406   0.5024533
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1400000    0.0437322   0.2362678
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1086957    0.0567517   0.1606396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0810811    0.0370943   0.1250679
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0890411    0.0428324   0.1352498
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0952381    0.0477736   0.1427026
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1307190    0.0772922   0.1841457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1126761    0.0606564   0.1646958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1122995    0.0670351   0.1575638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1359223    0.0891118   0.1827328
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0769231    0.0382003   0.1156459
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1148325    0.0715984   0.1580667
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0572917    0.0244111   0.0901722
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0502793    0.0182593   0.0822993
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0888224    0.0617904   0.1158543
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0781759    0.0488408   0.1075110
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0567246    0.0357089   0.0777403
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0631383    0.0363761   0.0899006
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0446429    0.0280412   0.0612446
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0617060    0.0375225   0.0858895
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0541291    0.0343163   0.0739419
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0562249    0.0358784   0.0765714
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0636729    0.0429660   0.0843799
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0665097    0.0474291   0.0855903
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0700000    0.0491249   0.0908751
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0563953    0.0361129   0.0766778
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1728856    0.1467454   0.1990257
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1727116    0.1419205   0.2035026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2140884    0.1842079   0.2439689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1781874    0.1487900   0.2075848
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1734007    0.1429530   0.2038483
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1630769    0.1346744   0.1914794
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1883830    0.1580161   0.2187500
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1383562    0.1133080   0.1634043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1325459    0.1084689   0.1566230
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1636060    0.1339805   0.1932315
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1618656    0.1351266   0.1886045
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1439024    0.1198775   0.1679274
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2678571    0.1518025   0.3839118
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3421053    0.2549662   0.4292443
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.3571429    0.2622197   0.4520660
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.4504505    0.3578373   0.5430636
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3486239    0.2591104   0.4381373
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.3296703    0.2330273   0.4263134
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.4444444    0.3295991   0.5592898
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.3255814    0.1854397   0.4657231
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3333333    0.1554157   0.5112509
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4000000    0.2376028   0.5623972
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3469388    0.2135828   0.4802947
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.4705882    0.3027137   0.6384628
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2625369    0.2370200   0.2880538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2476910    0.2222563   0.2731258
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2295775    0.2053554   0.2537995
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2305113    0.2042558   0.2567668
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2452007    0.2179287   0.2724727
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2412318    0.2150594   0.2674043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2538153    0.2281521   0.2794784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2364499    0.2135088   0.2593909
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2336092    0.2102334   0.2569850
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2669874    0.2440396   0.2899351
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2879673    0.2651776   0.3107570
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2648292    0.2429912   0.2866673
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2352941    0.1210093   0.3495789
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.1890244    0.1289693   0.2490794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2441860    0.2000620   0.2883100
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.2714454    0.2361498   0.3067409
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.2512733    0.2075830   0.2949637
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.2385321    0.1952885   0.2817757
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2903981    0.2550128   0.3257834
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2074766    0.1677790   0.2471743
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2451923    0.2009324   0.2894522
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2707581    0.2193488   0.3221674
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2185430    0.1522642   0.2848219
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.2597403    0.1580787   0.3614018
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6428571    0.4977768   0.7879374
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6388889    0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4390244    0.2869419   0.5911069
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6470588    0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6176471    0.4541094   0.7811847
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5666667    0.3891377   0.7441956
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5405405    0.3797755   0.7013056
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5333333    0.3546035   0.7120631
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4210526    0.1987903   0.6433149
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5250000    0.3700644   0.6799356
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5121951    0.3590145   0.6653757
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5333333    0.3874011   0.6792656
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4137931    0.2343773   0.5932089
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2380952    0.1091683   0.3670222
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3333333    0.1954759   0.4711907
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4012739    0.3245329   0.4780149
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3137255    0.1862633   0.4411877
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3157895    0.1678635   0.4637155
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3913043    0.1916696   0.5909391
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3333333    0.1445643   0.5221023
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3166667    0.1988561   0.4344773
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2941176    0.1408220   0.4474133
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2608696    0.0812511   0.4404880
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2800000    0.1038357   0.4561643
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0666667   -0.0367240   0.1700573
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0900474    0.0120817   0.1680131
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0433437    0.0129407   0.0737466
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0521472    0.0006358   0.1036586
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0521173    0.0368817   0.0673529
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0751880   -0.0091749   0.1595508
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0616622    0.0148963   0.1084281
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0623229    0.0186810   0.1059649
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0994764    0.0567347   0.1422181
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1326531    0.0717387   0.1935675
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1233933    0.0509390   0.1958476
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1286682    0.0435677   0.2137687
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4878049    0.3346706   0.6409391
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3522727    0.2523837   0.4521617
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4507042    0.3348683   0.5665401
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5250000    0.4154771   0.6345229
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4677419    0.3434360   0.5920479
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5312500    0.4088860   0.6536140
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3414634    0.1961875   0.4867393
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.2500000    0.0894741   0.4105259
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4210526    0.1988576   0.6432477
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.3200000    0.1369866   0.5030134
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4444444    0.2819851   0.6069038
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6250000    0.4311466   0.8188534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5525568    0.5114576   0.5936560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5213816    0.4772435   0.5655196
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4849315    0.4471612   0.5227018
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4514925    0.4019617   0.5010234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4689119    0.4147435   0.5230804
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.5034965    0.4573886   0.5496045
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4256966    0.3832049   0.4681883
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4539877    0.4149979   0.4929775
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4737550    0.4357092   0.5118009
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4757506    0.4388021   0.5126990
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5132653    0.4796414   0.5468892
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5186104    0.4845798   0.5526410
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3333333    0.1786654   0.4880012
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.4176829    0.3580219   0.4773439
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4189526    0.3678018   0.4701035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4326329    0.3938506   0.4714152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3743316    0.3260325   0.4226306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3924350    0.3397263   0.4451437
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.4207241    0.3812899   0.4601583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3398438    0.2932972   0.3863903
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3638554    0.3101703   0.4175406
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3426295    0.2792315   0.4060275
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3785714    0.2813363   0.4758065
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.2608696    0.1581093   0.3636298


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036581   0.0985732   0.1087430
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231530   0.3154984   0.3308077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660829   0.1580659   0.1740998
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3393829   0.2998111   0.3789548
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907322   0.4775988   0.5038655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1548196   0.9441066    1.4125610
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9268026   0.7510259    1.1437195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8563409   0.6845361    1.0712652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0021734   0.8100680    1.2398361
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8853122   0.7148568    1.0964121
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7993394   0.6423171    0.9947477
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5766391   0.4528181    0.7343183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4910962   0.3823070    0.6308424
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6337302   0.4951837    0.8110403
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.6508242   0.5132450    0.8252826
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7675932   0.6176032    0.9540095
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8567541   0.7709215    0.9521431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8127650   0.7361268    0.8973821
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7595705   0.6815759    0.8464903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8251059   0.7325773    0.9293214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7679112   0.6786541    0.8689076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8140880   0.7294587    0.9085357
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8648800   0.7797751    0.9592733
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8138972   0.7447011    0.8895229
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9395900   0.8600901    1.0264383
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0134551   0.9339407    1.0997394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0221162   0.9411024    1.1101041
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0625000   0.4340220    2.6010345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.2706140    1.6002457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.2733603    1.3979672
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 1.1657143   0.5818574    2.3354345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 1.4702703   0.7759069    2.7860231
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 1.7435897   0.9523644    3.1921659
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 1.2000000   0.5237642    2.7493287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.0200000   0.4362746    2.3847365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.4266308    2.0620045
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.5666667   0.2410738    1.3320036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.9520000   0.4203951    2.1558387
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.3333333   0.6814288    2.6088974
6 months    ki1000108-IRC              INDIA                          3                    1                 1.1285266   0.5582521    2.2813569
6 months    ki1000108-IRC              INDIA                          4                    1                 0.8925620   0.3843467    2.0727817
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1454545   0.5276900    2.4864336
6 months    ki1000108-IRC              INDIA                          6                    1                 0.4422604   0.1704376    1.1476006
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.4979279    2.0083230
6 months    ki1000108-IRC              INDIA                          8                    1                 0.4363636   0.1784677    1.0669336
6 months    ki1000108-IRC              INDIA                          9                    1                 0.8484848   0.3787374    1.9008596
6 months    ki1000108-IRC              INDIA                          10                   1                 0.4545455   0.1754380    1.1776903
6 months    ki1000108-IRC              INDIA                          11                   1                 0.5587583   0.2421272    1.2894496
6 months    ki1000108-IRC              INDIA                          12                   1                 0.8983957   0.4618662    1.7475080
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9619342   0.5699502    1.6235056
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8411458   0.5492007    1.2882838
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.8854167   0.5107730    1.5348553
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.2582237   0.7639677    2.0722431
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9818482   0.6559825    1.4695908
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.5398551   1.0846233    2.1861540
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1883224   0.8224882    1.7168757
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7254016   0.3983059    1.3211141
6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.8736111   0.5230711    1.4590682
6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9066667   0.6054454    1.3577516
6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.0158269   0.6340695    1.6274307
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.8369660   0.5371611    1.3041005
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    1                 0.8847926   0.5717066    1.3693353
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    1                 0.8933002   0.5513372    1.4473634
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    1                 0.9343715   0.5958796    1.4651453
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    1                 0.8116545   0.5013601    1.3139919
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    1                 1.1385199   0.7132896    1.8172529
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    1                 0.8064516   0.3950128    1.6464383
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   1                 0.8933002   0.5513372    1.4473634
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   1                 0.4838710   0.2741804    0.8539310
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   1                 0.7066052   0.4699283    1.0624833
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9333333   0.5048827    1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9333333   0.5048827    1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7575758   0.3797353    1.5113714
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6666667   0.3144991    1.4131819
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9401709   0.4877056    1.8124076
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.3333333   0.7655228    2.3223056
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6140351   0.2779685    1.3564095
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7777778   0.3582111    1.6887760
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9615385   0.5267535    1.7551972
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.2244898   0.6986468    2.1461135
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4666667   0.2080715    1.0466490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7459459   0.3620145    1.5370526
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8191781   0.4045717    1.6586743
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8761905   0.4392683    1.7477012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.2026144   0.6412556    2.2553898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0366197   0.5333901    2.0146238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0331551   0.5529142    1.9305156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2504854   0.6938377    2.2537169
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7076923   0.3535076    1.4167402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0564593   0.5749600    1.9411895
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.5270833   0.2497677    1.1123011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.4625698   0.2086365    1.0255679
6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8801376   0.5728859    1.3521755
6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.6386299   0.4402219    0.9264603
6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7108385   0.4619340    1.0938605
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.5026084   0.3144824    0.8032729
6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6947124   0.4431256    1.0891387
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.6094083   0.3866801    0.9604281
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.6330039   0.4097889    0.9778058
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.7168569   0.4823192    1.0654436
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.7487947   0.5566623    1.0072419
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.7880899   0.5550895    1.1188928
6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.6349229   0.4234836    0.9519308
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9989936   0.7907530    1.2620732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2383243   1.0080210    1.5212450
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0306667   0.8240047    1.2891599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0029794   0.7955324    1.2645214
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9432651   0.7489758    1.1879543
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0896401   0.8735728    1.3591489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8002759   0.6321213    1.0131625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7666686   0.6052922    0.9710694
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9463254   0.7474614    1.1980977
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9362584   0.7484093    1.1712571
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8323566   0.6644884    1.0426328
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.2771930   0.7726483    2.1112089
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 1.3333333   0.8020260    2.2166086
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 1.6816817   1.0410356    2.7165769
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 1.3015291   0.7865513    2.1536777
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.2307692   0.7294339    2.0766693
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 1.6592593   1.0018980    2.7479257
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 1.2155039   0.6599594    2.2386978
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 1.2444444   0.6257645    2.4748001
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 1.4933333   0.8246867    2.7041112
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 1.2952381   0.7257833    2.3114911
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 1.7568627   1.0022995    3.0794855
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9434523   0.8202800    1.0851200
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8744580   0.7577517    1.0091389
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8780150   0.7582082    1.0167529
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9339667   0.8077998    1.0798391
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9188493   0.7929061    1.0647971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9667795   0.8429418    1.1088103
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9006349   0.7866221    1.0311726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8898147   0.7771511    1.0188111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0169519   0.8909693    1.1607484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0968642   0.9709800    1.2390688
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0087316   0.8857057    1.1488459
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8033537   0.4573646    1.4110780
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.0377907   0.6146249    1.7523037
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1536428   0.6970941    1.9091995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0679117   0.6415714    1.7775658
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.0137615   0.5969894    1.7214917
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.2341920   0.7457200    2.0426298
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.8817757   0.5197768    1.4958891
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0420673   0.6265718    1.7330884
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.1507220   0.6838466    1.9363425
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.9288079   0.5350516    1.6123382
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.1038961   0.5911040    2.0615434
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9938272   0.7118156    1.3875678
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6829268   0.4516687    1.0325911
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0065359   0.7195002    1.4080811
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9607843   0.6784734    1.3605639
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8814815   0.5991400    1.2968750
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8408408   0.5788573    1.2213949
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8296296   0.5538836    1.2426533
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6549708   0.3688901    1.1629120
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8166667   0.5632447    1.1841114
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7967480   0.5477807    1.1588713
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8296296   0.5818977    1.1828287
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.5753968   0.2875407    1.1514248
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8055556   0.4424521    1.4666441
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9697452   0.6037392    1.5576357
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.7581699   0.4185153    1.3734783
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7631579   0.4030919    1.4448566
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.9456522   0.4841224    1.8471734
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.8055556   0.3947681    1.6437999
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.7652778   0.4322128    1.3550041
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.7107843   0.3608244    1.4001666
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.6304348   0.2794226    1.4223904
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.6766667   0.3151616    1.4528350
24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.3507109   0.2179766    8.3697988
24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.6501548   0.1100627    3.8405493
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7822086   0.1175530    5.2048893
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.7817590   0.1620484    3.7713856
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 1.1278195   0.1568978    8.1070398
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.9249330   0.1613118    5.3033996
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.9348442   0.1577162    5.5411774
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 1.4921466   0.2972916    7.4892844
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 1.9897959   0.3550961   11.1499041
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 1.8508997   0.6007695    5.7024031
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.9300226   0.3576030   10.4165424
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.7221591   0.4730576    1.1024319
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9239437   0.6158093    1.3862601
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.0762500   0.7382757    1.5689452
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.9588710   0.6355217    1.4467381
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0890625   0.7378286    1.6074968
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.7000000   0.4125463    1.1877455
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.5125000   0.2507774    1.0473680
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8631579   0.4671123    1.5949945
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.6560000   0.3416379    1.2596260
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.9111111   0.5627475    1.4751259
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2812500   0.8240941    1.9920075
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9435800   0.8456812    1.0528120
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8776138   0.7891271    0.9760228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8170970   0.7135139    0.9357177
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8486221   0.7385121    0.9751491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9112122   0.8114247    1.0232714
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7704123   0.6801799    0.8726150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8216128   0.7341594    0.9194836
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8573870   0.7686593    0.9563568
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8609985   0.7757051    0.9556703
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9288915   0.8388879    1.0285514
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9385649   0.8513340    1.0347338
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.2530488   0.7718263    2.0343065
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.2568579   0.7832872    2.0167465
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.2978986   0.8121244    2.0742400
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.1229947   0.6922004    1.8218958
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.1773050   0.7269123    1.9067595
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.2621723   0.7828479    2.0349787
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.0195312   0.6272611    1.6571154
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0915663   0.6736131    1.7688448
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0278884   0.6281594    1.6819848
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.1357143   0.6646258    1.9407115
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.7826087   0.4319792    1.4178378


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250621   -0.0419148   -0.0082094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0387972   -0.0592872   -0.0183071
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0066954   -0.1395296    0.1529203
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0598553   -0.2028108    0.0831002
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0020782   -0.0928369    0.0969933
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0877193   -0.2036977    0.0282591
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0318436   -0.1525110    0.0888238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0116035   -0.0615755    0.0383685
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0261360   -0.0496775   -0.0025944
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0068027   -0.0315992    0.0179937
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1004384   -0.0124209    0.2132978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0111539   -0.0355223    0.0132146
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0172416   -0.0967783    0.1312615
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0880786   -0.2264399    0.0502827
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0744102   -0.2486730    0.0998527
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0185874   -0.0795150    0.1166897
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0456633   -0.1932041    0.1018776
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0618247   -0.1012132   -0.0224361
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0589226   -0.0949467    0.2127918


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2417770   -0.4151278   -0.0896613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1200582   -0.1853810   -0.0583352
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0222576   -0.6074578    0.4052843
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2436111   -0.9850568    0.2208946
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0073065   -0.3894149    0.2907516
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.2044990   -0.5086849    0.0383560
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1187500   -0.6726134    0.2517090
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1195100   -0.7726362    0.2929724
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.4169323   -0.8641808   -0.0769863
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0409597   -0.2014903    0.0981224
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2727115   -0.1081699    0.5226828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0443699   -0.1459951    0.0482432
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0682739   -0.5124200    0.4260102
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1587635   -0.4378866    0.0661761
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2192513   -0.8580064    0.1999092
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2180233   -2.4272927    0.8215829
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1032774   -0.4930707    0.1847532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1259845   -0.2093771   -0.0483423
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1502146   -0.3482913    0.4644071
