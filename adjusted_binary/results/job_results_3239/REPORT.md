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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       22    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       58    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       80    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1      176    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      106    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1      192    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      184    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      386    1204
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    15747   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1    16487   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     7247   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     7380   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     2965   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1     2255   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1537   54353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      735   54353
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2420   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     3791   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1176   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1     1514   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      512   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      581   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      275   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      279   10548
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       50    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       30    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      182    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       74    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      208    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       90    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      430    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1      140    1204
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    18536   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1    13666   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     8416   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     6188   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     3366   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1     1842   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1658   54280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      608   54280
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3802   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     2234   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1756   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1      844   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      742   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1      320   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      378   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      158   10234
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       22     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       28     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       80     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1      102     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      100     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1      102     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      172     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1      246     852
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8961   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2821   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4591   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     1192   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1871   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      413   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0     1003   20979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1      127   20979
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2418    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1557    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0     1174    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1      670    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      510    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1      261    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0      273    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1      121    6984


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
![](/tmp/2f888327-fb5e-4a96-99f0-856d0402a648/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2f888327-fb5e-4a96-99f0-856d0402a648/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2f888327-fb5e-4a96-99f0-856d0402a648/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f888327-fb5e-4a96-99f0-856d0402a648/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5016514   0.4541459   0.5491569
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4617526   0.4006687   0.5228365
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3149187   0.2398514   0.3899860
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4161349   0.3390558   0.4932139
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7409142   0.6042573   0.8775711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6925023   0.6123306   0.7726740
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6500441   0.5731537   0.7269345
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6788880   0.6246012   0.7331748
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.2963750   0.1697320   0.4230180
0-24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2586948   0.1451687   0.3722209
0-24 months   ki1114097-CONTENT          PERU                           3                    NA                0.2638548   0.1385653   0.3891444
0-24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3293358   0.2340901   0.4245816
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4444507   0.4281251   0.4607763
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2793235   0.2571278   0.3015192
0-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2661716   0.2112214   0.3211217
0-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1691701   0.1117816   0.2265585
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5197870   0.5104422   0.5291318
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4795541   0.4666713   0.4924368
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4300609   0.4101334   0.4499885
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.3742511   0.3497938   0.3987084
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6100515   0.5898969   0.6302061
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5634028   0.5313704   0.5954352
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5303088   0.4829534   0.5776643
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.5031824   0.4317381   0.5746268
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2942697   0.2490545   0.3394848
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3087669   0.2482164   0.3693174
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2070343   0.1371691   0.2768996
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2833949   0.2027916   0.3639983
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3377889   0.1963230   0.4792549
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2724616   0.1962951   0.3486282
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2896959   0.2171219   0.3622700
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2418393   0.1921557   0.2915230
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                0.2954545   0.1603301   0.4305790
0-6 months    ki1114097-CONTENT          PERU                           2                    NA                0.1481481   0.0531766   0.2431197
0-6 months    ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
0-6 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2179756   0.2041544   0.2317967
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1360450   0.1187808   0.1533092
0-6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1316993   0.0881382   0.1752604
0-6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0966460   0.0507953   0.1424966
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4358016   0.4265817   0.4450215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3960819   0.3836407   0.4085230
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3501540   0.3303075   0.3700005
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.2960817   0.2737799   0.3183834
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3700996   0.3496687   0.3905306
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3248576   0.2962115   0.3535037
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3001951   0.2572832   0.3431070
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.2879631   0.2237324   0.3521938
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3275862   0.2064091   0.4487633
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5333333   0.3870988   0.6795679
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3529412   0.1917886   0.5140937
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.5000000   0.2682673   0.7317327
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3315833   0.2717789   0.3913877
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2339383   0.1603255   0.3075511
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1400962   0.0641497   0.2160426
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1882102   0.0953236   0.2810968
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5612749   0.3663183   0.7562314
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5565075   0.4554815   0.6575335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.5044598   0.4071825   0.6017372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5902233   0.5235400   0.6569066
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1046512   0.0399488   0.1693535
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2295324   0.2175389   0.2415258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2155919   0.1990391   0.2321446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1891330   0.1701404   0.2081255
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   NA                0.1774580   0.1458181   0.2090979
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3912743   0.3665703   0.4159783
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3649027   0.3277165   0.4020888
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3385876   0.2852840   0.3918912
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   NA                0.3097427   0.2313824   0.3881029


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4941218   0.4862726   0.5019709
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5844710   0.5684819   0.6004601
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2170266   0.2076700   0.2263831
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3735682   0.3548662   0.3922701


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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9204650   0.7851945   1.0790395
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6277639   0.4865267   0.8100019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8295299   0.6759936   1.0179384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9346592   0.7517752   1.1620334
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8773541   0.7046977   1.0923126
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9162842   0.7494203   1.1203014
0-24 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           2                    1                 0.8728630   0.4768008   1.5979207
0-24 months   ki1114097-CONTENT          PERU                           3                    1                 0.8902736   0.4762073   1.6643740
0-24 months   ki1114097-CONTENT          PERU                           4+                   1                 1.1112132   0.6737188   1.8328044
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.6284691   0.5758575   0.6858874
0-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5988777   0.4856387   0.7385212
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.3806273   0.2705989   0.5353945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9225972   0.8961774   0.9497960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8273792   0.7886547   0.8680051
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.7200085   0.6728737   0.7704451
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9235331   0.8649331   0.9861034
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8692853   0.7909438   0.9553864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.8248196   0.7129961   0.9541810
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0492651   0.8190406   1.3442034
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.7035530   0.4858947   1.0187122
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.9630450   0.6980569   1.3286248
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8066032   0.4874243   1.3347891
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8576241   0.5265673   1.3968186
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.7159481   0.4489208   1.1418086
0-6 months    ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           2                    1                 0.5014245   0.2281439   1.1020526
0-6 months    ki1114097-CONTENT          PERU                           3                    1                 0.6942801   0.3215170   1.4992205
0-6 months    ki1114097-CONTENT          PERU                           4+                   1                 0.8244576   0.4514153   1.5057760
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6241297   0.5416421   0.7191793
0-6 months    ki1135781-COHORTS          INDIA                          3                    1                 0.6041930   0.4314846   0.8460305
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.4433799   0.2747435   0.7155245
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9088582   0.8770339   0.9418373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8034711   0.7576457   0.8520681
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.6793955   0.6286248   0.7342668
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8777571   0.7912703   0.9736970
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8111197   0.6951299   0.9464636
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7780691   0.6185844   0.9786725
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.6280702   1.0273132   2.5801406
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.0773994   0.5986458   1.9390255
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.5263158   0.8435555   2.7616915
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.7055190   0.4910878   1.0135805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.4225067   0.2385993   0.7481661
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.5676106   0.3358045   0.9594328
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9915062   0.6701717   1.4669145
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8987751   0.6041548   1.3370690
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 1.0515763   0.7298683   1.5150852
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.5558308   0.4882521   0.6327631
6-24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5267378   0.3740981   0.7416576
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.3248362   0.1746026   0.6043354
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9392655   0.8591423   1.0268610
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8239926   0.7391904   0.9185235
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1                 0.7731284   0.6417878   0.9313475
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.9326007   0.8280046   1.0504096
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8653460   0.7285408   1.0278405
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1                 0.7916254   0.6112090   1.0252971


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0770517   -0.0075190    0.1616223
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0221643   -0.1375191    0.0931906
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0358533   -0.2806654    0.2089589
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2446154   -0.0098948    0.4991256
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0154184   -0.0379548    0.0071179
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0240789   -0.0572048    0.0090470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0664956   -0.1990115    0.0660203
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0033518   -0.1123381    0.1056346
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0564715   -0.0656663   -0.0472768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0256653   -0.0312417   -0.0200888
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0255806   -0.0387932   -0.0123680
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0309017   -0.0496250    0.1114284
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1830495   -0.3931167    0.0270176
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0319622   -0.2128240    0.2767484
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0233846   -0.2347709    0.2815402
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0217938   -0.0689398    0.0253523
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0102544   -0.0424681    0.0629768
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0078412   -0.0242476    0.0399299
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0603803   -0.1963456    0.0755850
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0721987   -0.1900894    0.0456919
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0273343   -0.0346090   -0.0200596
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0248952   -0.0305813   -0.0192091
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0226304   -0.0351747   -0.0100862
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0853170   -0.0133824    0.1840164
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0687374   -0.1095950   -0.0278799
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0002420   -0.1893133    0.1888293
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0556129   -0.0656739   -0.0455519
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0125058   -0.0201328   -0.0048788
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0177061   -0.0339439   -0.0014684


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1257440   -0.0249866    0.2543088
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0645774   -0.4598102    0.2236490
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0590659   -0.5500643    0.2764038
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2844365   -0.0861239    0.5285702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0355030   -0.0887720    0.0151598
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0504193   -0.1224134    0.0169570
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0985969   -0.3140354    0.0815200
0-24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0114385   -0.4608727    0.2997283
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1455530   -0.1697578   -0.1218491
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0519412   -0.0633690   -0.0406362
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0437670   -0.0667214   -0.0213066
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0907738   -0.1793511    0.2990279
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.4081104   -0.9693100   -0.0068374
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0821429   -0.8215926    0.5375136
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0573152   -0.8444840    0.5182097
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0426601   -0.1392805    0.0457661
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0240447   -0.1077667    0.1401722
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0259546   -0.0862270    0.1265504
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2176583   -0.8212554    0.1858957
0-6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.3233902   -0.9701145    0.1110357
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1433810   -0.1817773   -0.1062322
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0605860   -0.0745959   -0.0467588
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0651293   -0.1017439   -0.0297315
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2066272   -0.0728229    0.4132858
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2615123   -0.4262770   -0.1157814
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0004313   -0.4011476    0.2856835
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.2086372   -0.2467911   -0.1716509
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0576235   -0.0934813   -0.0229415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0473973   -0.0918587   -0.0047464
