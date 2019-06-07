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

**Outcome Variable:** ever_wasted

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







# Results Detail

## Results Plots
![](/tmp/379b1d14-15b1-41bf-ab51-d1392e1892b5/9f79e3dc-b42d-45a3-855c-a603f2e46bc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/379b1d14-15b1-41bf-ab51-d1392e1892b5/9f79e3dc-b42d-45a3-855c-a603f2e46bc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                0.3603290   0.1689282   0.5517297
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                0.1634646   0.0278034   0.2991257
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.5599986   0.2968841   0.8231131
0-24 months   ki1000108-IRC              INDIA        optimal              NA                0.6262386   0.5560427   0.6964345
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3582224   0.2706576   0.4457872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.4178863   0.3360910   0.4996816
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.5295596   0.4435305   0.6155887
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                0.1342403   0.0863816   0.1820989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.1961861   0.1616247   0.2307475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                0.2133188   0.1078269   0.3188107
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                0.2087619   0.0335724   0.3839515
0-6 months    ki1000108-IRC              INDIA        optimal              NA                0.6942846   0.5684913   0.8200778
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2890371   0.2114192   0.3666550
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2418713   0.1746776   0.3090650
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.3287744   0.2048775   0.4526713
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                0.1363335   0.0888185   0.1838486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.1639316   0.1319578   0.1959054
6-24 months   ki1000108-IRC              INDIA        optimal              NA                0.2600191   0.1965045   0.3235337
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1264579   0.0586209   0.1942949
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.4372044   0.3501800   0.5242289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.0997140   0.0725368   0.1268913
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                0.2288256   0.1344123   0.3232389


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        observed             NA                0.4808511   0.4168346   0.5448675
0-24 months   ki0047075b-MAL-ED          NEPAL        observed             NA                0.2881356   0.2302312   0.3460400
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA        observed             NA                0.6568627   0.6107393   0.7029862
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal        NEPAL        observed             NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          INDIA        observed             NA                0.3354454   0.3228114   0.3480794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             NA                0.2642176   0.2551208   0.2733143
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             NA                0.3184358   0.2901120   0.3467596
0-6 months    ki0047075b-MAL-ED          INDIA        observed             NA                0.3148936   0.2553821   0.3744051
0-6 months    ki1000108-IRC              INDIA        observed             NA                0.5441176   0.4957312   0.5925041
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal        NEPAL        observed             NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          INDIA        observed             NA                0.2494186   0.2376119   0.2612253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   observed             NA                0.1822500   0.1742334   0.1902667
6-24 months   ki1000108-IRC              INDIA        observed             NA                0.3112745   0.2662918   0.3562572
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal        NEPAL        observed             NA                0.4728814   0.4325613   0.5132014
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             NA                0.1648532   0.1556668   0.1740396
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        observed             optimal           1.3344778   0.8048184   2.2127117
0-24 months   ki0047075b-MAL-ED          NEPAL        observed             optimal           1.7626791   0.7963509   3.9015938
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.0963260   0.6906258   1.7403501
0-24 months   ki1000108-IRC              INDIA        observed             optimal           1.0489017   0.9663986   1.1384482
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.9810346   0.7856701   1.2249784
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.7924035   0.6590084   0.9528001
0-24 months   ki1113344-GMS-Nepal        NEPAL        observed             optimal           1.1167056   0.9667309   1.2899467
0-24 months   ki1135781-COHORTS          INDIA        observed             optimal           2.4988432   1.7525812   3.5628690
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.3467699   1.1320211   1.6022574
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             optimal           1.4927693   0.9191605   2.4243429
0-6 months    ki0047075b-MAL-ED          INDIA        observed             optimal           1.5083863   0.6728479   3.3814912
0-6 months    ki1000108-IRC              INDIA        observed             optimal           0.7837099   0.6632867   0.9259965
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.8945959   0.7027634   1.1387928
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0690611   0.8262074   1.3832986
0-6 months    ki1113344-GMS-Nepal        NEPAL        observed             optimal           0.8993433   0.6331650   1.2774211
0-6 months    ki1135781-COHORTS          INDIA        observed             optimal           1.8294735   1.2934995   2.5875335
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.1117444   0.9172848   1.3474283
6-24 months   ki1000108-IRC              INDIA        observed             optimal           1.1971217   0.9913579   1.4455934
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0399259   0.6295734   1.7177439
6-24 months   ki1113344-GMS-Nepal        NEPAL        observed             optimal           1.0816024   0.9064548   1.2905924
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.6532595   1.2598097   2.1695872
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             optimal           1.1246237   0.7533524   1.6788669


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                 0.1205221   -0.0613555    0.3023997
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                 0.1246710   -0.0062836    0.2556256
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0539424   -0.2048403    0.3127251
0-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0306241   -0.0205514    0.0817996
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0067938   -0.0863520    0.0727643
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0867517   -0.1628857   -0.0106177
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0618025   -0.0144279    0.1380330
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                 0.2012051    0.1529424    0.2494678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0680314    0.0338094    0.1022535
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.1051170    0.0014122    0.2088218
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                 0.1061317   -0.0624850    0.2747484
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.1501669   -0.2654529   -0.0348809
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0304657   -0.1002105    0.0392792
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0167039   -0.0457788    0.0791866
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                -0.0330933   -0.1487146    0.0825279
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                 0.1130851    0.0653640    0.1608061
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0183184   -0.0132515    0.0498884
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0512554    0.0020934    0.1004175
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0050489   -0.0584170    0.0685148
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0356769   -0.0415032    0.1128570
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0651391    0.0374785    0.0927998
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.0285171   -0.0632356    0.1202698


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                 0.2506432   -0.2425163    0.5480658
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                 0.4326818   -0.2557278    0.7436945
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0878625   -0.4479621    0.4254030
0-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0466218   -0.0347698    0.1216113
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0193320   -0.2727989    0.1836591
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.2619833   -0.5174313   -0.0495381
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.1045088   -0.0344141    0.2247742
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                 0.5998148    0.4294130    0.7193273
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.2574827    0.1166242    0.3758806
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.3301041   -0.0879492    0.5875171
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                 0.3370398   -0.4862200    0.7042725
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.2759824   -0.5076437   -0.0799177
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1178231   -0.4229540    0.1218771
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0645998   -0.2103498    0.2770903
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                -0.1119224   -0.5793671    0.2171728
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                 0.4533947    0.2269035    0.6135316
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.1005127   -0.0901739    0.2578455
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.1646631   -0.0087174    0.3082426
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0383930   -0.5883771    0.4178410
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0754458   -0.1031990    0.2251620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.3951343    0.2062293    0.5390828
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.1108137   -0.3273999    0.4043602
