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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        nrooms    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        3     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       92     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       60     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       37     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1       13     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       20     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        8     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      114     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       13     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       55     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        4     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       43     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       41     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       40     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       23     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       95     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       36     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       21     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       26     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       16     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      126     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       13     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0       49     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        6     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      154     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       42     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        9     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       10     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      135     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       63     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       26     373
0-24 months   ki1000108-IRC              INDIA                          4+                  0        5     408
0-24 months   ki1000108-IRC              INDIA                          4+                  1       12     408
0-24 months   ki1000108-IRC              INDIA                          1                   0       69     408
0-24 months   ki1000108-IRC              INDIA                          1                   1      116     408
0-24 months   ki1000108-IRC              INDIA                          2                   0       56     408
0-24 months   ki1000108-IRC              INDIA                          2                   1      114     408
0-24 months   ki1000108-IRC              INDIA                          3                   0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                   1       26     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      329     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      178     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       74     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       24     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       66     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      241     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      127     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      129     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       62     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       33     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      115     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      170     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       14     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       26     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       59     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       69     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       58     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       91     602
0-24 months   ki1114097-CONTENT          PERU                           4+                  0       75     215
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        3     215
0-24 months   ki1114097-CONTENT          PERU                           1                   0       42     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           3                   0       38     215
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       90    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1       16    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     2235    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                   1     1276    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   0     1089    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      465    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   0      152    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       43    5366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      453   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1       99   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5685   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2080   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2686   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1002   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      970   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      336   13311
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       46    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       12    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      583    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      274    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      242    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      116    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      105    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       54    1432
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      112     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       40     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0       43     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0       21     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0      118     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        9     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0       56     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       57     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       27     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0       55     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       23     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0       29     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       19     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0      106     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       25     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       41     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       11     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0       29     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0       18     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0      132     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       18     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0       51     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      176     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       20     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       13     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0      105     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        3     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       58     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        3     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       91     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      108     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       48     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       56     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       23     368
0-6 months    ki1000108-IRC              INDIA                          4+                  0        7     408
0-6 months    ki1000108-IRC              INDIA                          4+                  1       10     408
0-6 months    ki1000108-IRC              INDIA                          1                   0       86     408
0-6 months    ki1000108-IRC              INDIA                          1                   1       99     408
0-6 months    ki1000108-IRC              INDIA                          2                   0       76     408
0-6 months    ki1000108-IRC              INDIA                          2                   1       94     408
0-6 months    ki1000108-IRC              INDIA                          3                   0       17     408
0-6 months    ki1000108-IRC              INDIA                          3                   1       19     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      378     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      129     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       82     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       18     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       71     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      271     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       97     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      144     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       47     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       28     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0      198     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       87     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       29     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       94     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       34     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0      103     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       46     602
0-6 months    ki1114097-CONTENT          PERU                           4+                  0       76     215
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2     215
0-6 months    ki1114097-CONTENT          PERU                           1                   0       43     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           2                   0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                   0       38     215
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       86    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1       14    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                   0     2491    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      887    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   0     1142    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      352    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   0      154    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       34    5160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      475   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1       74   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6307   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1437   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2988   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      682   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1075   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      224   13262
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       52    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1        2    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      709    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       86    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      290    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       40    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      131    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       19    1329
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       34     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       42     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      121     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        5     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       58     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       60     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       51     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       27     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       39     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        9     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0      112     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       39     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       28     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      131     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        8     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       17     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0       48     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0       57     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        5     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      167     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       28     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       11     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       20     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        3     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       52     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        8     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      133     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       84     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       44     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        7     373
6-24 months   ki1000108-IRC              INDIA                          4+                  0        9     408
6-24 months   ki1000108-IRC              INDIA                          4+                  1        8     408
6-24 months   ki1000108-IRC              INDIA                          1                   0      137     408
6-24 months   ki1000108-IRC              INDIA                          1                   1       48     408
6-24 months   ki1000108-IRC              INDIA                          2                   0      110     408
6-24 months   ki1000108-IRC              INDIA                          2                   1       60     408
6-24 months   ki1000108-IRC              INDIA                          3                   0       25     408
6-24 months   ki1000108-IRC              INDIA                          3                   1       11     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       18     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        4     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      367     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       71     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       84     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       13     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       47     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       11     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       83     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        8     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      294     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       53     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      163     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       25     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       94     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       10     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      149     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      129     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       17     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       71     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       56     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       71     590
6-24 months   ki1114097-CONTENT          PERU                           4+                  0       77     215
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        1     215
6-24 months   ki1114097-CONTENT          PERU                           1                   0       43     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           3                   0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0       91    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        3    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                   0     2749    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                   1      502    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   0     1343    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      144    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   0      172    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   1       12    5016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      326    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1       35    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3972    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      828    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2095    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      414    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      745    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      132    8547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       46    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       12    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      630    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      226    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      270    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       88    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      116    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       42    1430


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/c53dfad7-2b99-48b4-a605-5db02271580d/e8aaa074-90fd-4a26-b661-023f6b848da9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c53dfad7-2b99-48b4-a605-5db02271580d/e8aaa074-90fd-4a26-b661-023f6b848da9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c53dfad7-2b99-48b4-a605-5db02271580d/e8aaa074-90fd-4a26-b661-023f6b848da9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c53dfad7-2b99-48b4-a605-5db02271580d/e8aaa074-90fd-4a26-b661-023f6b848da9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.4880952   0.3809726   0.5952179
0-24 months   ki0047075b-MAL-ED          INDIA        2                    NA                0.5128205   0.4016591   0.6239819
0-24 months   ki0047075b-MAL-ED          INDIA        3                    NA                0.4791667   0.3375396   0.6207937
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                0.2748092   0.1982008   0.3514175
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                0.4038462   0.2702003   0.5374921
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    NA                0.1612903   0.0315427   0.2910379
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6683168   0.6033026   0.7333310
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   ki1000108-IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   ki1000108-IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   ki1000108-IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4347826   0.2320431   0.6375221
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3510848   0.3095077   0.3926619
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3148148   0.2271595   0.4024701
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.3870968   0.2657667   0.5084268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.3052632   0.2125972   0.3979291
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3451087   0.2965045   0.3937129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.3246073   0.2581603   0.3910543
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.3173077   0.2277978   0.4068176
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.5964912   0.5394859   0.6534965
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.6500000   0.5020654   0.7979346
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.5390625   0.4526364   0.6254886
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.6107383   0.5323837   0.6890928
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1509434   0.0970884   0.2047984
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3634292   0.3475179   0.3793406
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2992278   0.2764584   0.3219972
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2205128   0.1623169   0.2787088
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1793478   0.1462480   0.2124477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2678686   0.2559551   0.2797821
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2716920   0.2553265   0.2880575
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2572741   0.2325075   0.2820407
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2068966   0.0976344   0.3161588
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3197200   0.2825818   0.3568581
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3240223   0.2727583   0.3752864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.3396226   0.2393338   0.4399115
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                0.3214286   0.2213423   0.4215148
0-6 months    ki0047075b-MAL-ED          INDIA        2                    NA                0.2948718   0.1934626   0.3962810
0-6 months    ki0047075b-MAL-ED          INDIA        3                    NA                0.3958333   0.2571935   0.5344732
0-6 months    ki1000108-IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    ki1000108-IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    ki1000108-IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2526316   0.1651968   0.3400663
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2635870   0.2185433   0.3086306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2460733   0.1849489   0.3071977
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2692308   0.1839265   0.3545350
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.3052632   0.2517533   0.3587730
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2750000   0.1365113   0.4134887
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.2656250   0.1890481   0.3422019
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.3087248   0.2344867   0.3829630
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1400000   0.0872753   0.1927247
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2625814   0.2477409   0.2774219
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2356091   0.2140878   0.2571304
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1808511   0.1258269   0.2358752
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1347905   0.1042463   0.1653347
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1855630   0.1751412   0.1959849
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1858311   0.1718051   0.1998570
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1724403   0.1510652   0.1938155
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4640288   0.4053559   0.5227016
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5750000   0.4216743   0.7283257
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4409449   0.3545209   0.5273688
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4896552   0.4082205   0.5710899
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.0969529   0.0680108   0.1258950
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1725000   0.1605892   0.1844108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1650060   0.1498267   0.1801852
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1505131   0.1245409   0.1764853
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2068966   0.0977529   0.3160402
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2640187   0.2301967   0.2978407
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2458101   0.1986293   0.2929908
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2658228   0.1707986   0.3608470


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        NA                   NA                0.4808511   0.4168346   0.5448675
0-24 months   ki0047075b-MAL-ED          NEPAL        NA                   NA                0.2881356   0.2302312   0.3460400
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6568627   0.6107393   0.7029862
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.3354454   0.3228114   0.3480794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2642176   0.2551208   0.2733143
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3184358   0.2901120   0.3467596
0-6 months    ki0047075b-MAL-ED          INDIA        NA                   NA                0.3148936   0.2553821   0.3744051
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5441176   0.4957312   0.5925041
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.2494186   0.2376119   0.2612253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1822500   0.1742334   0.1902667
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1648532   0.1556668   0.1740396
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA        1                    4+                1.3558201   0.7683661   2.3924117
0-24 months   ki0047075b-MAL-ED          INDIA        2                    4+                1.4245014   0.8081293   2.5109898
0-24 months   ki0047075b-MAL-ED          INDIA        3                    4+                1.3310185   0.7294461   2.4287062
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    4+                1.4695513   0.9533794   2.2651853
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    4+                0.5869176   0.2505143   1.3750601
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    4+                0.9924242   0.4742285   2.0768592
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    4+                1.8712871   0.9196234   3.8077711
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    4+                1.6641509   0.8091128   3.4227594
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    4+                1.4274510   0.6718852   3.0326854
0-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    4+                0.8882883   0.6406895   1.2315733
0-24 months   ki1000108-IRC              INDIA        2                    4+                0.9500000   0.6865201   1.3146009
0-24 months   ki1000108-IRC              INDIA        3                    4+                1.0231481   0.7080395   1.4784939
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.8074951   0.4991133   1.3064135
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.7240741   0.4206450   1.2463793
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.8903226   0.5076189   1.5615540
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.1305285   0.8090007   1.5798437
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.0633688   0.7373534   1.5335297
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0394562   0.6868088   1.5731734
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                1.0897059   0.8513478   1.3947989
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.9037224   0.7498502   1.0891699
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0238847   0.8725168   1.2015127
0-24 months   ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        1                    4+                2.4077186   1.6807061   3.4492102
0-24 months   ki1135781-COHORTS          INDIA        2                    4+                1.9823842   1.3764208   2.8551203
0-24 months   ki1135781-COHORTS          INDIA        3                    4+                1.4608974   0.9373134   2.2769558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.4935706   1.2367001   1.8037948
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.5148886   1.2487979   1.8376772
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.4344981   1.1618825   1.7710783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.5453131   0.8957181   2.6660092
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.5661080   0.9175121   2.6732009
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.6415094   0.9128574   2.9517790
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA        1                    4+                1.6071429   0.6902815   3.7418185
0-6 months    ki0047075b-MAL-ED          INDIA        2                    4+                1.4743590   0.6253715   3.4759089
0-6 months    ki0047075b-MAL-ED          INDIA        3                    4+                1.9791667   0.8373458   4.6779963
0-6 months    ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    4+                0.9097297   0.5975582   1.3849835
0-6 months    ki1000108-IRC              INDIA        2                    4+                0.9400000   0.6172707   1.4314628
0-6 months    ki1000108-IRC              INDIA        3                    4+                0.8972222   0.5418807   1.4855810
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    4+                0.7315089   0.4097670   1.3058767
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    4+                0.6921296   0.3603676   1.3293188
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    4+                0.8346774   0.4219679   1.6510413
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.0433650   0.7092590   1.5348561
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                0.9740401   0.6361551   1.4913882
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0657051   0.6665841   1.7038021
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    4+                0.9008621   0.5285414   1.5354567
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    4+                0.8701509   0.6209610   1.2193400
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0113400   0.7510375   1.3618607
0-6 months    ki1135781-COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        1                    4+                1.8755815   1.2815840   2.7448890
0-6 months    ki1135781-COHORTS          INDIA        2                    4+                1.6829222   1.1422590   2.4794962
0-6 months    ki1135781-COHORTS          INDIA        3                    4+                1.2917933   0.7960310   2.0963127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.3766770   1.0921122   1.7353890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.3786656   1.0852319   1.7514403
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.2793209   0.9853309   1.6610277
6-24 months   ki1000108-IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    4+                0.5513514   0.3147542   0.9657958
6-24 months   ki1000108-IRC              INDIA        2                    4+                0.7500000   0.4351437   1.2926765
6-24 months   ki1000108-IRC              INDIA        3                    4+                0.6493056   0.3206169   1.3149578
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    4+                1.7373916   0.8566151   3.5237876
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    4+                1.5126327   0.7100358   3.2224542
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    4+                1.0937499   0.4506349   2.6546738
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    4+                1.2391473   0.9224801   1.6645194
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    4+                0.9502533   0.7525633   1.1998743
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    4+                1.0552259   0.8562754   1.3004013
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    4+                1.7792142   1.3146246   2.4079903
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    4+                1.7019188   1.2421038   2.3319529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    4+                1.5524352   1.0981228   2.1947046
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    4+                1.2760903   0.7358337   2.2130090
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    4+                1.1880819   0.6946430   2.0320346
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    4+                1.2848101   0.6919203   2.3857328


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1208511   -0.0582790   0.2999811
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0133264   -0.0386961   0.0653490
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.2567982    0.0100740   0.5035224
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0490196   -0.2617104   0.1636712
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.0833540   -0.2824893   0.1157812
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0258714   -0.0610683   0.1128111
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0051291   -0.0465698   0.0363116
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.1845020    0.1305116   0.2384924
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0848697    0.0521152   0.1176242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.1115392    0.0041178   0.2189606
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.1148936   -0.0366938   0.2664810
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0441176   -0.2735435   0.1853082
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.0892547   -0.2803091   0.1017998
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0059436   -0.0759188   0.0878060
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0095821   -0.0480959   0.0289317
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.1094186    0.0566901   0.1621471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0474595    0.0172835   0.0776355
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.1593137   -0.3911659   0.0725384
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0435947   -0.0124970   0.0996865
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0088526   -0.0338567   0.0515619
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.0679003    0.0389683   0.0968322
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.0504461   -0.0565212   0.1574134


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                 0.2513274   -0.2323288   0.5451615
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                 0.0462506   -0.1524532   0.2106942
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                 0.4182782   -0.1631450   0.7090645
0-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.0746269   -0.4526773   0.2050382
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.2371863   -0.9561718   0.2175381
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0781296   -0.2256124   0.3065956
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0086734   -0.0812465   0.0590287
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                 0.5500210    0.3584039   0.6844103
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.3212116    0.1859478   0.4339998
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.3502722   -0.0909366   0.6130424
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                 0.3648649   -0.3509078   0.7013885
0-6 months    ki1000108-IRC              INDIA        4+                   NA                -0.0810811   -0.5969182   0.2681301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                -0.3451838   -1.3297335   0.2232934
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.0229860   -0.3509127   0.2933990
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                -0.0324069   -0.1712258   0.0899586
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                 0.4386946    0.1838870   0.6139460
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.2604088    0.0755826   0.4082812
6-24 months   ki1000108-IRC              INDIA        4+                   NA                -0.5118110   -1.4765926   0.0771302
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                 0.3315017   -0.2585388   0.6449137
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                 0.0187205   -0.0758954   0.1050157
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                 0.4118832    0.2102508   0.5620365
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                 0.1960270   -0.3477828   0.5204178
