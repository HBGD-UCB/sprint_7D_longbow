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
![](/tmp/b05781c1-2149-4044-b1a4-138115c87af6/61b2f7b5-025d-4af4-9dda-4e5a18c1481d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b05781c1-2149-4044-b1a4-138115c87af6/61b2f7b5-025d-4af4-9dda-4e5a18c1481d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.6659099   0.5398742   0.7919456
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3752763   0.2138461   0.5367065
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.7716171   0.7120658   0.8311683
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6296006   0.3287283   0.9304730
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3075846   0.1075412   0.5076280
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3229611   0.2303024   0.4156198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6882329   0.6124304   0.7640353
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.2154187   0.1045207   0.3263167
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1820768   0.1264540   0.2376996
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3799361   0.3536220   0.4062503
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4798893   0.4099568   0.5498219
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4330746   0.2451164   0.6210328
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.5177159   0.4054695   0.6299624
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5723454   0.3082221   0.8364687
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3533781   0.2419393   0.4648170
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5797393   0.3739298   0.7855489
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3622896   0.2012164   0.5233628
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2369044   0.1619266   0.3118822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2907527   0.2295028   0.3520026
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.1453921   0.0494895   0.2412947
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0969160   0.0560195   0.1378125
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3202847   0.2954824   0.3450870
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2831201   0.2249731   0.3412671
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4280088   0.2747238   0.5812937
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1403720   0.0628802   0.2178638
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4770995   0.3550907   0.5991084
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1055846   0.0509318   0.1602375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1563802   0.1186574   0.1941030
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3271884   0.2668129   0.3875639


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
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9201935   0.7820436   1.0827480
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9145805   0.6127761   1.3650295
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7866647   0.7293221   0.8485158
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3659453   0.8585195   2.1732839
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.4119229   0.7432897   2.6820312
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4787310   1.1291153   1.9366007
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9799279   0.8900894   1.0788340
0-24 months   ki1114097-CONTENT          PERU                           observed             optimal           1.3602499   0.8592100   2.1534665
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.1308544   1.5729035   2.8867254
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3000478   1.2142363   1.3919238
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2124217   1.0532284   1.3956766
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.7860667   0.5250235   1.1769013
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           0.8663620   0.7181602   1.0451473
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.6798431   0.4340337   1.0648633
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1545705   0.8746543   1.5240685
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8812057   0.6266162   1.2392329
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.1771537   0.7687871   1.8024379
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2752434   0.9461248   1.7188490
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9541051   0.8069990   1.1280268
0-6 months    ki1114097-CONTENT          PERU                           observed             optimal           1.5355426   0.8448529   2.7908894
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.9670770   1.2930835   2.9923759
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2829412   1.1889910   1.3843149
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2272856   1.0053823   1.4981664
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9647074   0.7166941   1.2985462
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.8724946   1.1075377   3.1657937
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1759241   0.9317568   1.4840757
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           2.5245443   1.5083757   4.2252895
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3896967   1.0956960   1.7625846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1566129   0.9670604   1.3833194


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0531439   -0.1614394    0.0551515
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0320559   -0.1821834    0.1180716
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1646132   -0.2143010   -0.1149254
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2303994   -0.0596722    0.5204710
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1267011   -0.0705340    0.3239363
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1546115    0.0678776    0.2413454
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0138143   -0.0799828    0.0523542
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.0776046   -0.0217781    0.1769872
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.2059024    0.1502011    0.2616036
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1139990    0.0878933    0.1401047
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1019389    0.0345731    0.1693047
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0926491   -0.2674913    0.0821931
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0691865   -0.1657068    0.0273338
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1832404   -0.4391696    0.0726889
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0546219   -0.0438380    0.1530817
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0688698   -0.2666312    0.1288917
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0641810   -0.0900776    0.2184395
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0652064   -0.0059381    0.1363508
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0133441   -0.0620490    0.0353609
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.0778637   -0.0101562    0.1658835
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0937252    0.0526107    0.1348398
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0906217    0.0661400    0.1151035
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0643491    0.0078932    0.1208050
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0151055   -0.1424450    0.1122339
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1224738    0.0474932    0.1974544
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0839333   -0.0265789    0.1944456
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1609684    0.1059960    0.2159409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0609408    0.0236556    0.0982261
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0512419   -0.0074330    0.1099168


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0867279   -0.2787012    0.0764241
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0933975   -0.6319174    0.2674151
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2711897   -0.3711364   -0.1785284
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2679063   -0.1647960    0.5398668
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2917460   -0.3453704    0.6271483
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3237445    0.1143508    0.4836313
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0204832   -0.1234827    0.0730734
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                 0.2648410   -0.1638599    0.5356324
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.5307047    0.3642331    0.6535867
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2307975    0.1764370    0.2815699
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1752044    0.0505384    0.2835016
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.2721567   -0.9046766    0.1503111
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1542519   -0.3924470    0.0431971
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.4709277   -1.3039684    0.0609123
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1338771   -0.1433088    0.3438615
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1348089   -0.5958733    0.1930492
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1504933   -0.3007503    0.4451959
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2158360   -0.0569430    0.4182153
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0481026   -0.2391589    0.1134963
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.3487644   -0.1836380    0.6416913
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.4916315    0.2266548    0.6658174
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2205410    0.1589508    0.2776210
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1851938    0.0053535    0.3325174
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0365837   -0.3952955    0.2299080
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4659531    0.0970962    0.6841234
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1496050   -0.0732415    0.3261799
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.6038889    0.3370352    0.7633298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2804185    0.0873381    0.4326513
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1354065   -0.0340616    0.2771012
