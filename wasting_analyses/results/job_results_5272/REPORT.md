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
![](/tmp/84d0edd2-f21d-427a-be0d-241a77b4c28d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84d0edd2-f21d-427a-be0d-241a77b4c28d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84d0edd2-f21d-427a-be0d-241a77b4c28d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84d0edd2-f21d-427a-be0d-241a77b4c28d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3482341   0.3067709   0.3896973
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    NA                0.3148341   0.2307953   0.3988728
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    NA                0.3919376   0.2824106   0.5014647
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   NA                0.4372523   0.2577242   0.6167804
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3346875   0.2873978   0.3819773
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2983736   0.2364653   0.3602818
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2799352   0.1989334   0.3609371
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.2541031   0.1736693   0.3345368
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.6531716   0.5053013   0.8010418
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.5334957   0.4474522   0.6195393
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.6125958   0.5341998   0.6909919
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.5973990   0.5406246   0.6541734
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.3622369   0.3463993   0.3780745
0-24 months   ki1135781-COHORTS          INDIA        2                    NA                0.2960254   0.2733968   0.3186540
0-24 months   ki1135781-COHORTS          INDIA        3                    NA                0.2161622   0.1644486   0.2678758
0-24 months   ki1135781-COHORTS          INDIA        4+                   NA                0.1222346   0.0729685   0.1715007
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2680395   0.2597580   0.2763210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.2562066   0.2448632   0.2675499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.2396026   0.2226468   0.2565584
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.2212801   0.1981478   0.2444124
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.3238712   0.3046262   0.3431162
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.3055481   0.2791887   0.3319075
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2859209   0.2421451   0.3296966
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.2754598   0.2012066   0.3497130
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2461188   0.2027221   0.2895154
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.2104198   0.1537790   0.2670605
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.2109275   0.1338241   0.2880310
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.1882007   0.1128004   0.2636009
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2750000   0.1365113   0.4134887
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    NA                0.2656250   0.1890481   0.3422019
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    NA                0.3087248   0.2344867   0.3829630
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.3052632   0.2517533   0.3587730
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                0.2608989   0.2461805   0.2756173
0-6 months    ki1135781-COHORTS          INDIA        2                    NA                0.2326067   0.2113462   0.2538672
0-6 months    ki1135781-COHORTS          INDIA        3                    NA                0.1817862   0.1325581   0.2310142
0-6 months    ki1135781-COHORTS          INDIA        4+                   NA                0.1261888   0.0745408   0.1778369
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1840884   0.1767716   0.1914051
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1743352   0.1645693   0.1841012
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1642592   0.1490464   0.1794720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1737493   0.1518622   0.1956363
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1070513   0.0947216   0.1193811
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.1031032   0.0851494   0.1210569
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.1189382   0.0846964   0.1531799
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1148502   0.0655586   0.1641418
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   ki1000108-IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   ki1000108-IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   ki1000108-IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.5512581   0.4128427   0.6896734
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    NA                0.4213505   0.3395233   0.5031778
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    NA                0.4781442   0.4003991   0.5558893
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   NA                0.4605563   0.4032402   0.5178723
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1709625   0.1630611   0.1788639
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    NA                0.1641656   0.1525622   0.1757691
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    NA                0.1462629   0.1293790   0.1631467
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   NA                0.1193154   0.0988639   0.1397668
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2634662   0.2450424   0.2818900
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    NA                0.2419638   0.2176888   0.2662389
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    NA                0.2054868   0.1665092   0.2444644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   NA                0.1887381   0.1166462   0.2608300


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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   2                    1                 0.9040873   0.6754623   1.2100955
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3                    1                 1.1255003   0.8317089   1.5230701
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4+                   1                 1.2556274   0.8191447   1.9246908
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8914989   0.6935368   1.1459671
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.8364077   0.6060235   1.1543743
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.7592248   0.5367611   1.0738900
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.8167774   0.6186209   1.0784073
0-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 0.9378789   0.7231193   1.2164201
0-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 0.9146127   0.7155961   1.1689784
0-24 months   ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA        2                    1                 0.8172150   0.7483280   0.8924434
0-24 months   ki1135781-COHORTS          INDIA        3                    1                 0.5967426   0.4679164   0.7610371
0-24 months   ki1135781-COHORTS          INDIA        4+                   1                 0.3374438   0.2249718   0.5061446
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9558537   0.9082280   1.0059767
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8939078   0.8276530   0.9654664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.8255505   0.7404759   0.9203993
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9434248   0.8494143   1.0478401
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.8828229   0.7498042   1.0394397
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.8505227   0.6453660   1.1208972
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8549521   0.6202061   1.1785488
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.8570152   0.5714880   1.2851977
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.7646741   0.4938885   1.1839242
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        2                    1                 0.9659091   0.5406622   1.7256252
0-6 months    ki1113344-GMS-Nepal        NEPAL        3                    1                 1.1226358   0.6425039   1.9615616
0-6 months    ki1113344-GMS-Nepal        NEPAL        4+                   1                 1.1100478   0.6512720   1.8919993
0-6 months    ki1135781-COHORTS          INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA        2                    1                 0.8915586   0.8008714   0.9925149
0-6 months    ki1135781-COHORTS          INDIA        3                    1                 0.6967686   0.5284242   0.9187438
0-6 months    ki1135781-COHORTS          INDIA        4+                   1                 0.4836695   0.3199800   0.7310962
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9470193   0.8872223   1.0108464
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8922845   0.8069617   0.9866289
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.9438362   0.8288110   1.0748250
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9631189   0.7836761   1.1836497
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   3                    1                 1.1110386   0.8118499   1.5204864
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 1.0728517   0.6871137   1.6751387
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        2                    1                 1.3602941   0.9900393   1.8690168
6-24 months   ki1000108-IRC              INDIA        3                    1                 1.1776620   0.6794373   2.0412300
6-24 months   ki1000108-IRC              INDIA        4+                   1                 1.8137255   1.0354155   3.1770821
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   2                    1                 0.8706343   0.5598926   1.3538382
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3                    1                 0.6295356   0.3320585   1.1935096
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4+                   1                 0.5755755   0.2837855   1.1673854
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        2                    1                 0.7643435   0.5567323   1.0493752
6-24 months   ki1113344-GMS-Nepal        NEPAL        3                    1                 0.8673691   0.6435502   1.1690295
6-24 months   ki1113344-GMS-Nepal        NEPAL        4+                   1                 0.8354640   0.6315816   1.1051621
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   2                    1                 0.9602436   0.8837995   1.0432997
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   3                    1                 0.8555261   0.7571528   0.9666804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   4+                   1                 0.6979037   0.5824649   0.8362214
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   2                    1                 0.9183865   0.8122834   1.0383492
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   3                    1                 0.7799360   0.6371165   0.9547707
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   4+                   1                 0.7163654   0.4859281   1.0560811


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0072442   -0.0930916    0.0786032
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.1157106   -0.2312229   -0.0001983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0543758   -0.1001608   -0.0085908
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0298357   -0.0209656    0.0806370
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0031944   -0.0181986    0.0245875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0035530   -0.0371863    0.0300804
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0618094   -0.2049475    0.0813287
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0267915   -0.0357979   -0.0177851
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0098335   -0.0150883   -0.0045787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0112349   -0.0231717    0.0007019
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0065350   -0.0865200    0.0734501
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0089825   -0.0441544    0.0621194
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0041336   -0.0160635    0.0243306
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0124564   -0.0184016    0.0433144
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0206811   -0.1133395    0.1547017
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0114803   -0.0198429   -0.0031178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0077756   -0.0123992   -0.0031520
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0007590   -0.0075965    0.0091145
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0518151    0.0028666    0.1007635
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0212309   -0.0471652    0.0047034
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0783767   -0.2120519    0.0552985
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0070870   -0.0122910   -0.0018829
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0154822   -0.0266576   -0.0043068


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA        1                    NA                -0.0150653   -0.2102721    0.1486562
0-24 months   ki0047075b-MAL-ED          NEPAL        1                    NA                -0.4015837   -0.8671485   -0.0521053
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0885685   -0.1666538   -0.0157095
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0454215   -0.0353262    0.1198716
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0090899   -0.0537064    0.0681438
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0107296   -0.1175951    0.0859173
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1045204   -0.3753913    0.1130048
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                -0.0798684   -0.1070899   -0.0533162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0380839   -0.0586713   -0.0178969
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0359360   -0.0747804    0.0015045
0-6 months    ki0047075b-MAL-ED          INDIA        1                    NA                -0.0207529   -0.3091538    0.2041146
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0165084   -0.0861781    0.1094870
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0159861   -0.0652990    0.0910690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0481733   -0.0789866    0.1603472
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.0699438   -0.5140951    0.4286987
0-6 months    ki1135781-COHORTS          INDIA        1                    NA                -0.0460283   -0.0800895   -0.0130412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0441013   -0.0706830   -0.0181795
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                 0.0070402   -0.0735088    0.0815454
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1664609   -0.0060540    0.3093936
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1614433   -0.3746120    0.0186681
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1657429   -0.4866564    0.0858974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                -0.0432460   -0.0755898   -0.0118747
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                -0.0624321   -0.1082611   -0.0184983
