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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/44cb5cea-6194-4c27-af24-2de8a0eb90ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/44cb5cea-6194-4c27-af24-2de8a0eb90ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/44cb5cea-6194-4c27-af24-2de8a0eb90ba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/44cb5cea-6194-4c27-af24-2de8a0eb90ba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4045036    0.3148643   0.4941429
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.6603028    0.5703718   0.7502339
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5466612    0.4353482   0.6579741
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5716279    0.4297713   0.7134845
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.0835813    0.0325700   0.1345926
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.0374245   -0.0065280   0.0813770
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.0437495   -0.0045321   0.0920312
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1486930    0.0953961   0.2019899
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6956382    0.5942297   0.7970467
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5858952    0.4825777   0.6892126
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2961127    0.2058040   0.3864213
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.4899409    0.4137880   0.5660937
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5136860    0.4439082   0.5834638
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.0842809    0.0127932   0.1557686
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2322801    0.1609242   0.3036360
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.4109655    0.3468338   0.4750971
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1263682   -0.0456807   0.2984171
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6641963    0.5624224   0.7659702
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6115460    0.5040296   0.7190623
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7126244    0.6315998   0.7936491
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4649363    0.3988024   0.5310701
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.5029160    0.4334469   0.5723850
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.3690305    0.2579242   0.4801368
0-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.3680929    0.2741785   0.4620073
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3897823    0.3488340   0.4307307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3528594    0.2797712   0.4259477
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2629660    0.1827395   0.3431925
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2549734    0.1485617   0.3613851
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4018133    0.3541312   0.4494954
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3871058    0.3249040   0.4493075
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2152980    0.1454604   0.2851357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2876939    0.2114928   0.3638949
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6501729    0.5024229   0.7979229
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6248287    0.5409939   0.7086635
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5569900    0.4772434   0.6367366
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5578951    0.5002250   0.6155651
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.2375788    0.1155372   0.3596204
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2206653    0.1172792   0.3240515
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.1701177    0.0632997   0.2769356
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.2487527    0.1567455   0.3407600
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2736584    0.2593754   0.2879413
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1705705    0.1520887   0.1890524
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1448174    0.1064751   0.1831596
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1180538    0.0762337   0.1598739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4662760    0.4572930   0.4752589
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4326443    0.4196648   0.4456239
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3846496    0.3652870   0.4040122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3392347    0.3155534   0.3629160
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5581236    0.5381166   0.5781305
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5087597    0.4765334   0.5409861
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4874632    0.4403224   0.5346039
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.4404463    0.3691127   0.5117799
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1541619    0.1190063   0.1893175
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1441739    0.1001457   0.1882022
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.0868568    0.0418552   0.1318583
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1338800    0.0783935   0.1893665
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1119133    0.0054774   0.2183491
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1239555    0.0660477   0.1818633
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1155157    0.0629847   0.1680467
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.0819574    0.0499743   0.1139406
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1353434    0.1241653   0.1465214
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0953324    0.0804480   0.1102168
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.0802289    0.0490055   0.1114523
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0676706    0.0326024   0.1027387
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3387614    0.3304225   0.3471003
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3153730    0.3033394   0.3274065
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2776871    0.2591285   0.2962457
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.2301466    0.2095523   0.2507408
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3055305    0.2869268   0.3241341
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2644910    0.2378711   0.2911109
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2505936    0.2100306   0.2911566
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2441529    0.1854592   0.3028465
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1296751    0.0477078   0.2116424
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.3386107    0.2266898   0.4505317
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.1891097    0.0676370   0.3105823
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.1715751    0.0068245   0.3363257
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1807527    0.0738744   0.2876309
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1660742    0.0418798   0.2902686
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.2991574    0.1124304   0.4858845
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1268707    0.0699653   0.1837761
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8801086    0.7291269   1.0310903
6-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.6540739    0.5321835   0.7759643
6-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2892911    0.1939132   0.3846690
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.3251004    0.2465358   0.4036650
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6908155    0.6174237   0.7642074
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.7042440    0.6048176   0.8036705
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4971897    0.3459191   0.6484604
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.6195743    0.3536340   0.8855145
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2242808    0.1618646   0.2866971
6-24 months   ki1000108-IRC              INDIA                          2                    NA                0.2402915    0.1760459   0.3045371
6-24 months   ki1000108-IRC              INDIA                          3                    NA                0.2526382    0.1516428   0.3536335
6-24 months   ki1000108-IRC              INDIA                          4+                   NA                0.6402567    0.5257899   0.7547234
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2158564    0.1723678   0.2593450
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2064092    0.1522993   0.2605191
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1074398    0.0558648   0.1590147
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1071448    0.0561953   0.1580942
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4643052    0.2856587   0.6429517
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4705495    0.3772123   0.5638866
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.4308089    0.3449660   0.5166518
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.4441083    0.3811462   0.5070704
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2163120    0.2059902   0.2266339
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1852887    0.1713222   0.1992552
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1493726    0.1321647   0.1665805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1190242    0.0983496   0.1396989
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3182940    0.2966755   0.3399125
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2777019    0.2484322   0.3069716
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2573365    0.2070399   0.3076330
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2174757    0.1628755   0.2720759


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.6323780   1.2693660    2.0992036
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.3514369   1.0143527    1.8005392
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.4131588   1.0238518    1.9504951
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.4477616   0.1179805    1.6993517
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 0.5234368   0.1469293    1.8647475
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 1.7790216   0.8711414    3.6330702
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8422412   0.6703967    1.0581352
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.4256705   0.3045103    0.5950386
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.7043042   0.5707430    0.8691204
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.1640709   0.0700382    0.3843508
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.4521831   0.3278277    0.6237104
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.8000325   0.6621700    0.9665976
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 5.2560402   1.3392543   20.6278665
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 4.8393980   1.2295744   19.0470571
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 5.6392709   1.4420375   22.0530855
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0816880   0.8883334    1.3171280
0-24 months   ki1000108-IRC              INDIA                          3                    1                 0.7937227   0.5691443    1.1069175
0-24 months   ki1000108-IRC              INDIA                          4+                   1                 0.7917061   0.5918395    1.0590685
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9052730   0.7228286    1.1337671
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.6746483   0.4917901    0.9254973
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6541431   0.4268137    1.0025526
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9633972   0.7914248    1.1727382
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.5358162   0.3797684    0.7559844
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7159890   0.5368448    0.9549132
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9610193   0.7381303    1.2512127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8566798   0.6549069    1.1206178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.8580718   0.6685209    1.1013676
0-24 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1114097-CONTENT          PERU                           2                    1                 0.9288090   0.4679722    1.8434560
0-24 months   ki1114097-CONTENT          PERU                           3                    1                 0.7160473   0.3215726    1.5944262
0-24 months   ki1114097-CONTENT          PERU                           4+                   1                 1.0470325   0.5620426    1.9505230
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.6232973   0.5528612    0.7027072
0-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5291903   0.4040888    0.6930220
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.4313912   0.3015864    0.6170648
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9278718   0.8983448    0.9583692
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8249397   0.7834956    0.8685761
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.7275405   0.6767674    0.7821227
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9115539   0.8479509    0.9799276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8733965   0.7891230    0.9666699
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7891555   0.6693378    0.9304217
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9352109   0.6388086    1.3691417
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.5634126   0.3198811    0.9923492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8684377   0.5411099    1.3937725
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1076033   0.3847301    3.1886898
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 1.0321898   0.3605485    2.9549857
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.7323300   0.2622935    2.0446839
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7043742   0.5904464    0.8402846
0-6 months    ki1135781-COHORTS          INDIA                          3                    1                 0.5927805   0.3982515    0.8823286
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.4999917   0.2958650    0.8449516
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9309590   0.8920336    0.9715829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8197129   0.7650405    0.8782924
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6793766   0.6194870    0.7450560
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8656780   0.7700035    0.9732403
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8201918   0.6882319    0.9774533
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7991113   0.6236705    1.0239044
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 2.6112234   1.2955836    5.2628697
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.4583342   0.5994993    3.5475246
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.3231148   0.4248615    4.1204793
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.9187925   0.3582534    2.3563756
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.6550652   0.7054738    3.8828385
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.7019023   0.3377740    1.4585696
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.7431740   0.5776014    0.9562089
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.3286993   0.2268535    0.4762688
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.3693867   0.2750019    0.4961657
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0194386   0.8545743    1.2161084
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.7197142   0.5215489    0.9931734
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.8968736   0.5763815    1.3955728
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0713867   0.7282864    1.5761239
6-24 months   ki1000108-IRC              INDIA                          3                    1                 1.1264368   0.6921841    1.8331248
6-24 months   ki1000108-IRC              INDIA                          4+                   1                 2.8547096   2.0496128    3.9760519
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9562336   0.6935926    1.3183283
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.4977371   0.2969225    0.8343665
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.4963705   0.2980686    0.8266005
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0134487   0.6581496    1.5605545
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9278572   0.6019230    1.4302810
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9565009   0.6356825    1.4392310
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8565805   0.7873755    0.9318681
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.6905421   0.6123620    0.7787035
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.5502432   0.4597028    0.6586160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8724699   0.7712369    0.9869908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8084866   0.6593595    0.9913418
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.6832540   0.5267686    0.8862259


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1189006    0.0485067    0.1892946
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1621814    0.1080854    0.2162773
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2066676   -0.3099240   -0.1034112
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0778883   -0.1518683   -0.0039083
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5856318    0.4179799    0.7532837
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0130049   -0.0361205    0.0621303
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0140680   -0.0334151    0.0052790
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0139505   -0.0470508    0.0191498
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0720998   -0.2152166    0.0710170
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0096718   -0.1152374    0.0958938
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0365910   -0.0442426   -0.0289394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0224033   -0.0277343   -0.0170723
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0258715   -0.0389342   -0.0128087
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0156395   -0.0399356    0.0086567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0006176   -0.1025262    0.1012910
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0136411   -0.0196116   -0.0076705
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0167643   -0.0220371   -0.0114916
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0190345   -0.0305939   -0.0074750
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2105311    0.1340991    0.2869630
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0200384   -0.1115846    0.0715079
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.5525977   -0.6999484   -0.4052470
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276211   -0.0793044    0.0240622
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0220100   -0.0267485    0.0707684
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0271468   -0.0557265    0.0014330
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0163885   -0.1894106    0.1566336
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0193207   -0.0255704   -0.0130710
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0228922   -0.0360373   -0.0097472


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2271678    0.0805752    0.3503878
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.6599105    0.4167668    0.8016902
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.4226585   -0.6755228   -0.2079556
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1787258   -0.3766636   -0.0092477
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8225166    0.3190117    0.9537432
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0272102   -0.0809887    0.1245793
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0374435   -0.0903312    0.0128789
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0359675   -0.1250281    0.0460428
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1247244   -0.4020436    0.0977421
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0424376   -0.6250102    0.3312804
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1543486   -0.1872466   -0.1223622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0504724   -0.0626285   -0.0384553
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0486076   -0.0736004   -0.0241965
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1129023   -0.3034299    0.0497751
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0055491   -1.4994293    0.5954561
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1120856   -0.1621334   -0.0641931
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0520636   -0.0686660   -0.0357192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0664389   -0.1074711   -0.0269270
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.6188337    0.3306783    0.7829329
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1246832   -0.8633110    0.3211481
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.6872650   -2.3408408   -1.1615496
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0416486   -0.1228295    0.0336630
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0893657   -0.1298510    0.2660495
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1438546   -0.3059743   -0.0018600
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0365883   -0.5047096    0.2858986
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0980789   -0.1304190   -0.0666640
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0774953   -0.1228614   -0.0339621
