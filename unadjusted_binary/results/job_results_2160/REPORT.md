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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nrooms    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      123     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       29     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       42     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        8     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       26     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        0     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       19     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       52     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        7     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      114     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1       13     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       75     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        9     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       59     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1       19     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       39     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        9     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       23     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       44     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        8     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       29     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       18     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        4     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      118     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1       13     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       16     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       47     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1        5     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       57     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1        5     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0      118     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1       21     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       20     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      174     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       22     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       51     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       12     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       58     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        8     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       89     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       19     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      157     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       42     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       42     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        2     368
0-6 months    ki1000108-IRC              INDIA                          1                    0      165     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       20     408
0-6 months    ki1000108-IRC              INDIA                          2                    0      147     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       23     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       30     408
0-6 months    ki1000108-IRC              INDIA                          3                    1        6     408
0-6 months    ki1000108-IRC              INDIA                          4+                   0       16     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1        1     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      462     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       45     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0       95     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       13     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1        5     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       20     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        3     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      312     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       56     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      164     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       94     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       10     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       83     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       12     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       34     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      110     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      130     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       19     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      261     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       24     602
0-6 months    ki1114097-CONTENT          PERU                           1                    0       42     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1        2     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       51     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        3     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       35     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        4     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       69     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1        9     215
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     2931    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      472    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1365    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      136    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      172    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    1       16    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       93    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1        8    5193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10826   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5275   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4810   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     2492   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1870   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      734   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      895   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      238   27140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2096    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      922    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      956    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      344    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      398    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      133    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      201    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       67    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       75     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       44     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       22     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       19     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       17     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       18     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       56     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        2     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      117     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        6     203
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       57     194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       31     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       28     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       28     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       12     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       12     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       39     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       10     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       25     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        5     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       15     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        6     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      109     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       15     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        7     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       23     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1       20     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       43     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1       11     229
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       81     229
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       36     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       17     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        4     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       12     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        8     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      129     221
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       41     221
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       16     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       24     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       21     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       34     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       29     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       56     187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       47     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      105     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       24     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       57     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       21     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       21     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        5     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        8     288
6-24 months   ki1000108-IRC              INDIA                          1                    0      113     337
6-24 months   ki1000108-IRC              INDIA                          1                    1       33     337
6-24 months   ki1000108-IRC              INDIA                          2                    0      110     337
6-24 months   ki1000108-IRC              INDIA                          2                    1       36     337
6-24 months   ki1000108-IRC              INDIA                          3                    0       23     337
6-24 months   ki1000108-IRC              INDIA                          3                    1        8     337
6-24 months   ki1000108-IRC              INDIA                          4+                   0        8     337
6-24 months   ki1000108-IRC              INDIA                          4+                   1        6     337
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      256     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       93     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       65     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       15     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       42     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        7     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       15     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        4     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      228     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       66     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      121     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       31     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       83     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       11     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       71     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        9     620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       15     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       13     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       53     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       49     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       69     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       52     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      128     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      101     480
6-24 months   ki1114097-CONTENT          PERU                           1                    0       32     200
6-24 months   ki1114097-CONTENT          PERU                           1                    1        5     200
6-24 months   ki1114097-CONTENT          PERU                           2                    0       45     200
6-24 months   ki1114097-CONTENT          PERU                           2                    1        6     200
6-24 months   ki1114097-CONTENT          PERU                           3                    0       36     200
6-24 months   ki1114097-CONTENT          PERU                           3                    1        1     200
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       68     200
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        7     200
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     2473    4029
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1304    4029
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      164    4029
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       88    4029
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5865   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1670   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3000   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      669   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1212   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      213   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      599   13295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       67   13295
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1686    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      788    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      810    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      311    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      346    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      120    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      192    4306
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       53    4306
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       71     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       81     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       22     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       28     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       16     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       12     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        4     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       19     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       48     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1       11     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      107     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1       20     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       51     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       33     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       26     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       52     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       24     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       24     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       11     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       14     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       36     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       16     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       24     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        7     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       14     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        8     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      104     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       27     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        6     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       13     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       22     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1       30     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       42     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1       20     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       69     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       70     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       15     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        7     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       12     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       13     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      113     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       83     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       17     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       46     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       21     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       45     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       28     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       80     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      166     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1       11     373
0-24 months   ki1000108-IRC              INDIA                          1                    0       98     408
0-24 months   ki1000108-IRC              INDIA                          1                    1       87     408
0-24 months   ki1000108-IRC              INDIA                          2                    0       85     408
0-24 months   ki1000108-IRC              INDIA                          2                    1       85     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       22     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       14     408
0-24 months   ki1000108-IRC              INDIA                          4+                   0        8     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1        9     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      307     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      200     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       70     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       44     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       18     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        7     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      212     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      156     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      111     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       80     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       77     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       27     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       64     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       31     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       14     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       26     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       48     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       80     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       66     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       83     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      126     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      159     602
0-24 months   ki1114097-CONTENT          PERU                           1                    0       32     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1       12     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       43     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1       11     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       32     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1        7     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       59     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1       19     215
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     2539    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      980    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1303    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      251    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      166    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       29    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0       92    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1       14    5374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8763   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     7367   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3964   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3358   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1594   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1021   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      809   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      330   27206
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1409    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1782    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      682    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      705    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      288    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      274    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      159    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      127    5426


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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##       ever_stunted
## nrooms    0
##     1  2473
##     2  1304
##     3   164
##     4+   88
```




# Results Detail

## Results Plots
![](/tmp/aaf650a6-3026-4ebc-a672-b82143a3eebb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aaf650a6-3026-4ebc-a672-b82143a3eebb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aaf650a6-3026-4ebc-a672-b82143a3eebb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aaf650a6-3026-4ebc-a672-b82143a3eebb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3928571   0.2881932   0.4975211
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.6666667   0.5618282   0.7715051
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5000000   0.3582499   0.6417501
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5600000   0.3650046   0.7549954
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3076923   0.1819804   0.4334042
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2258065   0.0783098   0.3733031
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.3636364   0.1621966   0.5650761
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.2061069   0.1366905   0.2755232
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6842105   0.4748163   0.8936048
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5769231   0.4423944   0.7114517
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3225806   0.2060071   0.4391542
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.5035971   0.4203251   0.5868692
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6428571   0.3913740   0.8943403
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3181818   0.1231725   0.5131911
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.5200000   0.3237783   0.7162217
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.4234694   0.3541605   0.4927783
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5384615   0.2669251   0.8099979
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7301587   0.6203313   0.8399862
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6818182   0.5692234   0.7944130
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7407407   0.6579262   0.8235553
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4702703   0.3982597   0.5422808
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.5000000   0.4247465   0.5752535
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.3888889   0.2294469   0.5483308
0-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.5294118   0.2918515   0.7669720
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3944773   0.3519047   0.4370500
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3518519   0.2617230   0.4419807
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2903226   0.1772562   0.4033890
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4239130   0.3733896   0.4744365
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4188482   0.3488332   0.4888632
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2596154   0.1752990   0.3439318
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.3263158   0.2319705   0.4206611
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6500000   0.5020654   0.7979346
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6250000   0.5410618   0.7089382
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5570470   0.4772217   0.6368723
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5578947   0.5001881   0.6156014
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.2727273   0.1408266   0.4046280
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2037037   0.0960323   0.3113751
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.1794872   0.0587649   0.3002095
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2784882   0.2636765   0.2932999
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1615187   0.1432199   0.1798174
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1487179   0.0987732   0.1986627
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1320755   0.0676159   0.1965351
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4567266   0.4477788   0.4656744
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4586179   0.4455520   0.4716837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3904398   0.3697391   0.4111404
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.2897278   0.2604350   0.3190207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5584456   0.5384252   0.5784661
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5082913   0.4760513   0.5405313
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4875445   0.4403640   0.5347250
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.4440559   0.3707845   0.5173274
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1521739   0.1154512   0.1888966
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1413613   0.0919201   0.1908024
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.0961538   0.0394583   0.1528494
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1263158   0.0594692   0.1931623
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1500000   0.0392524   0.2607476
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1406250   0.0803515   0.2008985
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1275168   0.0739151   0.1811184
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.0842105   0.0519429   0.1164782
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1387011   0.1270873   0.1503150
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0906063   0.0760833   0.1051292
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.0851064   0.0452152   0.1249976
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0792079   0.0265342   0.1318817
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3276194   0.3193997   0.3358391
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3412764   0.3290747   0.3534780
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2818740   0.2624550   0.3012931
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.2100618   0.1833903   0.2367333
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3055003   0.2869328   0.3240679
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2646154   0.2379957   0.2912351
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2504708   0.2095593   0.2913823
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2500000   0.1895471   0.3104529
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1857143   0.0943803   0.2770483
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.4745763   0.3468288   0.6023237
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3170732   0.1742676   0.4598788
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5000000   0.2994444   0.7005556
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2040816   0.0909829   0.3171804
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1666667   0.0330093   0.3003240
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.2857143   0.0920667   0.4793618
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1209677   0.0634441   0.1784913
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5333333   0.2803129   0.7863537
6-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4651163   0.3157080   0.6145246
6-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2037037   0.0960477   0.3113597
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.3076923   0.2238789   0.3915057
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6907895   0.6171888   0.7643901
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7037037   0.6040900   0.8033174
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5000000   0.3485223   0.6514777
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.6153846   0.3504624   0.8803068
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2260274   0.1580820   0.2939728
6-24 months   ki1000108-IRC              INDIA                          2                    NA                0.2465753   0.1765570   0.3165937
6-24 months   ki1000108-IRC              INDIA                          3                    NA                0.2580645   0.1038022   0.4123268
6-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.4285714   0.1689611   0.6881818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2244898   0.1767570   0.2722226
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2039474   0.1398402   0.2680546
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1170213   0.0519870   0.1820555
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1125000   0.0432031   0.1817969
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4642857   0.2793669   0.6492046
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4803922   0.3833330   0.5774513
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.4297521   0.3414544   0.5180497
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.4410480   0.3766736   0.5054225
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2216324   0.2110037   0.2322610
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1823385   0.1686571   0.1960199
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1494737   0.1303053   0.1686421
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1006006   0.0763744   0.1248268
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3185125   0.2968642   0.3401609
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2774309   0.2481661   0.3066956
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2575107   0.2071140   0.3079074
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2163265   0.1616601   0.2709930


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5234043   0.4594110   0.5873975
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2457627   0.1907167   0.3008088
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4889706   0.4294554   0.5484858
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4357977   0.3750558   0.4965395
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7120000   0.6557549   0.7682451
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4779412   0.4294126   0.5264698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2279070   0.1717046   0.2841094
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2370674   0.2256958   0.2484389
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4438727   0.4363510   0.4513944
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5322521   0.5160648   0.5484394
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1217023   0.1128092   0.1305953
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3219971   0.3152345   0.3287596
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2864960   0.2726657   0.3003263
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1607143   0.1125109   0.2089177
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2462908   0.2002223   0.2923593
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1969914   0.1889397   0.2050430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2954018   0.2790421   0.3117615


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.6969697   1.2454249   2.3122280
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.2727273   0.8625380   1.8779864
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.4254545   0.9194820   2.2098537
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.7338710   0.3396388   1.5857040
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.1818182   0.5937638   2.3522725
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.6698473   0.3944776   1.1374422
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8431953   0.5738956   1.2388635
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.4714640   0.2936208   0.7570252
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.7360266   0.5197843   1.0422306
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.4949495   0.2392150   1.0240786
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.8088889   0.4697167   1.3929699
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.6587302   0.4310654   1.0066347
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3560091   0.8011630   2.2951143
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 1.2662338   0.7448400   2.1526071
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 1.3756614   0.8207049   2.3058765
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0632184   0.8577795   1.3178601
0-24 months   ki1000108-IRC              INDIA                          3                    1                 0.8269476   0.5338346   1.2810006
0-24 months   ki1000108-IRC              INDIA                          4+                   1                 1.1257606   0.7007013   1.8086694
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8919444   0.6754925   1.1777554
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.7359677   0.4913018   1.1024761
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.7715217   0.4118701   1.4452270
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9880521   0.8046737   1.2132208
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6124260   0.4333197   0.8655633
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7697706   0.5630498   1.0523879
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9615385   0.7382421   1.2523753
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8569954   0.6549011   1.1214533
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.8582996   0.6684483   1.1020721
0-24 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           2                    1                 0.7469136   0.3648579   1.5290334
0-24 months   ki1114097-CONTENT          PERU                           3                    1                 0.6581197   0.2874248   1.5069035
0-24 months   ki1114097-CONTENT          PERU                           4+                   1                 0.8931624   0.4792549   1.6645402
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.5799838   0.5117546   0.6573097
0-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5340188   0.3800909   0.7502840
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.4742588   0.2902702   0.7748689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0041409   0.9724157   1.0369012
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8548654   0.8095357   0.9027334
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6343573   0.5724159   0.7030013
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9101894   0.8466029   0.9785517
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8730384   0.7887259   0.9663637
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7951642   0.6723710   0.9403826
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9289454   0.6073623   1.4207987
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6318682   0.3341452   1.1948619
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8300752   0.4640021   1.4849605
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9375000   0.3992178   2.2015710
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8501119   0.3634989   1.9881497
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.5614035   0.2443525   1.2898330
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6532481   0.5451809   0.7827367
0-6 months    ki1135781-COHORTS          INDIA                          3                    1                 0.6135954   0.3811502   0.9877977
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.5710690   0.2921458   1.1162912
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0416854   0.9988731   1.0863328
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8603704   0.8014690   0.9236006
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6411763   0.5640645   0.7288298
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8661705   0.7705811   0.9736177
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8198708   0.6870205   0.9784106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.8183297   0.6378696   1.0498439
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 2.5554107   1.4587303   4.4765807
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.7073171   0.8763887   3.3260716
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 2.6923077   1.4272769   5.0785666
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.8166667   0.3081022   2.1646858
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.4000000   0.5833195   3.3600798
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.5927419   0.2855798   1.2302797
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8720930   0.4917451   1.5466270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.3819444   0.1877447   0.7770210
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.5769231   0.3338383   0.9970104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0186949   0.8532946   1.2161559
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.7238095   0.5249922   0.9979199
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.8908425   0.5717377   1.3880497
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0909091   0.7214373   1.6495995
6-24 months   ki1000108-IRC              INDIA                          3                    1                 1.1417400   0.5847666   2.2292144
6-24 months   ki1000108-IRC              INDIA                          4+                   1                 1.8961039   0.9642127   3.7286482
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9084928   0.6215980   1.3278023
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.5212766   0.2875068   0.9451230
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.5011364   0.2611877   0.9615216
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0346908   0.6619938   1.6172132
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9256198   0.5912885   1.4489915
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9499496   0.6215524   1.4518555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8227070   0.7555581   0.8958236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.6744217   0.5910590   0.7695418
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.4539075   0.3547617   0.5807617
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8710203   0.7697858   0.9855680
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8084791   0.6591174   0.9916875
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.6791775   0.5227660   0.8823872


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1305471    0.0455863    0.2155079
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0619296   -0.1708759    0.0470167
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1952399   -0.3983716    0.0078917
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2070595   -0.4520961    0.0379772
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1735385   -0.0895725    0.4366495
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0076709   -0.0456019    0.0609437
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0187630   -0.0405808    0.0030548
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0360502   -0.0718122   -0.0002882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0719269   -0.2152286    0.0713748
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0448203   -0.1607321    0.0710915
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0414208   -0.0492555   -0.0335862
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0128539   -0.0180344   -0.0076734
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0261935   -0.0392567   -0.0131303
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0136515   -0.0390426    0.0117397
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0387043   -0.1448520    0.0674433
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0169989   -0.0230973   -0.0109004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0056224   -0.0105087   -0.0007360
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0190043   -0.0305508   -0.0074579
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1544919    0.0720921    0.2368917
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0433673   -0.1409311    0.0541964
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2058224   -0.4494273    0.0377825
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0275950   -0.0794487    0.0242586
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0202634   -0.0320698    0.0725966
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0357801   -0.0684560   -0.0031043
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0163690   -0.1957813    0.1630432
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0246410   -0.0307440   -0.0185381
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0231108   -0.0362869   -0.0099346


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2494193    0.0659104    0.3968765
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2519894   -0.7829702    0.1208617
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.3992877   -0.8893583   -0.0363339
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4751276   -1.1668590   -0.0042192
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2437338   -0.2350190    0.5368990
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0160499   -0.1019825    0.1214400
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0499396   -0.1097004    0.0066028
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0929459   -0.1893065   -0.0043926
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1244253   -0.4021484    0.0982893
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.1966605   -0.8293799    0.2172231
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1747218   -0.2079428   -0.1424145
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0289586   -0.0407280   -0.0173223
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0492126   -0.0742067   -0.0248000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0985507   -0.2973905    0.0698146
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3477612   -1.7305515    0.3347643
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1396757   -0.1901549   -0.0913376
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0174609   -0.0327657   -0.0023829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0663337   -0.1073295   -0.0268556
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.4541126    0.1605507    0.6450136
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.2698413   -1.0437105    0.2109955
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.6284444   -1.5797140   -0.0279556
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0416093   -0.1230576    0.0339322
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0822743   -0.1565426    0.2717774
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1896040   -0.3745591   -0.0295358
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0365448   -0.5255121    0.2956954
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1250869   -0.1563488   -0.0946701
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0782350   -0.1237070   -0.0346032
