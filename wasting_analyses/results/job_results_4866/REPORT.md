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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       28    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       52    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      118    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      138    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0      116    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1      182    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      230    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      340    1204
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    23545   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     8320   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0    10690   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     3795   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     3895   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1     1293   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0     1780   53802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      484   53802
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4198   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     2014   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0     1872   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      818   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      781   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      312   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      400   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1      154   10549
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       58    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       22    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      188    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       68    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0      206    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       92    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0      396    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1      174    1204
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    26120   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     5682   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0    11890   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     2544   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     4298   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      874   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0     1896   53666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      362   53666
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     5344   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      642   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0     2324   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1      264   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      934   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1      126   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      468   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       64   10166
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       34    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       46    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      142    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      112    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0      148    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1      142    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      298    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      258    1180
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    16405   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3354   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     8120   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1615   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2979   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      523   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0     1354   34514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      164   34514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4572   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1638   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0     2040   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      648   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      867   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      224   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      448   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1      104   10541


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
![](/tmp/279a3baa-aff0-4bfd-963b-5bd48bb24b00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/279a3baa-aff0-4bfd-963b-5bd48bb24b00/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/279a3baa-aff0-4bfd-963b-5bd48bb24b00/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/279a3baa-aff0-4bfd-963b-5bd48bb24b00/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3475911   0.3060321   0.3891501
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3203344   0.2340757   0.4065931
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.4002834   0.2849139   0.5156529
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4539273   0.2554296   0.6524250
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3337768   0.2873208   0.3802328
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2972225   0.2379590   0.3564860
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2812621   0.2050324   0.3574918
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2474480   0.1727602   0.3221358
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5758703   0.4263369   0.7254036
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4980659   0.4133212   0.5828106
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.5889931   0.5111535   0.6668327
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.5896908   0.5330521   0.6463296
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3622142   0.3463766   0.3780518
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2960119   0.2733834   0.3186405
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2162106   0.1644977   0.2679236
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1223757   0.0731101   0.1716413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2680179   0.2597554   0.2762805
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2562477   0.2449219   0.2675736
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2397478   0.2228498   0.2566459
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.2213550   0.1982795   0.2444305
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3238711   0.3046262   0.3431161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3055484   0.2791891   0.3319077
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2859209   0.2421449   0.3296969
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2754596   0.2012045   0.3497146
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2444275   0.2013800   0.2874750
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2073488   0.1518095   0.2628882
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2086252   0.1339921   0.2832584
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.1828640   0.1106644   0.2550637
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2462576   0.1081789   0.3843364
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.2523429   0.1758144   0.3288714
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.2994372   0.2253294   0.3735449
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.3024637   0.2489860   0.3559414
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2608989   0.2461805   0.2756173
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2326061   0.2113455   0.2538668
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1817855   0.1325579   0.2310131
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1261864   0.0745396   0.1778333
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1840946   0.1767749   0.1914142
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1743314   0.1645634   0.1840995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1642434   0.1490225   0.1794644
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1737539   0.1518592   0.1956487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1070512   0.0947214   0.1193809
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.1031045   0.0851509   0.1210581
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.1189389   0.0846975   0.1531804
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1148410   0.0655514   0.1641305
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5454914   0.3936422   0.6973405
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4250023   0.3392369   0.5107677
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4802243   0.3990730   0.5613755
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4619511   0.4036098   0.5202925
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1709625   0.1630611   0.1788639
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1641659   0.1525625   0.1757693
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1462647   0.1293811   0.1631483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1193177   0.0988682   0.1397671
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2635254   0.2450989   0.2819519
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2423136   0.2180219   0.2666053
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2064193   0.1673932   0.2454453
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1905412   0.1184306   0.2626518


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2582060   0.2517361   0.2646759
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3126363   0.2981271   0.3271455
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1638755   0.1577484   0.1700026
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2479841   0.2343635   0.2616046


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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    1                 0.9215839   0.6869613   1.2363389
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    1                 1.1515927   0.8441893   1.5709340
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   1                 1.3059231   0.8302891   2.0540259
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8904829   0.6982064   1.1357097
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.8426653   0.6212092   1.1430686
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.7413577   0.5316462   1.0337914
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.8648926   0.6340671   1.1797476
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 1.0227878   0.7642332   1.3688164
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 1.0239994   0.7763860   1.3505844
0-24 months   ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        2                    1                 0.8172289   0.7483375   0.8924624
0-24 months   ki1135781-COHORTS          INDIA        3                    1                 0.5969137   0.4680764   0.7612131
0-24 months   ki1135781-COHORTS          INDIA        4+                   1                 0.3378545   0.2253506   0.5065248
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9560843   0.9085459   1.0061100
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8945216   0.8284699   0.9658394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.8258962   0.7410073   0.9205100
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9434259   0.8494156   1.0478410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.8828231   0.7498039   1.0394407
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.8505221   0.6453613   1.1209036
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8483041   0.6156855   1.1688108
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.8535260   0.5728387   1.2717484
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.7481320   0.4855120   1.1528068
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    1                 1.0247110   0.5416515   1.9385760
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    1                 1.2159508   0.6588251   2.2442017
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   1                 1.2282409   0.6821420   2.2115274
0-6 months    ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        2                    1                 0.8915566   0.8008688   0.9925135
0-6 months    ki1135781-COHORTS          INDIA        3                    1                 0.6967660   0.5284229   0.9187392
0-6 months    ki1135781-COHORTS          INDIA        4+                   1                 0.4836604   0.3199746   0.7310809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9469668   0.8871538   1.0108125
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8921688   0.8068074   0.9865616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.9438297   0.8287715   1.0748614
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9631330   0.7836901   1.1836632
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    1                 1.1110477   0.8118593   1.5204936
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 1.0727670   0.6870490   1.6750321
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        2                    1                 1.3602941   0.9900393   1.8690168
6-24 months   ki1000108-IRC              INDIA        3                    1                 1.1776620   0.6794373   2.0412300
6-24 months   ki1000108-IRC              INDIA        4+                   1                 1.8137255   1.0354155   3.1770821
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8706343   0.5598926   1.3538382
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.6295356   0.3320585   1.1935096
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.5755755   0.2837855   1.1673854
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.7791182   0.5524698   1.0987482
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 0.8803517   0.6357150   1.2191300
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 0.8468532   0.6238789   1.1495185
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9602448   0.8838013   1.0433003
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8555367   0.7571643   0.9666899
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.6979172   0.5824875   0.8362213
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9195075   0.8133255   1.0395519
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.7832992   0.6402847   0.9582576
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.7230469   0.4921834   1.0621991


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0072442   -0.0930916    0.0786032
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.1157106   -0.2312229   -0.0001983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0543758   -0.1001608   -0.0085908
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0298357   -0.0209656    0.0806370
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0038374   -0.0175355    0.0252103
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0026422   -0.0357405    0.0304561
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0154919   -0.1294230    0.1604067
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0267688   -0.0357752   -0.0177625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0098119   -0.0150398   -0.0045840
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0112349   -0.0231716    0.0007019
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0065350   -0.0865200    0.0734501
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0089825   -0.0441544    0.0621194
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0041336   -0.0160635    0.0243306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0141477   -0.0165997    0.0448951
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0494234   -0.0842523    0.1830992
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0114803   -0.0198429   -0.0031177
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0077818   -0.0124090   -0.0031546
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0007592   -0.0075962    0.0091146
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0518151    0.0028666    0.1007635
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0212309   -0.0471652    0.0047034
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0726100   -0.2193139    0.0740939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0070870   -0.0122910   -0.0018830
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0155414   -0.0267200   -0.0043627


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0150653   -0.2102721    0.1486562
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.4015837   -0.8671485   -0.0521053
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0885685   -0.1666538   -0.0157095
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0454215   -0.0353262    0.1198716
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0109195   -0.0518307    0.0699262
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0079793   -0.1130857    0.0872021
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0261969   -0.2524182    0.2428308
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0798008   -0.1070221   -0.0532489
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0380003   -0.0584822   -0.0179149
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0359359   -0.0747802    0.0015045
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0207529   -0.3091538    0.2041146
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0165084   -0.0861781    0.1094870
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0159861   -0.0652990    0.0910690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0547141   -0.0719528    0.1664134
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.1671512   -0.4335430    0.5161379
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0460282   -0.0800895   -0.0130410
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0441364   -0.0707391   -0.0181947
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0070419   -0.0735068    0.0815468
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1664609   -0.0060540    0.3093936
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1614433   -0.3746120    0.0186681
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1535481   -0.5099955    0.1187568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0432461   -0.0755898   -0.0118751
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0626708   -0.1085129   -0.0187245
