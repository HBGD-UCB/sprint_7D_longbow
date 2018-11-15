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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       92     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       60     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       37     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1       13     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       20     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        8     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        3     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       55     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      114     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       13     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       43     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       41     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       38     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       40     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       25     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       23     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       16     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       21     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       26     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       16     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       95     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       36     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       16     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0       49     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0       56     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        6     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      126     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       13     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       10     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       19     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      154     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       42     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       51     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       12     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       56     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       10     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        9     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      135     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       63     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        5     373
0-24 months   ki1000108-IRC              INDIA                          1                   0       69     408
0-24 months   ki1000108-IRC              INDIA                          1                   1      116     408
0-24 months   ki1000108-IRC              INDIA                          2                   0       56     408
0-24 months   ki1000108-IRC              INDIA                          2                   1      114     408
0-24 months   ki1000108-IRC              INDIA                          3                   0       10     408
0-24 months   ki1000108-IRC              INDIA                          3                   1       26     408
0-24 months   ki1000108-IRC              INDIA                          4+                  0        5     408
0-24 months   ki1000108-IRC              INDIA                          4+                  1       12     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      329     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      178     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       74     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       38     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       24     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1       10     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      241     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1      127     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      129     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       62     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       33     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       66     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       29     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       14     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       26     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       59     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       69     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       58     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       91     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      115     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      170     602
0-24 months   ki1114097-CONTENT          PERU                           1                   0       42     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           3                   0       38     215
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1     215
0-24 months   ki1114097-CONTENT          PERU                           4+                  0       75     215
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        3     215
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     2235    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                   1     1276    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   0     1089    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      465    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   0      152    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       43    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       90    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1       16    5366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    11784   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     4161   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5353   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1898   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1951   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      648   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      893   26930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      242   26930
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2164    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1028    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      970    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      417    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      402    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      160    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      208    5427
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       78    5427
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      112     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       40     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0       43     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0       21     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0       18     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0       56     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0      118     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        9     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       57     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       27     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0       55     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       23     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0       29     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       19     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0       20     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        5     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       41     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1       11     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0       29     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0       18     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0      106     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       25     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       18     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0       51     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0       61     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0      132     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       13     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      176     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       20     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       58     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        3     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0      105     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        3     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       91     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      108     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       48     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       56     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4     368
0-6 months    ki1000108-IRC              INDIA                          1                   0       86     408
0-6 months    ki1000108-IRC              INDIA                          1                   1       99     408
0-6 months    ki1000108-IRC              INDIA                          2                   0       76     408
0-6 months    ki1000108-IRC              INDIA                          2                   1       94     408
0-6 months    ki1000108-IRC              INDIA                          3                   0       17     408
0-6 months    ki1000108-IRC              INDIA                          3                   1       19     408
0-6 months    ki1000108-IRC              INDIA                          4+                  0        7     408
0-6 months    ki1000108-IRC              INDIA                          4+                  1       10     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      378     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      129     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       82     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       18     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0       15     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        8     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      271     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       97     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      144     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       47     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       28     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       71     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       29     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       94     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       34     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0      103     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       46     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0      198     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       87     602
0-6 months    ki1114097-CONTENT          PERU                           1                   0       43     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           2                   0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                   0       38     215
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           4+                  0       76     215
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2     215
0-6 months    ki1135781-COHORTS          INDIA                          1                   0     2491    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      887    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   0     1142    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      352    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   0      154    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       34    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       86    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1       14    5160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13060   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2841   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     5945   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1272   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2149   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      437   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      948   26833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      181   26833
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2672    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      321    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0     1162    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1      132    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      467    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       63    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      234    5083
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       32    5083
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       34     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0       42     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        7     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       27     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0       10     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        2     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       58     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0      121     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        5     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       60     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       51     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       27     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       39     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        9     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       39     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       12     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       28     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0      112     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       17     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0       48     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0       57     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0      131     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        8     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       11     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       20     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0      167     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       28     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       52     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        9     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       57     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0       99     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        8     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      133     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       84     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       44     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1     373
6-24 months   ki1000108-IRC              INDIA                          1                   0      137     408
6-24 months   ki1000108-IRC              INDIA                          1                   1       48     408
6-24 months   ki1000108-IRC              INDIA                          2                   0      110     408
6-24 months   ki1000108-IRC              INDIA                          2                   1       60     408
6-24 months   ki1000108-IRC              INDIA                          3                   0       25     408
6-24 months   ki1000108-IRC              INDIA                          3                   1       11     408
6-24 months   ki1000108-IRC              INDIA                          4+                  0        9     408
6-24 months   ki1000108-IRC              INDIA                          4+                  1        8     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      367     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       71     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       84     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       13     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       47     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       11     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0       18     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        4     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      294     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       53     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0      163     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       25     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       94     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       10     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       83     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        8     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       17     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       71     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       56     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       71     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      149     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      129     590
6-24 months   ki1114097-CONTENT          PERU                           1                   0       43     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           3                   0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4+                  0       77     215
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        1     215
6-24 months   ki1135781-COHORTS          INDIA                          1                   0     2749    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                   1      502    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   0     1343    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      144    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   0      172    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                   1       12    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0       91    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        3    5016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8214   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1678   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     4068   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      808   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1493   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      263   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      680   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1       82   17286
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2351    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      840    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0     1054    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      332    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      445    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      116    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      232    5423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       53    5423


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







# Results Detail

## Results Plots
![](/tmp/970b507b-3df6-4c5b-97ff-f43bcb04fdbc/74de1d50-01a7-4c62-8929-31e354df0e9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/970b507b-3df6-4c5b-97ff-f43bcb04fdbc/74de1d50-01a7-4c62-8929-31e354df0e9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/970b507b-3df6-4c5b-97ff-f43bcb04fdbc/74de1d50-01a7-4c62-8929-31e354df0e9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/970b507b-3df6-4c5b-97ff-f43bcb04fdbc/74de1d50-01a7-4c62-8929-31e354df0e9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.4880952   0.3809726   0.5952179
0-24 months   ki0047075b-MAL-ED          INDIA        2                    NA                0.5128205   0.4016591   0.6239819
0-24 months   ki0047075b-MAL-ED          INDIA        3                    NA                0.4791667   0.3375396   0.6207937
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                0.4038462   0.2702003   0.5374921
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    NA                0.1612903   0.0315427   0.2910379
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   NA                0.2748092   0.1982008   0.3514175
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6683168   0.6033026   0.7333310
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   ki1000108-IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   ki1000108-IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   ki1000108-IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3510848   0.3095077   0.3926619
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3148148   0.2271595   0.4024701
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.3870968   0.2657667   0.5084268
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4347826   0.2320431   0.6375221
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3451087   0.2965045   0.3937129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.3246073   0.2581603   0.3910543
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.3173077   0.2277978   0.4068176
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.3052632   0.2125972   0.3979291
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.6500000   0.5020654   0.7979346
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.5390625   0.4526364   0.6254886
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.6107383   0.5323837   0.6890928
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.5964912   0.5394859   0.6534965
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3634292   0.3475179   0.3793406
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2992278   0.2764584   0.3219972
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2205128   0.1623169   0.2787088
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1509434   0.0827863   0.2191005
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2609595   0.2528986   0.2690205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2617570   0.2505551   0.2729589
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2493267   0.2315414   0.2671119
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.2132159   0.1858362   0.2405955
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3220551   0.3029279   0.3411824
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3006489   0.2745257   0.3267720
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2846975   0.2404550   0.3289401
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2727273   0.1979113   0.3475432
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                0.3214286   0.2213423   0.4215148
0-6 months    ki0047075b-MAL-ED          INDIA        2                    NA                0.2948718   0.1934626   0.3962810
0-6 months    ki0047075b-MAL-ED          INDIA        3                    NA                0.3958333   0.2571935   0.5344732
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    ki1000108-IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    ki1000108-IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    ki1000108-IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2635870   0.2185433   0.3086306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2460733   0.1849489   0.3071977
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2692308   0.1839265   0.3545350
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2526316   0.1651968   0.3400663
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2750000   0.1365113   0.4134887
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.2656250   0.1890481   0.3422019
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.3087248   0.2344867   0.3829630
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.3052632   0.2517533   0.3587730
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2625814   0.2477409   0.2774219
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2356091   0.2140878   0.2571304
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1808511   0.1258269   0.2358752
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1400000   0.0719852   0.2080148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1786680   0.1716193   0.1857167
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1762505   0.1666563   0.1858448
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1689869   0.1531362   0.1848375
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1603189   0.1351255   0.1855122
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1072503   0.0948862   0.1196143
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.1020093   0.0839061   0.1201125
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.1188679   0.0845343   0.1532016
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1203008   0.0695268   0.1710747
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5750000   0.4216743   0.7283257
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4409449   0.3545209   0.5273688
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4896552   0.4082205   0.5710899
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4640288   0.4053559   0.5227016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1696320   0.1617978   0.1774663
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1657096   0.1547113   0.1767079
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1497722   0.1315108   0.1680336
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1076115   0.0860326   0.1291905
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2632404   0.2449646   0.2815161
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2395382   0.2154123   0.2636642
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2067736   0.1672053   0.2463419
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1859649   0.1143091   0.2576207


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2580394   0.2515717   0.2645070
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3101161   0.2957091   0.3245231
0-6 months    ki0047075b-MAL-ED          INDIA        NA                   NA                0.3148936   0.2553821   0.3744051
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5441176   0.4957312   0.5925041
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.2494186   0.2376119   0.2612253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1763127   0.1706830   0.1819425
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1078103   0.0979895   0.1176312
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1637742   0.1576516   0.1698967
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2472801   0.2337480   0.2608122


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA        2                    1                 1.0506567   0.7717801   1.4303031
0-24 months   ki0047075b-MAL-ED          INDIA        3                    1                 0.9817073   0.6793598   1.4186138
0-24 months   ki0047075b-MAL-ED          INDIA        4+                   1                 0.7375610   0.4179882   1.3014629
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL        2                    1                 0.3993856   0.1673490   0.9531510
0-24 months   ki0047075b-MAL-ED          NEPAL        3                    1                 0.6753247   0.3159245   1.4435834
0-24 months   ki0047075b-MAL-ED          NEPAL        4+                   1                 0.6804798   0.4414650   1.0489004
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        2                    1                 0.8893082   0.7390273   1.0701487
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        3                    1                 0.7628177   0.5727883   1.0158916
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        4+                   1                 0.5343915   0.2626208   1.0874016
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        2                    1                 1.0694726   0.9174461   1.2466909
0-24 months   ki1000108-IRC              INDIA        3                    1                 1.1518199   0.9139231   1.4516420
0-24 months   ki1000108-IRC              INDIA        4+                   1                 1.1257606   0.8119695   1.5608184
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    1                 0.8966916   0.6625787   1.2135250
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    1                 1.1025734   0.7886639   1.5414274
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   1                 1.2383977   0.7654544   2.0035533
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.9405945   0.7336577   1.2059001
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.9194428   0.6708013   1.2602465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.8845421   0.6329740   1.2360928
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.8293269   0.6277999   1.0955451
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 0.9395973   0.7235647   1.2201302
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 0.9176788   0.7169492   1.1746081
0-24 months   ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        2                    1                 0.8233455   0.7541459   0.8988947
0-24 months   ki1135781-COHORTS          INDIA        3                    1                 0.6067559   0.4643358   0.7928588
0-24 months   ki1135781-COHORTS          INDIA        4+                   1                 0.4153309   0.2638597   0.6537558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 1.0030558   0.9541774   1.0544381
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.9554227   0.8854274   1.0309512
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.8170456   0.7171885   0.9308062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9335323   0.8404228   1.0369573
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.8840024   0.7489726   1.0433763
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.8468341   0.6395286   1.1213384
0-6 months    ki0047075b-MAL-ED          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA        2                    1                 0.9173789   0.5768549   1.4589182
0-6 months    ki0047075b-MAL-ED          INDIA        3                    1                 1.2314815   0.7707201   1.9677009
0-6 months    ki0047075b-MAL-ED          INDIA        4+                   1                 0.6222222   0.2672497   1.4486843
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        2                    1                 1.0332739   0.8538092   1.2504608
0-6 months    ki1000108-IRC              INDIA        3                    1                 0.9862514   0.7038611   1.3819372
0-6 months    ki1000108-IRC              INDIA        4+                   1                 1.0992276   0.7220303   1.6734772
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   2                    1                 0.9461671   0.6556169   1.3654807
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3                    1                 1.1410353   0.7519510   1.7314445
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4+                   1                 1.3670374   0.7657691   2.4404111
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.9335564   0.6905562   1.2620661
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 1.0214116   0.7126219   1.4640045
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.9584373   0.6515269   1.4099221
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    1                 0.9659091   0.5406622   1.7256252
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    1                 1.1226358   0.6425039   1.9615616
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   1                 1.1100478   0.6512720   1.8919993
0-6 months    ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        2                    1                 0.8972802   0.8058953   0.9990278
0-6 months    ki1135781-COHORTS          INDIA        3                    1                 0.6887428   0.5054312   0.9385385
0-6 months    ki1135781-COHORTS          INDIA        4+                   1                 0.5331680   0.3269280   0.8695127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9864694   0.9258908   1.0510115
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.9458148   0.8556747   1.0454507
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.8973003   0.7638076   1.0541240
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9511332   0.7716664   1.1723387
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    1                 1.1083230   0.8093292   1.5177755
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 1.1216827   0.7228542   1.7405615
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        2                    1                 1.3602941   0.9900393   1.8690168
6-24 months   ki1000108-IRC              INDIA        3                    1                 1.1776620   0.6794373   2.0412300
6-24 months   ki1000108-IRC              INDIA        4+                   1                 1.8137255   1.0354155   3.1770821
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8706343   0.5598926   1.3538382
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.6295356   0.3320585   1.1935096
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.5755755   0.2837855   1.1673854
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.7668607   0.5507983   1.0676780
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 0.8515742   0.6219257   1.1660213
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 0.8070066   0.6007740   1.0840342
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9768768   0.9038800   1.0557689
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8829241   0.7773635   1.0028192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.6343823   0.5165442   0.7791024
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9099601   0.8052008   1.0283491
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.7854936   0.6407277   0.9629678
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.7064453   0.4776264   1.0448856


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0072442   -0.0930916    0.0786032
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.1157106   -0.2312229   -0.0001983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0543758   -0.1001608   -0.0085908
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0298357   -0.0209656    0.0806370
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0003438   -0.0215006    0.0221882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0139741   -0.0485068    0.0205585
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0586379   -0.2018893    0.0846136
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0279838   -0.0370108   -0.0189569
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0029202   -0.0075965    0.0017562
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0119391   -0.0237656   -0.0001125
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0065350   -0.0865200    0.0734501
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0089825   -0.0441544    0.0621194
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0041336   -0.0160635    0.0243306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0050118   -0.0371327    0.0271092
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0206811   -0.1133395    0.1547017
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0131628   -0.0216054   -0.0047202
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0023553   -0.0064724    0.0017619
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0005601   -0.0078309    0.0089511
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0518151    0.0028666    0.1007635
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0212309   -0.0471652    0.0047034
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1021186   -0.2502633    0.0460260
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0058579   -0.0106007   -0.0011150
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0159603   -0.0270561   -0.0048644


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0150653   -0.2102721    0.1486562
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.4015837   -0.8671485   -0.0521053
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0885685   -0.1666538   -0.0157095
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0454215   -0.0353262    0.1198716
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0009782   -0.0631552    0.0612428
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0422008   -0.1518858    0.0570399
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0991573   -0.3704080    0.1184036
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0834229   -0.1106879   -0.0568272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0113168   -0.0295990    0.0066407
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0384987   -0.0772864   -0.0011075
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0207529   -0.3091538    0.2041146
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0165084   -0.0861781    0.1094870
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0159861   -0.0652990    0.0910690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0193822   -0.1514839    0.0975644
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0699438   -0.5140951    0.4286987
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0527739   -0.0871444   -0.0194901
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0133584   -0.0369751    0.0097204
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0051952   -0.0757200    0.0800240
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1664609   -0.0060540    0.3093936
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1614433   -0.3746120    0.0186681
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2159498   -0.5741157    0.0607209
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0357680   -0.0651349   -0.0072108
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0645432   -0.1101779   -0.0207844
