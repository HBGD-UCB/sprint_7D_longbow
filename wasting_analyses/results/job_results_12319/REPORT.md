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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        nrooms    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      145     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 0       48     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 0       27     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                0        9     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                1        3     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        4     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 0       20     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 0       59     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                0      125     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0       78     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                 0       72     235
0-24 months   ki0047075b-MAL-ED          INDIA                          2                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                 0       42     235
0-24 months   ki0047075b-MAL-ED          INDIA                          3                 1        6     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                0       23     235
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                1        2     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       51     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                 0       31     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                 1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                 0       22     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                 1        0     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                0      129     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                1        2     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       18     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     271
0-24 months   ki0047075b-MAL-ED          PERU                           2                 0       51     271
0-24 months   ki0047075b-MAL-ED          PERU                           2                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           3                 0       62     271
0-24 months   ki0047075b-MAL-ED          PERU                           3                 1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           4+                0      139     271
0-24 months   ki0047075b-MAL-ED          PERU                           4+                1        0     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      193     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       63     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       66     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      108     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      189     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       97     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       50     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        0     373
0-24 months   ki1000108-IRC              INDIA                          1                 0      167     408
0-24 months   ki1000108-IRC              INDIA                          1                 1       18     408
0-24 months   ki1000108-IRC              INDIA                          2                 0      149     408
0-24 months   ki1000108-IRC              INDIA                          2                 1       21     408
0-24 months   ki1000108-IRC              INDIA                          3                 0       30     408
0-24 months   ki1000108-IRC              INDIA                          3                 1        6     408
0-24 months   ki1000108-IRC              INDIA                          4+                0       15     408
0-24 months   ki1000108-IRC              INDIA                          4+                1        2     408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      446     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      329     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      183     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        5     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      104     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       88     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        3     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       34     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        6     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      108     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       20     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      126     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       20     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      239     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       39     592
0-24 months   ki1114097-CONTENT          PERU                           1                 0       44     215
0-24 months   ki1114097-CONTENT          PERU                           1                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                 0       54     215
0-24 months   ki1114097-CONTENT          PERU                           2                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                 0       39     215
0-24 months   ki1114097-CONTENT          PERU                           3                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4+                0       78     215
0-24 months   ki1114097-CONTENT          PERU                           4+                1        0     215
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     2328    4119
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      310    4119
0-24 months   ki1135781-COHORTS          INDIA                          2                 0     1162    4119
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       93    4119
0-24 months   ki1135781-COHORTS          INDIA                          3                 0      142    4119
0-24 months   ki1135781-COHORTS          INDIA                          3                 1        7    4119
0-24 months   ki1135781-COHORTS          INDIA                          4+                0       75    4119
0-24 months   ki1135781-COHORTS          INDIA                          4+                1        2    4119
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8554   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      528   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4099   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      270   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 0     1487   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                 1       70   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                0      633   15669
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                1       28   15669
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2833    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      274    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 0     1239    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 1      107    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 0      518    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 1       32    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                0      263    5279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                1       13    5279
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      148     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 0       48     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                 1        2     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 0       27     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                0       12     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                1        0     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0        4     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                 0       20     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                 0       59     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                0      126     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0       78     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        6     234
0-6 months    ki0047075b-MAL-ED          INDIA                          2                 0       73     234
0-6 months    ki0047075b-MAL-ED          INDIA                          2                 1        5     234
0-6 months    ki0047075b-MAL-ED          INDIA                          3                 0       42     234
0-6 months    ki0047075b-MAL-ED          INDIA                          3                 1        5     234
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                0       23     234
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                1        2     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       52     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 0       31     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                 1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 0       22     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                 1        0     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                0      126     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                1        4     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       19     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 0       51     271
0-6 months    ki0047075b-MAL-ED          PERU                           2                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 0       62     271
0-6 months    ki0047075b-MAL-ED          PERU                           3                 1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           4+                0      139     271
0-6 months    ki0047075b-MAL-ED          PERU                           4+                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       22     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       25     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      191     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       63     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       66     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      108     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      164     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       28     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       85     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                 1       16     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       46     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        5     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        1     358
0-6 months    ki1000108-IRC              INDIA                          1                 0      150     400
0-6 months    ki1000108-IRC              INDIA                          1                 1       30     400
0-6 months    ki1000108-IRC              INDIA                          2                 0      145     400
0-6 months    ki1000108-IRC              INDIA                          2                 1       23     400
0-6 months    ki1000108-IRC              INDIA                          3                 0       29     400
0-6 months    ki1000108-IRC              INDIA                          3                 1        7     400
0-6 months    ki1000108-IRC              INDIA                          4+                0       13     400
0-6 months    ki1000108-IRC              INDIA                          4+                1        3     400
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      445     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       10     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0       98     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 0       59     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                 1        0     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                0       21     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                1        1     637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       33     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        5     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      100     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       15     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 0      124     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                 1       12     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                0      220     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                1       33     542
0-6 months    ki1114097-CONTENT          PERU                           1                 0       44     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                 0       54     215
0-6 months    ki1114097-CONTENT          PERU                           2                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                 0       39     215
0-6 months    ki1114097-CONTENT          PERU                           3                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4+                0       78     215
0-6 months    ki1114097-CONTENT          PERU                           4+                1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      139     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       11     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 0       43     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                 1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 0       26     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                 1        1     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                0        9     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                1        2     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        3     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 0       18     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                 1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 0       58     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                 1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                0      116     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                1        2     197
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0       74     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        9     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                 0       68     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                 1        8     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                 0       39     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                 1        8     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                0       23     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       48     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                 0       31     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                 1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                 0       22     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                 1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                0      128     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                1        1     231
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       18     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                 0       46     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                 1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                 0       54     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                 1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           4+                0      131     251
6-24 months   ki0047075b-MAL-ED          PERU                           4+                1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       14     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 0       20     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                 1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 0       24     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                 1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                0      193     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                1        2     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       11     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 0       58     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 0       63     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                0      106     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      185     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       17     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 0       97     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                 1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 0       49     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                 1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                1        0     373
6-24 months   ki1000108-IRC              INDIA                          1                 0      168     408
6-24 months   ki1000108-IRC              INDIA                          1                 1       17     408
6-24 months   ki1000108-IRC              INDIA                          2                 0      148     408
6-24 months   ki1000108-IRC              INDIA                          2                 1       22     408
6-24 months   ki1000108-IRC              INDIA                          3                 0       30     408
6-24 months   ki1000108-IRC              INDIA                          3                 1        6     408
6-24 months   ki1000108-IRC              INDIA                          4+                0       15     408
6-24 months   ki1000108-IRC              INDIA                          4+                1        2     408
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      396     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       30     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       91     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        5     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 0       54     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                 1        3     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                0       22     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                1        0     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      298     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       27     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      170     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1       10     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 0      101     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                 1        1     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                0       86     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                1        4     697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       31     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        8     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      102     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       22     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 0      120     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                 1       24     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                0      217     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                1       53     577
6-24 months   ki1114097-CONTENT          PERU                           1                 0       44     215
6-24 months   ki1114097-CONTENT          PERU                           1                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                 0       54     215
6-24 months   ki1114097-CONTENT          PERU                           2                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                 0       39     215
6-24 months   ki1114097-CONTENT          PERU                           3                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4+                0       78     215
6-24 months   ki1114097-CONTENT          PERU                           4+                1        0     215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2639    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      346    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 0     1155    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                 1      133    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 0      480    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                 1       43    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                0      243    5055
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                1       16    5055


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3c37a1e1-7207-4091-a067-f4dbde90985d/a15495b5-23cd-4e73-b515-c590b6f645b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3c37a1e1-7207-4091-a067-f4dbde90985d/a15495b5-23cd-4e73-b515-c590b6f645b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3c37a1e1-7207-4091-a067-f4dbde90985d/a15495b5-23cd-4e73-b515-c590b6f645b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3c37a1e1-7207-4091-a067-f4dbde90985d/a15495b5-23cd-4e73-b515-c590b6f645b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500000   0.0392509   0.2607491
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1562500   0.0932954   0.2192046
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1369863   0.0811668   0.1928058
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1402878   0.0994296   0.1811460
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0581370   0.0530348   0.0632392
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0617990   0.0539441   0.0696540
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0449583   0.0334317   0.0564849
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0423601   0.0226194   0.0621007
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0881880   0.0761297   0.1002462
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0794948   0.0638349   0.0951547
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0581818   0.0339166   0.0824471
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0471014   0.0069495   0.0872534
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1315789   0.0240029   0.2391550
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1304348   0.0688252   0.1920443
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0882353   0.0405217   0.1359489
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1304348   0.0888976   0.1719719
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2051282   0.0782889   0.3319675
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1774194   0.1101211   0.2447176
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1666667   0.1057442   0.2275891
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1962963   0.1488779   0.2437147
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1159129   0.1013090   0.1305168
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.1032609   0.0856542   0.1208675
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0822180   0.0549166   0.1095194
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0617761   0.0152101   0.1083420


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0571830   0.0530902   0.0612758
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1064293   0.0958239   0.1170346


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        2                    1                 1.0416667   0.4492003   2.415558
0-24 months   ki1113344-GMS-Nepal   NEPAL        3                    1                 0.9132420   0.3929539   2.122414
0-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.9352518   0.4228937   2.068359
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.0629903   0.9165995   1.232761
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.7733160   0.5929971   1.008466
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.7286252   0.4515037   1.175837
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.9014246   0.7076040   1.148335
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.6597478   0.4243256   1.025786
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.5341029   0.2244689   1.270849
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        2                    1                 0.9913043   0.3856030   2.548436
0-6 months    ki1113344-GMS-Nepal   NEPAL        3                    1                 0.6705882   0.2516216   1.787162
0-6 months    ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.9913043   0.4122431   2.383749
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        2                    1                 0.8649194   0.4187277   1.786568
6-24 months   ki1113344-GMS-Nepal   NEPAL        3                    1                 0.8125000   0.3961573   1.666400
6-24 months   ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.9569444   0.4926963   1.858635
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.8908488   0.7224200   1.098546
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.7093082   0.5015103   1.003206
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.5329524   0.2473932   1.148125


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0064189   -0.1132232    0.1003854
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009540   -0.0041847    0.0022767
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0074909   -0.0147128   -0.0002689
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0116527   -0.1150902    0.0917847
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0196863   -0.1418369    0.1024643
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0094836   -0.0175616   -0.0014057


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0447059   -1.1291685    0.4874007
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0166833   -0.0748486    0.0383344
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0928269   -0.1850306   -0.0077973
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0971660   -1.4077031    0.5000325
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1061586   -1.0062454    0.3901110
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0891072   -0.1662842   -0.0170373
