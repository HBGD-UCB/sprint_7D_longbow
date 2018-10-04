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
![](/tmp/8ceea04f-e2b2-4805-9153-3248902c1269/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ceea04f-e2b2-4805-9153-3248902c1269/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5369077   0.4300282   0.6437872
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3469074   0.2037307   0.4900841
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.6068487   0.4394025   0.7742950
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6204185   0.3554127   0.8854243
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2985913   0.1103961   0.4867866
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3455898   0.2696086   0.4215709
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5642193   0.4866475   0.6417912
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.2090517   0.1073888   0.3107146
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1777481   0.1204345   0.2350618
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2981260   0.2750514   0.3212007
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4278511   0.3613850   0.4943171
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2937896   0.1173352   0.4702439
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4026868   0.2803573   0.5250164
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3840280   0.2042116   0.5638444
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3200707   0.2074752   0.4326662
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4358832   0.2997671   0.5719993
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3582649   0.2011672   0.5153626
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2344360   0.1684099   0.3004621
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2448206   0.1950696   0.2945716
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.2151462   0.1033020   0.3269904
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0705756   0.0266425   0.1145088
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2172475   0.1971392   0.2373557
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1999285   0.1530906   0.2467663
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3232933   0.2021130   0.4444736
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1427220   0.0673624   0.2180816
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5001654   0.4027636   0.5975673
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1121253   0.0474041   0.1768466
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1625424   0.1305006   0.1945842
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2497650   0.1916728   0.3078572


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6125271   0.5501142   0.6749400
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3415068   0.2808037   0.4022098
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.6070710   0.5472412   0.6669009
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8608097   0.8177112   0.9039081
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4343244   0.3975796   0.4710692
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4765141   0.4409319   0.5120963
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6743603   0.6368970   0.7118235
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2918097   0.2308286   0.3527907
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3880559   0.3750264   0.4010853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4945504   0.4867012   0.5023995
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5846328   0.5686437   0.6006219
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3411465   0.2804333   0.4018597
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4481076   0.3888942   0.5073210
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3893192   0.3295958   0.4490427
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4083477   0.3473042   0.4693912
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5110778   0.4599352   0.5622203
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4256580   0.3776102   0.4737058
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3022772   0.2695675   0.3349869
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2776009   0.2418063   0.3133955
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2173309   0.1615376   0.2731241
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1909525   0.1802678   0.2016371
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4113932   0.4039424   0.4188440
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3478426   0.3326335   0.3630517
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4121127   0.3343509   0.4898746
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2634863   0.2250951   0.3018776
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610500   0.5138694   0.6082306
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2666740   0.2531513   0.2801967
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2166596   0.2073030   0.2260161
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3740206   0.3553187   0.3927225


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.8765452   0.7479546   1.0272434
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.0158141   0.6901836   1.4950781
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9996338   0.7673322   1.3022623
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7207383   0.4765157   1.0901293
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6874846   0.3691958   1.2801743
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7252456   0.5915442   0.8891664
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8366735   0.7431994   0.9419040
0-24 months   ki1114097-CONTENT          PERU                           optimal              observed          0.7163975   0.4652361   1.1031503
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.4580478   0.3323511   0.6312837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6028224   0.5585396   0.6506161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7318287   0.6297848   0.8504068
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.8611830   0.4865111   1.5243975
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.8986387   0.6872232   1.1750935
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9864090   0.6324598   1.5384421
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7838190   0.5760596   1.0665080
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.8528706   0.6377918   1.1404790
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.8416731   0.5529628   1.2811237
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7755663   0.5956533   1.0098208
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8819158   0.7572129   1.0271555
0-6 months    ki1114097-CONTENT          PERU                           optimal              observed          0.9899478   0.6208051   1.5785897
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.3695979   0.1988345   0.6870168
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.5280774   0.4822714   0.5782341
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.5747670   0.4573211   0.7223746
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7844779   0.5775636   1.0655199
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5416675   0.3278849   0.8948376
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8914810   0.7521032   1.0566880
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.4204585   0.2367601   0.7466856
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7502204   0.6178302   0.9109795
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.6677840   0.5328977   0.8368126
