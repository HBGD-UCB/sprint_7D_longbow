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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       96     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       19     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       31     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        4     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1       17     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       99     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1       28     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       57     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       26     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       16     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       33     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       19     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        9     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1       10     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       43     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1       37     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1       37     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       92     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       17     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1      116     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       55     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       10     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      191     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       98     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       44     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1       12     373
0-24 months   ki1000108-IRC              INDIA                          1                    0       65     408
0-24 months   ki1000108-IRC              INDIA                          1                    1      120     408
0-24 months   ki1000108-IRC              INDIA                          2                    0       66     408
0-24 months   ki1000108-IRC              INDIA                          2                    1      104     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       26     408
0-24 months   ki1000108-IRC              INDIA                          4+                   0        4     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1       13     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      279     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      228     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       36     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       26     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        7     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      174     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      194     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       98     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       36     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       56     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       39     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       96     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      193     602
0-24 months   ki1114097-CONTENT          PERU                           1                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1       15     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       41     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1       13     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1       10     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1       25     215
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     1943    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    1     1576    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1116    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      438    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      143    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       52    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0       87    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1       19    5374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7881   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     8249   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3630   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3692   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1486   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1129   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      771   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      368   27206
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1253    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1938    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      610    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      777    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      263    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      299    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      143    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      143    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       96     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       56     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       33     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1       17     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       22     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        6     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       46     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1       13     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      104     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1       23     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       58     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       26     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1       33     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       34     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1       14     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       18     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        7     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       43     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        9     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       28     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       16     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        6     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      109     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1       22     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       12     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       27     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1       25     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       37     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1       25     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0       79     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1       60     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        8     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       11     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      120     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       76     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       31     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       32     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       45     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       21     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       44     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       93     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      106     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        7     368
0-6 months    ki1000108-IRC              INDIA                          1                    0      108     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       77     408
0-6 months    ki1000108-IRC              INDIA                          2                    0       97     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       73     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       23     408
0-6 months    ki1000108-IRC              INDIA                          3                    1       13     408
0-6 months    ki1000108-IRC              INDIA                          4+                   0        6     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1       11     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      382     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      125     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0       85     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       47     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       19     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        4     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      254     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      114     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      128     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       63     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       79     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       25     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       68     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       27     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       25     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       15     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0       91     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      104     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       45     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      215     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       70     602
0-6 months    ki1114097-CONTENT          PERU                           1                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1       13     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       46     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        8     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        8     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1       19     215
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     2654    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      749    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1294    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      207    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      164    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    1       24    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       91    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1       10    5193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9268   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     6833   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4208   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3094   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1683   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      921   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      829   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      304   27140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1117    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      878    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      422    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      371    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      160    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      189    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       79    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       55     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       40     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       18     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       14     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       15     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       98     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        5     168
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       19     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       24     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       12     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        9     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       32     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       10     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        6     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       21     195
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       14     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     149
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       32     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       40     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        7     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       23     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        9     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       35     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       52     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       85     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       45     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        5     185
6-24 months   ki1000108-IRC              INDIA                          1                    0       65     234
6-24 months   ki1000108-IRC              INDIA                          1                    1       43     234
6-24 months   ki1000108-IRC              INDIA                          2                    0       66     234
6-24 months   ki1000108-IRC              INDIA                          2                    1       31     234
6-24 months   ki1000108-IRC              INDIA                          3                    0       10     234
6-24 months   ki1000108-IRC              INDIA                          3                    1       13     234
6-24 months   ki1000108-IRC              INDIA                          4+                   0        4     234
6-24 months   ki1000108-IRC              INDIA                          4+                   1        2     234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      218     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      103     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       20     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       32     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       11     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       15     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        3     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       80     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       96     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       30     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       11     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       52     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       12     506
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       14     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       50     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       86     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      123     426
6-24 months   ki1114097-CONTENT          PERU                           1                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           1                    1        2     167
6-24 months   ki1114097-CONTENT          PERU                           2                    0       41     167
6-24 months   ki1114097-CONTENT          PERU                           2                    1        5     167
6-24 months   ki1114097-CONTENT          PERU                           3                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           3                    1        2     167
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     167
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        6     167
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     1740    4108
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      827    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1059    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    1      231    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      137    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    1       28    4108
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       77    4108
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1        9    4108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4488   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1416   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2302   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      598   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      939   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      208   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      504   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       64   10519
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1252    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      821    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      609    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      355    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      262    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      139    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      142    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       64    3644


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/facc8ee5-d1fd-4dc6-aa78-bf81d85aff94/d29339bc-e1a3-4356-9209-f4dc2f81822a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/facc8ee5-d1fd-4dc6-aa78-bf81d85aff94/d29339bc-e1a3-4356-9209-f4dc2f81822a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/facc8ee5-d1fd-4dc6-aa78-bf81d85aff94/d29339bc-e1a3-4356-9209-f4dc2f81822a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/facc8ee5-d1fd-4dc6-aa78-bf81d85aff94/d29339bc-e1a3-4356-9209-f4dc2f81822a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5357143   0.4288350   0.6425936
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7307692   0.6321233   0.8294152
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5416667   0.4004096   0.6829238
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.6400000   0.4514418   0.8285582
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3653846   0.2342254   0.4965439
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2903226   0.1301972   0.4504480
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.4545455   0.2460355   0.6630554
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.3282443   0.2476621   0.4088264
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6428571   0.3913740   0.8943403
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6363636   0.4349589   0.8377684
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.6800000   0.4967879   0.8632121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.5918367   0.5228946   0.6607788
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6153846   0.3503922   0.8803770
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8730159   0.7906336   0.9553982
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8484848   0.7618093   0.9351604
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8888889   0.8294995   0.9482783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4497041   0.4063714   0.4930369
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3981481   0.3057605   0.4905358
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.4193548   0.2964387   0.5422710
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5271739   0.4761306   0.5782172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4869110   0.4159795   0.5578425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3461538   0.2546603   0.4376474
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4105263   0.3115399   0.5095127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7250000   0.5865113   0.8634887
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6875000   0.6071353   0.7678647
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6442953   0.5673640   0.7212266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6771930   0.6228662   0.7315198
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.3409091   0.2005224   0.4812958
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2407407   0.1264441   0.3550374
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.2564103   0.1190495   0.3937710
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3205128   0.2167059   0.4243198
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4478545   0.4314231   0.4642859
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2818533   0.2594825   0.3042241
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2666667   0.2045932   0.3287402
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1792453   0.1062212   0.2522694
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5114073   0.5020946   0.5207201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5042338   0.4910056   0.5174621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4317400   0.4098922   0.4535877
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3230904   0.2923813   0.3537996
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6073331   0.5871961   0.6274701
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5602019   0.5283191   0.5920846
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5320285   0.4847879   0.5792691
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.5000000   0.4257139   0.5742861
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.4230769   0.3132028   0.5329510
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.2916667   0.1628074   0.4205260
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2800000   0.1036200   0.4563800
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6315789   0.4142802   0.8488777
0-6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.4807692   0.3447204   0.6168180
0-6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.4032258   0.2808963   0.5255553
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.4316547   0.3491621   0.5141473
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3571429   0.1056597   0.6086260
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3636364   0.1622316   0.5650411
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4400000   0.2450402   0.6349598
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3877551   0.3194099   0.4561003
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3846154   0.1196230   0.6496078
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5079365   0.3842383   0.6316347
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3181818   0.2055870   0.4307766
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4074074   0.3145537   0.5002611
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5326633   0.4632482   0.6020784
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4313726   0.2952613   0.5674838
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377322   0.7622678
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4162162   0.3450980   0.4873344
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.4294118   0.3549120   0.5039115
0-6 months    ki1000108-IRC              INDIA                          3                    NA                0.3611111   0.2040159   0.5182063
0-6 months    ki1000108-IRC              INDIA                          4+                   NA                0.6470588   0.4196122   0.8745055
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3097826   0.2625075   0.3570577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3298429   0.2631223   0.3965635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2403846   0.1582042   0.3225650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2842105   0.1934524   0.3749687
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3750000   0.2248467   0.5251533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2890625   0.2104637   0.3676613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.3020134   0.2282310   0.3757958
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2456140   0.1955979   0.2956302
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                0.2954545   0.1603301   0.4305790
0-6 months    ki1114097-CONTENT          PERU                           2                    NA                0.1481481   0.0531766   0.2431197
0-6 months    ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2200999   0.2061783   0.2340215
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1379081   0.1204631   0.1553531
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1276596   0.0799527   0.1753664
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0990099   0.0407555   0.1572643
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4243836   0.4152616   0.4335055
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4237195   0.4108157   0.4366234
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3536866   0.3325122   0.3748611
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.2683142   0.2387875   0.2978410
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3701127   0.3496738   0.3905516
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3246154   0.2958205   0.3534102
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3013183   0.2581160   0.3445205
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2947761   0.2285151   0.3610371
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3275862   0.2064091   0.4487633
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5333333   0.3870988   0.6795679
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3529412   0.1917886   0.5140937
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5000000   0.2682673   0.7317327
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3375527   0.2772899   0.3978156
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2380952   0.1636532   0.3125372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1392405   0.0628239   0.2156571
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1875000   0.0917806   0.2832194
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5600000   0.3651911   0.7548089
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5604396   0.4583429   0.6625362
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5049505   0.4073288   0.6025722
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5885167   0.5217222   0.6553113
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1046512   0.0399488   0.1693535
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2398374   0.2275006   0.2521742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2062069   0.1895245   0.2228892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1813426   0.1582491   0.2044361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1126761   0.0845454   0.1408067
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3960444   0.3714071   0.4206816
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3682573   0.3313411   0.4051734
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3466334   0.2925227   0.4007441
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.3106796   0.2302387   0.3911205


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6127660   0.5503531   0.6751788
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3432203   0.2825173   0.4039234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6070039   0.5471740   0.6668337
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8600000   0.8169015   0.9030985
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3879792   0.3749497   0.4010086
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4939352   0.4860896   0.5017807
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3404255   0.2797123   0.4011387
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3891051   0.3293816   0.4488285
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4080000   0.3469565   0.4690435
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4264706   0.3784228   0.4745184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1906412   0.1799566   0.2013259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4109064   0.4034556   0.4183572
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2665531   0.2530304   0.2800757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173210   0.2079509   0.2266911
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.3641026   1.0720919   1.7356495
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.0111111   0.7281153   1.4040986
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.1946667   0.8369845   1.7052029
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.7945671   0.4114672   1.5343551
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.2440191   0.6948011   2.2273766
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.8983528   0.5815413   1.3877564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.9898990   0.5984906   1.6372854
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.0577778   0.6578151   1.7009245
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.9206349   0.6120979   1.3846946
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4186508   0.9129038   2.2045807
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 1.3787879   0.8857161   2.1463492
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 1.4444444   0.9342228   2.2333214
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8853558   0.6886510   1.1382468
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.9325127   0.6849478   1.2695566
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6767735   0.3619711   1.2653561
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9236250   0.7754064   1.1001755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6566217   0.4955246   0.8700922
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7787303   0.6005404   1.0097921
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9482759   0.7580110   1.1862982
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8886832   0.7094380   1.1132160
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9340593   0.7592709   1.1490849
0-24 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           2                    1                 0.7061728   0.3766739   1.3239039
0-24 months   ki1114097-CONTENT          PERU                           3                    1                 0.7521368   0.3826897   1.4782464
0-24 months   ki1114097-CONTENT          PERU                           4+                   1                 0.9401709   0.5567723   1.5875816
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.6293412   0.5766489   0.6868483
0-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5954315   0.4704252   0.7536557
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.4002311   0.2658669   0.6025004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9859730   0.9573923   1.0154070
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8442194   0.8013071   0.8894297
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6317673   0.5736643   0.6957553
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9223964   0.8641005   0.9846252
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8760077   0.7971897   0.9626183
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.8232714   0.7070499   0.9585968
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1                 1.3668639   0.9051379   2.0641241
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 0.9423077   0.5460799   1.6260327
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 0.9046154   0.4462702   1.8337075
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.7612179   0.4875724   1.1884446
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.6384409   0.4035586   1.0100311
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.6834532   0.4610879   1.0130569
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 1.0181818   0.4156722   2.4940188
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.2320000   0.5361599   2.8309166
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 1.0857143   0.5253768   2.2436762
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3206349   0.6359463   2.7424902
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8272727   0.3813018   1.7948517
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 1.0592593   0.5126671   2.1886137
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.9567308   0.7606139   1.2034145
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8098409   0.5756243   1.1393583
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.9386792   0.5467505   1.6115556
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2                    1                 1.0317036   0.8087256   1.3161600
0-6 months    ki1000108-IRC              INDIA                          3                    1                 0.8676046   0.5436743   1.3845382
0-6 months    ki1000108-IRC              INDIA                          4+                   1                 1.5546218   1.0516859   2.2980712
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0647561   0.8264271   1.3718156
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.7759784   0.5336495   1.1283482
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.9174515   0.6439841   1.3070466
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7708333   0.4750719   1.2507243
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8053691   0.5038346   1.2873658
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.6549708   0.4179553   1.0263938
0-6 months    ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           2                    1                 0.5014245   0.2281439   1.1020526
0-6 months    ki1114097-CONTENT          PERU                           3                    1                 0.6942801   0.3215170   1.4992205
0-6 months    ki1114097-CONTENT          PERU                           4+                   1                 0.8244576   0.4514153   1.5057760
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6265703   0.5439359   0.7217584
0-6 months    ki1135781-COHORTS          INDIA                          3                    1                 0.5800074   0.3970341   0.8473039
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.4498407   0.2489207   0.8129363
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9984353   0.9634643   1.0346755
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8334126   0.7836285   0.8863595
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6322446   0.5659096   0.7063552
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8770718   0.7901830   0.9735150
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8141258   0.6974780   0.9502820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7964497   0.6322232   1.0033357
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.6280702   1.0273132   2.5801406
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.0773994   0.5986458   1.9390255
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.5263158   0.8435555   2.7616915
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.7053571   0.4920928   1.0110465
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.4125000   0.2316246   0.7346207
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.5554687   0.3234331   0.9539702
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0007849   0.6757706   1.4821160
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9016973   0.6056451   1.3424662
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 1.0509228   0.7288766   1.5152616
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.5558308   0.4882521   0.6327631
6-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5267378   0.3740981   0.7416576
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.3248362   0.1746026   0.6043354
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8597779   0.7835605   0.9434090
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7561066   0.6616690   0.8640229
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.4698019   0.3642379   0.6059605
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9298384   0.8271542   1.0452699
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8752388   0.7377662   1.0383276
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7844566   0.6021206   1.0220080


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0770517   -0.0075190    0.1616223
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0221643   -0.1375191    0.0931906
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0358533   -0.2806654    0.2089589
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2446154   -0.0098948    0.4991256
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0154184   -0.0379548    0.0071179
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0496014   -0.0862307   -0.0129720
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0505814   -0.1848718    0.0837090
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0478858   -0.1718230    0.0760513
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0598753   -0.0691580   -0.0505927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0174722   -0.0228355   -0.0121088
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0255049   -0.0387079   -0.0123019
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0309017   -0.0496250    0.1114284
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1830495   -0.3931167    0.0270176
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0319622   -0.2128240    0.2767484
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0233846   -0.2347709    0.2815402
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0217938   -0.0689398    0.0253523
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0102544   -0.0424681    0.0629768
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0076718   -0.0413584    0.0260149
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0975914   -0.2419212    0.0467385
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0721987   -0.1900894    0.0456919
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0294587   -0.0368045   -0.0221128
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0134772   -0.0187568   -0.0081975
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0226434   -0.0352034   -0.0100835
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0853170   -0.0133824    0.1840164
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0747069   -0.1159810   -0.0334328
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0010329   -0.1879704    0.1900361
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0556129   -0.0656739   -0.0455519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0225164   -0.0299685   -0.0150642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0176141   -0.0338366   -0.0013916


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1257440   -0.0249866    0.2543088
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0645774   -0.4598102    0.2236490
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0590659   -0.5500643    0.2764038
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2844365   -0.0861239    0.5285702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0355030   -0.0887720    0.0151598
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1038614   -0.1837130   -0.0293965
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0750000   -0.2939360    0.1068917
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.1634199   -0.6734226    0.1911512
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1543262   -0.1787658   -0.1303933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0353734   -0.0463279   -0.0245336
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0438358   -0.0668819   -0.0212874
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0907738   -0.1793511    0.2990279
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.4081104   -0.9693100   -0.0068374
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0821429   -0.8215926    0.5375136
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0573152   -0.8444840    0.5182097
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0426601   -0.1392805    0.0457661
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0240447   -0.1077667    0.1401722
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0253940   -0.1431825    0.0802582
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3517964   -0.9864905    0.0801096
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.3233902   -0.9701145    0.1110357
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1545241   -0.1932452   -0.1170594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0327986   -0.0457430   -0.0200144
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0651667   -0.1018289   -0.0297245
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2066272   -0.0728229    0.4132858
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2842232   -0.4507323   -0.1368254
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0018410   -0.3988678    0.2877659
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.2086372   -0.2467911   -0.1716509
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1036087   -0.1384455   -0.0698380
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0465451   -0.0903740   -0.0044780
