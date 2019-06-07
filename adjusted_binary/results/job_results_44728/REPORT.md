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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        nrooms    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        1     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      135     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       48     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       27     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        1     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      124     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        3     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       20     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       58     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        1     210
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       23     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        2     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       73     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       11     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       72     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       44     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      126     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1        5     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       48     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        4     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        0     236
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   0      138     272
0-24 months   ki0047075b-MAL-ED          PERU                           4+                   1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       18     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       52     272
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     272
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      187     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        9     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       20     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      108     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        2     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       61     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        5     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      142     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       60     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       42     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        9     373
0-24 months   ki1000108-IRC              INDIA                          4+                   0        9     408
0-24 months   ki1000108-IRC              INDIA                          4+                   1        8     408
0-24 months   ki1000108-IRC              INDIA                          1                    0      121     408
0-24 months   ki1000108-IRC              INDIA                          1                    1       64     408
0-24 months   ki1000108-IRC              INDIA                          2                    0      117     408
0-24 months   ki1000108-IRC              INDIA                          2                    1       53     408
0-24 months   ki1000108-IRC              INDIA                          3                    0       22     408
0-24 months   ki1000108-IRC              INDIA                          3                    1       14     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        1     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      475     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       32     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      104     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       57     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        5     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       88     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        7     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      333     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       35     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      175     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       16     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       96     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        8     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      214     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       29     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       11     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       92     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       36     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      111     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       38     602
0-24 months   ki1114097-CONTENT          PERU                           4+                   0       78     215
0-24 months   ki1114097-CONTENT          PERU                           4+                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                    0       44     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       54     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1        0     215
0-24 months   ki1135781-COHORTS          INDIA                          4+                   0      100    5366
0-24 months   ki1135781-COHORTS          INDIA                          4+                   1        6    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     3106    5366
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      405    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1423    5366
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      131    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                    0      184    5366
0-24 months   ki1135781-COHORTS          INDIA                          3                    1       11    5366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      525   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       27   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7244   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      521   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3433   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      255   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1243   13311
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1       63   13311
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0       55    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1        3    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      796    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       61    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      337    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       21    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      151    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1        8    1432
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                   1        0     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      139     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1       13     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       27     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   0      126     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                   1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       58     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       74     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1       10     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       73     235
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        5     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       45     235
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1        3     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   0      126     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                   1        5     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       50     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        2     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       31     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        0     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       22     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        0     236
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   0      138     272
0-6 months    ki0047075b-MAL-ED          PERU                           4+                   1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       19     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       52     272
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1        0     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       62     272
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      194     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        2     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       24     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      108     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       62     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        1     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       64     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        2     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      157     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       42     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       85     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        6     368
0-6 months    ki1000108-IRC              INDIA                          4+                   0       10     408
0-6 months    ki1000108-IRC              INDIA                          4+                   1        7     408
0-6 months    ki1000108-IRC              INDIA                          1                    0      125     408
0-6 months    ki1000108-IRC              INDIA                          1                    1       60     408
0-6 months    ki1000108-IRC              INDIA                          2                    0      123     408
0-6 months    ki1000108-IRC              INDIA                          2                    1       47     408
0-6 months    ki1000108-IRC              INDIA                          3                    0       25     408
0-6 months    ki1000108-IRC              INDIA                          3                    1       11     408
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                   1        1     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      486     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       21     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      105     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1        3     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    0       58     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1        4     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       90     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        5     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      342     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      180     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1       11     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    0       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        8     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   0      260     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1       25     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0       36     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      111     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       17     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0      139     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1       10     602
0-6 months    ki1114097-CONTENT          PERU                           4+                   0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                    0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        0     215
0-6 months    ki1135781-COHORTS          INDIA                          4+                   0       95    5160
0-6 months    ki1135781-COHORTS          INDIA                          4+                   1        5    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     3125    5160
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      253    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1393    5160
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      101    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                    0      180    5160
0-6 months    ki1135781-COHORTS          INDIA                          3                    1        8    5160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      528   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                   1       21   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7384   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      360   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3501   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      169   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0     1252   13262
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1       47   13262
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   0       53    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                   1        1    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      774    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       21    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      322    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1        8    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      148    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1        2    1329
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   0       11     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                   1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      147     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       49     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       28     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   0      124     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       59     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   0       24     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                   1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       83     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       76     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        2     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       47     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   0      131     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       49     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   0      139     270
6-24 months   ki0047075b-MAL-ED          PERU                           4+                   1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       50     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       61     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   0      188     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1        7     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       14     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   0      107     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       12     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       60     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       62     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      182     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       99     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       48     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        3     373
6-24 months   ki1000108-IRC              INDIA                          4+                   0       16     408
6-24 months   ki1000108-IRC              INDIA                          4+                   1        1     408
6-24 months   ki1000108-IRC              INDIA                          1                    0      175     408
6-24 months   ki1000108-IRC              INDIA                          1                    1       10     408
6-24 months   ki1000108-IRC              INDIA                          2                    0      158     408
6-24 months   ki1000108-IRC              INDIA                          2                    1       12     408
6-24 months   ki1000108-IRC              INDIA                          3                    0       33     408
6-24 months   ki1000108-IRC              INDIA                          3                    1        3     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   0       22     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1        0     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      427     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       11     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0       96     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    0       57     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1        1     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   0       89     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1        2     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      335     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    0      182     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1        6     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    0      104     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1        0     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   0      225     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1       53     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       33     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        7     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      104     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       23     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0      115     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1       30     590
6-24 months   ki1114097-CONTENT          PERU                           4+                   0       78     215
6-24 months   ki1114097-CONTENT          PERU                           4+                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                    0       44     215
6-24 months   ki1114097-CONTENT          PERU                           1                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                    0       54     215
6-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                    0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                    1        0     215
6-24 months   ki1135781-COHORTS          INDIA                          4+                   0       93    5016
6-24 months   ki1135781-COHORTS          INDIA                          4+                   1        1    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     3094    5016
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      157    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1456    5016
6-24 months   ki1135781-COHORTS          INDIA                          2                    1       31    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                    0      181    5016
6-24 months   ki1135781-COHORTS          INDIA                          3                    1        3    5016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   0      355    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                   1        6    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4631    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      169    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     2420    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1       89    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      861    8547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1       16    8547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   0       55    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                   1        3    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      815    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       41    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      345    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       13    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      152    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1        6    1430


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/02be113e-6487-4582-863e-2b51bce21b71/8e8e0839-ef4b-4d1b-9c95-a602f3dbae4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02be113e-6487-4582-863e-2b51bce21b71/8e8e0839-ef4b-4d1b-9c95-a602f3dbae4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02be113e-6487-4582-863e-2b51bce21b71/8e8e0839-ef4b-4d1b-9c95-a602f3dbae4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02be113e-6487-4582-863e-2b51bce21b71/8e8e0839-ef4b-4d1b-9c95-a602f3dbae4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.3459459   0.2773172   0.4145747
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.3117647   0.2420477   0.3814817
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.3888889   0.2294469   0.5483308
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0736842   0.0211140   0.1262544
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0951087   0.0651157   0.1251016
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0837696   0.0444541   0.1230851
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0769231   0.0256764   0.1281697
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.2491228   0.1988680   0.2993776
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2750000   0.1365113   0.4134887
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.2812500   0.2032958   0.3592042
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2550336   0.1849876   0.3250795
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                0.0566038   0.0218405   0.0913670
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.1153518   0.1047843   0.1259192
0-24 months   ki1135781-COHORTS       INDIA        2                    NA                0.0842986   0.0704836   0.0981136
0-24 months   ki1135781-COHORTS       INDIA        3                    NA                0.0564103   0.0240254   0.0887951
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0489130   0.0290693   0.0687568
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0670959   0.0606865   0.0735054
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0691432   0.0600861   0.0782002
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0482389   0.0353793   0.0610985
0-6 months    ki1000108-IRC           INDIA        4+                   NA                0.4117647   0.1775271   0.6460023
0-6 months    ki1000108-IRC           INDIA        1                    NA                0.3243243   0.2567854   0.3918632
0-6 months    ki1000108-IRC           INDIA        2                    NA                0.2764706   0.2091560   0.3437852
0-6 months    ki1000108-IRC           INDIA        3                    NA                0.3055556   0.1548971   0.4562140
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.0526316   0.0076996   0.0975636
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0706522   0.0444545   0.0968498
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.0575916   0.0245305   0.0906527
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.0769231   0.0256764   0.1281697
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                0.0500000   0.0168833   0.0831167
0-6 months    ki1135781-COHORTS       INDIA        1                    NA                0.0748964   0.0660190   0.0837738
0-6 months    ki1135781-COHORTS       INDIA        2                    NA                0.0676037   0.0548716   0.0803359
0-6 months    ki1135781-COHORTS       INDIA        3                    NA                0.0425532   0.0136973   0.0714091
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0382514   0.0194782   0.0570245
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0464876   0.0409127   0.0520625
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0460490   0.0387210   0.0533771
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0361817   0.0245669   0.0477965
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.1906475   0.1444330   0.2368620
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1750000   0.0571492   0.2928508
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.1811024   0.1140689   0.2481358
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.2068966   0.1409072   0.2728859
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.0166205   0.0050862   0.0281548
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0352083   0.0294195   0.0409971
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.0354723   0.0269866   0.0439580
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.0182440   0.0090892   0.0273988


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.3406863   0.2946421   0.3867304
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1135781-COHORTS       INDIA        NA                   NA                0.1030563   0.0949208   0.1111918
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0650590   0.0602152   0.0699027
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.3063725   0.2615869   0.3511582
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1135781-COHORTS       INDIA        NA                   NA                0.0711240   0.0641102   0.0781378
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0450158   0.0407987   0.0492330
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0327600   0.0284845   0.0370356


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        1                    4+                0.7351351   0.4273735   1.264523
0-24 months   ki1000108-IRC           INDIA        2                    4+                0.6625000   0.3814169   1.150726
0-24 months   ki1000108-IRC           INDIA        3                    4+                0.8263889   0.4312690   1.583509
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.2907609   0.5916685   2.815873
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.1368736   0.4839859   2.670494
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.0439560   0.3933243   2.770854
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                1.1038732   0.6416764   1.898988
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                1.1289613   0.8013080   1.590591
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0237263   0.7280924   1.439399
0-24 months   ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA        1                    4+                2.0378809   1.0952301   3.791860
0-24 months   ki1135781-COHORTS       INDIA        2                    4+                1.4892750   0.7887145   2.812095
0-24 months   ki1135781-COHORTS       INDIA        3                    4+                0.9965812   0.4299360   2.310051
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.3717393   0.9112515   2.064928
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.4135936   0.9197567   2.172582
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9862175   0.6193401   1.570421
0-6 months    ki1000108-IRC           INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        1                    4+                0.7876448   0.4297768   1.443503
0-6 months    ki1000108-IRC           INDIA        2                    4+                0.6714286   0.3616328   1.246613
0-6 months    ki1000108-IRC           INDIA        3                    4+                0.7420635   0.3495437   1.575363
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    4+                1.3423913   0.5292449   3.404878
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   2                    4+                1.0942408   0.3911333   3.061266
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3                    4+                1.4615385   0.4949003   4.316212
0-6 months    ki1135781-COHORTS       INDIA        4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA        1                    4+                1.4979278   0.7643161   2.935680
0-6 months    ki1135781-COHORTS       INDIA        2                    4+                1.3520750   0.6791251   2.691855
0-6 months    ki1135781-COHORTS       INDIA        3                    4+                0.8510639   0.3298314   2.196000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    4+                1.2153188   0.7365743   2.005228
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    4+                1.2038536   0.7162057   2.023530
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    4+                0.9458924   0.5296878   1.689132
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    4+                0.9179245   0.4487124   1.877785
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    4+                0.9499331   0.6102916   1.478593
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    4+                1.0852310   0.7270070   1.619965
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    4+                2.1183679   1.0407729   4.311683
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    4+                2.1342498   1.0140427   4.491943
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    4+                1.0976814   0.4635737   2.599165


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.1299020   -0.3619624   0.1021585
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133870   -0.0363551   0.0631291
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0100134   -0.0268834   0.0469102
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.0464525    0.0116065   0.0812985
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0161459   -0.0031081   0.0354000
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.1053922   -0.3340857   0.1233014
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.0133315   -0.0293942   0.0560572
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.0211240   -0.0119074   0.0541554
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0067645   -0.0115940   0.0251229
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0008779   -0.0327816   0.0345375
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.0161395    0.0042425   0.0280365


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        4+                   NA                -0.3812950   -1.2631390   0.1569339
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.1537480   -0.6603715   0.5686854
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0386415   -0.1147902   0.1709559
0-24 months   ki1135781-COHORTS       INDIA        4+                   NA                 0.4507489   -0.0116500   0.7017973
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.2481738   -0.1152756   0.4931811
0-6 months    ki1000108-IRC           INDIA        4+                   NA                -0.3440000   -1.3426548   0.2289363
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                 0.2021053   -0.7922758   0.6447890
0-6 months    ki1135781-COHORTS       INDIA        4+                   NA                 0.2970027   -0.3574646   0.6359351
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.1502686   -0.3731912   0.4741859
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                 0.0045839   -0.1876288   0.1656879
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                 0.4926592   -0.0148454   0.7463706
