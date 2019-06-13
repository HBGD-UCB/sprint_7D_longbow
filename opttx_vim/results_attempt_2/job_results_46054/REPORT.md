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
![](/tmp/d8571a49-7509-4b37-890f-20f038357970/d10d7c87-696b-451a-8097-d05b3336e336/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8571a49-7509-4b37-890f-20f038357970/d10d7c87-696b-451a-8097-d05b3336e336/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                0.3616774   0.1624131   0.5609417
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                0.1619713   0.0248759   0.2990666
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.3622328   0.0790528   0.6454127
0-24 months   ki1000108-IRC              INDIA        optimal              NA                0.6271751   0.5571828   0.6971673
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3178006   0.2299233   0.4056779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.3398884   0.2532821   0.4264946
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.5438862   0.4579224   0.6298499
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                0.1384455   0.0894000   0.1874910
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.1975313   0.1626836   0.2323789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                0.2053304   0.1007223   0.3099386
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                0.2112785   0.0432115   0.3793454
0-6 months    ki1000108-IRC              INDIA        optimal              NA                0.6477175   0.5016380   0.7937970
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2777609   0.1984085   0.3571134
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.3081969   0.2333487   0.3830451
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.3241433   0.1931239   0.4551627
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                0.1523967   0.1012991   0.2034942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.1633077   0.1335871   0.1930284
6-24 months   ki1000108-IRC              INDIA        optimal              NA                0.2592139   0.1954755   0.3229524
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1418460   0.0726339   0.2110580
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                0.4367984   0.3496474   0.5239493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                0.1015370   0.0741499   0.1289242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                0.2409153   0.1396963   0.3421343


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


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA        observed             optimal           1.3295027   0.7865054   2.247381
0-24 months   ki0047075b-MAL-ED          NEPAL        observed             optimal           1.7789303   0.7906385   4.002579
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.6948799   0.7843324   3.662500
0-24 months   ki1000108-IRC              INDIA        observed             optimal           1.0473355   0.9653751   1.136254
0-24 months   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1058147   0.8566320   1.427481
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.9742450   0.7690410   1.234204
0-24 months   ki1113344-GMS-Nepal        NEPAL        observed             optimal           1.0872903   0.9452767   1.250639
0-24 months   ki1135781-COHORTS          INDIA        observed             optimal           2.4229421   1.7033422   3.446547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.3375988   1.1231127   1.593046
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             optimal           1.5508455   0.9408380   2.556361
0-6 months    ki0047075b-MAL-ED          INDIA        observed             optimal           1.4904198   0.6938774   3.201360
0-6 months    ki1000108-IRC              INDIA        observed             optimal           0.8400539   0.6768585   1.042597
0-6 months    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.9309136   0.7191687   1.205002
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.8389936   0.6727797   1.046272
0-6 months    ki1113344-GMS-Nepal        NEPAL        observed             optimal           0.9121924   0.6235814   1.334381
0-6 months    ki1135781-COHORTS          INDIA        observed             optimal           1.6366409   1.1729367   2.283664
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.1159914   0.9323141   1.335856
6-24 months   ki1000108-IRC              INDIA        observed             optimal           1.2008402   0.9932208   1.451860
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.9271102   0.5884689   1.460627
6-24 months   ki1113344-GMS-Nepal        NEPAL        observed             optimal           1.0826079   0.9068899   1.292373
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   observed             optimal           1.6235766   1.2407921   2.124450
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   observed             optimal           1.0681873   0.7085500   1.610365


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                 0.1191737   -0.0701935   0.3085408
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                 0.1261643   -0.0061916   0.2585203
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.2517083   -0.0263533   0.5297698
0-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0296877   -0.0213009   0.0806763
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0336280   -0.0475123   0.1147682
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0087538   -0.0891252   0.0716176
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0474760   -0.0285498   0.1235018
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                 0.1969999    0.1476250   0.2463748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0666863    0.0319716   0.1014011
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.1131053    0.0102016   0.2160090
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                 0.1036152   -0.0582453   0.2654756
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.1035999   -0.2429237   0.0357239
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0191895   -0.0908843   0.0525053
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0496217   -0.1174448   0.0182014
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                -0.0284622   -0.1519369   0.0950124
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                 0.0970219    0.0459302   0.1481137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0189423   -0.0104975   0.0483821
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0520606    0.0027668   0.1013543
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0103391   -0.0748059   0.0541277
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0360830   -0.0412188   0.1133848
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.0633161    0.0354798   0.0911524
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.0164274   -0.0825287   0.1153834


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA        optimal              NA                 0.2478390   -0.2714471   0.5550376
0-24 months   ki0047075b-MAL-ED          NEPAL        optimal              NA                 0.4378644   -0.2648006   0.7501611
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.4099877   -0.2749696   0.7269625
0-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.0451961   -0.0358668   0.1199154
0-24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0956894   -0.1673624   0.2994654
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0264358   -0.3003207   0.1897610
0-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0802824   -0.0578913   0.2004089
0-24 months   ki1135781-COHORTS          INDIA        optimal              NA                 0.5872786    0.4129189   0.7098545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.2523917    0.1096174   0.3722719
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.3551904   -0.0628822   0.6088189
0-6 months    ki0047075b-MAL-ED          INDIA        optimal              NA                 0.3290481   -0.4411768   0.6876327
0-6 months    ki1000108-IRC              INDIA        optimal              NA                -0.1903998   -0.4774137   0.0408566
0-6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0742136   -0.3904943   0.1701262
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.1919042   -0.4863706   0.0442251
0-6 months    ki1113344-GMS-Nepal        NEPAL        optimal              NA                -0.0962599   -0.6036398   0.2505887
0-6 months    ki1135781-COHORTS          INDIA        optimal              NA                 0.3889924    0.1474391   0.5621072
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.1039358   -0.0725999   0.2514161
6-24 months   ki1000108-IRC              INDIA        optimal              NA                 0.1672497   -0.0068254   0.3112281
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0786205   -0.6993251   0.3153623
6-24 months   ki1113344-GMS-Nepal        NEPAL        optimal              NA                 0.0763046   -0.1026696   0.2262295
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   optimal              NA                 0.3840759    0.1940632   0.5292900
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   optimal              NA                 0.0638346   -0.4113329   0.3790227
