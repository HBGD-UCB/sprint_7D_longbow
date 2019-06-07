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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        4     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       56     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       96     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       19     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       31     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       17     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       99     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1       28     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1       17     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       45     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       57     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       26     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       43     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       33     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       19     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        9     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1       10     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       92     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       15     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1       37     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1       37     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1      116     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        8     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       17     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        8     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       55     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       10     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       56     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      191     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       98     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       44     373
0-24 months   ki1000108-IRC              INDIA                          4+                   0        4     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1       13     408
0-24 months   ki1000108-IRC              INDIA                          1                    0       65     408
0-24 months   ki1000108-IRC              INDIA                          1                    1      120     408
0-24 months   ki1000108-IRC              INDIA                          2                    0       66     408
0-24 months   ki1000108-IRC              INDIA                          2                    1      104     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       26     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        7     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      279     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      228     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       65     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       43     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       36     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       26     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       56     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       39     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      174     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      194     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       98     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       36     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      193     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       88     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       96     602
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1       25     215
0-24 months   ki1114097-CONTENT          PERU                           1                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1       15     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       41     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1       13     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       29     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1       10     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0       87    5374
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1       19    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     1943    5374
0-24 months   ki1135781-COHORTS          INDIA                          1                    1     1576    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1116    5374
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      438    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      143    5374
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       52    5374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      771   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      368   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7881   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     8249   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3630   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3692   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1486   27206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1129   27206
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      143    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      143    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1253    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1938    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      610    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      777    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      263    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      299    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       96     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       56     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       33     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1       17     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       22     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        6     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      104     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1       23     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       16     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       46     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1       13     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       18     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        7     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       58     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       26     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1       33     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       34     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1       14     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      109     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1       22     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       43     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        9     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       28     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        3     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       16     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        6     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0       79     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1       60     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       12     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       27     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1       25     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       37     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1       25     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      120     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       76     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        9     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        8     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1       11     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       44     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       31     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       32     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       45     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       21     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       93     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      106     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       29     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     368
0-6 months    ki1000108-IRC              INDIA                          4+                   0        6     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1       11     408
0-6 months    ki1000108-IRC              INDIA                          1                    0      108     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       77     408
0-6 months    ki1000108-IRC              INDIA                          2                    0       97     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       73     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       23     408
0-6 months    ki1000108-IRC              INDIA                          3                    1       13     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       19     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      382     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      125     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0       85     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       47     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1       15     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       68     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      254     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      114     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      128     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       63     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       79     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       25     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      215     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       70     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       25     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       15     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0       91     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      104     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       45     602
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1       19     215
0-6 months    ki1114097-CONTENT          PERU                           1                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1       13     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       46     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        8     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       31     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        8     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       91    5193
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1       10    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     2654    5193
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      749    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1294    5193
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      207    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      164    5193
0-6 months    ki1135781-COHORTS          INDIA                          3                    1       24    5193
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      829   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      304   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9268   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     6833   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4208   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3094   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1683   27140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      921   27140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      189    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       79    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1117    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      878    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      422    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      371    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      160    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        2     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       55     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       40     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       18     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1       14     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       11     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0       98     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        5     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       15     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       42     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        4     168
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       39     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       19     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       21     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1       24     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       22     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       12     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0       88     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1       21     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       32     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1       10     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       22     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        6     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     195
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0       47     149
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1       32     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       14     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       25     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1       12     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0       80     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1       40     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        5     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        4     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0        8     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        6     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        6     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0       12     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1       52     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0        7     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1       23     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0        9     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1       35     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        5     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       85     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       45     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       22     185
6-24 months   ki1000108-IRC              INDIA                          4+                   0        4     234
6-24 months   ki1000108-IRC              INDIA                          4+                   1        2     234
6-24 months   ki1000108-IRC              INDIA                          1                    0       65     234
6-24 months   ki1000108-IRC              INDIA                          1                    1       43     234
6-24 months   ki1000108-IRC              INDIA                          2                    0       66     234
6-24 months   ki1000108-IRC              INDIA                          2                    1       31     234
6-24 months   ki1000108-IRC              INDIA                          3                    0       10     234
6-24 months   ki1000108-IRC              INDIA                          3                    1       13     234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       15     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        3     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      218     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      103     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       55     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       20     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       32     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1       11     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       52     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1       12     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       80     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0       96     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       30     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       68     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1       11     506
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0       86     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      123     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       11     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       14     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       40     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0       50     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       51     426
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       53     167
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        6     167
6-24 months   ki1114097-CONTENT          PERU                           1                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           1                    1        2     167
6-24 months   ki1114097-CONTENT          PERU                           2                    0       41     167
6-24 months   ki1114097-CONTENT          PERU                           2                    1        5     167
6-24 months   ki1114097-CONTENT          PERU                           3                    0       29     167
6-24 months   ki1114097-CONTENT          PERU                           3                    1        2     167
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       77    4108
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1        9    4108
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     1740    4108
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      827    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1059    4108
6-24 months   ki1135781-COHORTS          INDIA                          2                    1      231    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      137    4108
6-24 months   ki1135781-COHORTS          INDIA                          3                    1       28    4108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      504   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       64   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4488   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1416   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2302   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      598   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      939   10519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      208   10519
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      142    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1       64    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1252    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      821    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      609    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      355    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      262    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      139    3644


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
![](/tmp/9c7af812-7009-4c16-9e31-291129afb369/a4807484-7518-4d71-b9dc-129f4764aefc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c7af812-7009-4c16-9e31-291129afb369/a4807484-7518-4d71-b9dc-129f4764aefc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.6146933   0.4960853   0.7333013
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3532680   0.1931669   0.5133690
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.7391121   0.6783906   0.7998336
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6281540   0.3515103   0.9047977
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2943203   0.0969162   0.4917244
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3391301   0.2400099   0.4382503
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6375741   0.5593972   0.7157509
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.2105284   0.1017663   0.3192905
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1765370   0.1216484   0.2314256
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3797799   0.3532483   0.4063114
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4753741   0.4056883   0.5450600
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3938226   0.2206096   0.5670356
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4471378   0.3222581   0.5720176
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5181590   0.2623779   0.7739401
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3219041   0.2069800   0.4368282
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5082915   0.3393197   0.6772633
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5235593   0.3913860   0.6557327
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2338898   0.1539680   0.3138115
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2767068   0.2165215   0.3368921
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.1513559   0.0530012   0.2497105
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0809431   0.0422795   0.1196068
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3109387   0.2859243   0.3359531
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2779072   0.2239190   0.3318954
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5127821   0.3851731   0.6403911
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1461406   0.0669717   0.2253095
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5867607   0.4325275   0.7409938
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1055412   0.0509095   0.1601729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1506360   0.1132826   0.1879893
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3163453   0.2514563   0.3812343


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6127660   0.5503531   0.6751788
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3432203   0.2825173   0.4039234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.6070039   0.5471740   0.6668337
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8600000   0.8169015   0.9030985
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3879792   0.3749497   0.4010086
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4939352   0.4860896   0.5017807
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3404255   0.2797123   0.4011387
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4485294   0.3893160   0.5077428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3891051   0.3293816   0.4488285
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4080000   0.3469565   0.4690435
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4264706   0.3784228   0.4745184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1906412   0.1799566   0.2013259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4109064   0.4034556   0.4183572
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3474692   0.3322601   0.3626783
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2665531   0.2530304   0.2800757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2173210   0.2079509   0.2266911
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9968645   0.8404344   1.1824110
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9715581   0.6369333   1.4819842
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8212609   0.7626363   0.8843921
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3690910   0.8931772   2.0985872
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.4755547   0.7612727   2.8600287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4082281   1.0702742   1.8528957
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0577886   0.9495877   1.1783186
0-24 months   ki1114097-CONTENT          PERU                           observed             optimal           1.3918469   0.8780291   2.2063479
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.1977216   1.6136108   2.9932745
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3005828   1.2138006   1.3935696
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2239375   1.0627339   1.4095936
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8644134   0.5786485   1.2913028
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.0031122   0.7867502   1.2789752
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7509375   0.4660766   1.2099023
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2674581   0.9246433   1.7373727
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0050720   0.7337541   1.3767141
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.8145602   0.6380413   1.0399144
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2916804   0.9375696   1.7795353
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0025364   0.8387524   1.1983026
0-6 months    ki1114097-CONTENT          PERU                           observed             optimal           1.4750392   0.8191947   2.6559505
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           2.3552490   1.4646372   3.7874212
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3215030   1.2205708   1.4307814
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2503067   1.0363707   1.5084049
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8052216   0.6478719   1.0007870
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.7985820   1.0742361   3.0113467
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9561528   0.7483423   1.2216712
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.5255834   1.5089948   4.2270337
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4426903   1.1305181   1.8410631
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1962570   0.9812360   1.4583963


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0019273   -0.1068403    0.1029856
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0100476   -0.1591710    0.1390758
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1321082   -0.1804889   -0.0837275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2318460   -0.0342444    0.4979364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1399654   -0.0546760    0.3346068
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1384424    0.0459623    0.2309226
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0368445   -0.0319332    0.1056222
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.0824949   -0.0150007    0.1799905
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.2114422    0.1564734    0.2664109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1141553    0.0877510    0.1405597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1064541    0.0395509    0.1733573
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0533971   -0.2117834    0.1049892
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0013916   -0.1072371    0.1100202
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1290540   -0.3759959    0.1178880
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0860959   -0.0154700    0.1876617
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0025780   -0.1573452    0.1625012
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0970887   -0.2237147    0.0295372
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0682211   -0.0068298    0.1432719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0007018   -0.0486575    0.0500612
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.0719000   -0.0180717    0.1618716
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1096981    0.0706856    0.1487106
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0999677    0.0750908    0.1248446
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0695620    0.0174323    0.1216917
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0998789   -0.2081297    0.0083719
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1167053    0.0402038    0.1932067
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0257278   -0.1696372    0.1181817
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1610119    0.1060630    0.2159608
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0666851    0.0298666    0.1035036
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0620850   -0.0006070    0.1247770


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0031453   -0.1898608    0.1542704
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0292745   -0.5700230    0.3252290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2176398   -0.3112410   -0.1307202
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2695884   -0.1195987    0.5234890
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3222888   -0.3135898    0.6503532
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2898878    0.0656600    0.4603042
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0546315   -0.0530886    0.1513331
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.2815302   -0.1389144    0.5467623
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5449833    0.3802719    0.6659177
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2311139    0.1761415    0.2824184
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1829648    0.0590307    0.2905756
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1568539   -0.7281647    0.2255883
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0031025   -0.2710514    0.2181240
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.3316687   -1.1455698    0.1734870
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2110193   -0.0814981    0.4244183
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0050464   -0.3628544    0.2736328
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.2276563   -0.5672966    0.0383824
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2258147   -0.0665875    0.4380555
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0025299   -0.1922470    0.1654862
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.3220519   -0.2207111    0.6234870
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.5754164    0.3172371    0.7359681
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2432858    0.1807112    0.3010812
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.2001962    0.0350943    0.3370480
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.2418942   -0.5435150    0.0007864
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4440064    0.0691059    0.6679227
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0458579   -0.3362868    0.1814491
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.6040519    0.3373072    0.7634275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3068505    0.1154498    0.4568356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1640592   -0.0191229    0.3143153
