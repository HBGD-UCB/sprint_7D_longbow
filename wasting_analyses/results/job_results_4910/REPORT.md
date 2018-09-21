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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        nrooms    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       32     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       61     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        9     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        2     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        6     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        3     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1     121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        3      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1       12      23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       27     173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       38     173
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       23     173
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       41     173
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       14     173
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1       18     173
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        3     173
0-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        9     173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       23      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        1      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        5      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        6      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0       14      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       39      92
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1      33
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        2      33
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0      33
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1        3      33
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1      33
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1        8      33
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4      33
0-24 months   ki0047075b-MAL-ED          PERU                           4+                  1       14      33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        3      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        8      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0       12      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       49      77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       16      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        5      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        7      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        1      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1       13      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       75     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1      126     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       32     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       54     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       11     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       22     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        4     326
0-24 months   ki1000108-IRC              INDIA                          1                   0       66     394
0-24 months   ki1000108-IRC              INDIA                          1                   1       96     394
0-24 months   ki1000108-IRC              INDIA                          2                   0       70     394
0-24 months   ki1000108-IRC              INDIA                          2                   1      110     394
0-24 months   ki1000108-IRC              INDIA                          3                   0       14     394
0-24 months   ki1000108-IRC              INDIA                          3                   1       18     394
0-24 months   ki1000108-IRC              INDIA                          4+                  0       11     394
0-24 months   ki1000108-IRC              INDIA                          4+                  1        9     394
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      101     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      121     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       11     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       29     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0       12     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1       20     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        4     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        9     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       68     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       95     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       26     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       48     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       12     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       27     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0       11     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       24     311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       34    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       56    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0      116    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       98    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0      114    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1      164    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      272    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      268    1122
0-24 months   ki1114097-CONTENT          PERU                           1                   0        0       9
0-24 months   ki1114097-CONTENT          PERU                           1                   1        2       9
0-24 months   ki1114097-CONTENT          PERU                           2                   0        1       9
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2       9
0-24 months   ki1114097-CONTENT          PERU                           3                   0        0       9
0-24 months   ki1114097-CONTENT          PERU                           3                   1        1       9
0-24 months   ki1114097-CONTENT          PERU                           4+                  0        1       9
0-24 months   ki1114097-CONTENT          PERU                           4+                  1        2       9
0-24 months   ki1135781-COHORTS          INDIA                          1                   0     1079    1959
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      319    1959
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      373    1959
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      125    1959
0-24 months   ki1135781-COHORTS          INDIA                          3                   0       34    1959
0-24 months   ki1135781-COHORTS          INDIA                          3                   1       12    1959
0-24 months   ki1135781-COHORTS          INDIA                          4+                  0       13    1959
0-24 months   ki1135781-COHORTS          INDIA                          4+                  1        4    1959
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5322   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3716   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2363   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1796   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      779   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      620   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      264   15122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      262   15122
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1864    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      636    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      743    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      248    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      269    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      107    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0      112    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       66    4045
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        8      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       35      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0        2      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        5      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0        1      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        6      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  0        1      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4+                  1        1      59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        2      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        3      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4+                  1        8      14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        6      78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       23      78
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0        5      78
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1       19      78
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0        9      78
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1       11      78
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  0        2      78
0-6 months    ki0047075b-MAL-ED          INDIA                          4+                  1        3      78
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        2      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  0        5      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          4+                  1       20      42
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        1      10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        1      10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        1      10
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           4+                  1        7      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        3      27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       17      27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        2      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        4      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       38     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       77     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       37     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        5     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       20     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        2     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        3     203
0-6 months    ki1000108-IRC              INDIA                          1                   0       42     239
0-6 months    ki1000108-IRC              INDIA                          1                   1       66     239
0-6 months    ki1000108-IRC              INDIA                          2                   0       30     239
0-6 months    ki1000108-IRC              INDIA                          2                   1       70     239
0-6 months    ki1000108-IRC              INDIA                          3                   0       10     239
0-6 months    ki1000108-IRC              INDIA                          3                   1       10     239
0-6 months    ki1000108-IRC              INDIA                          4+                  0        4     239
0-6 months    ki1000108-IRC              INDIA                          4+                  1        7     239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       31     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1      101     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0        4     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       22     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   0        3     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3                   1       15     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  0        1     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     4+                  1        7     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       12     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       85     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   0        4     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                   1       43     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   0        2     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                   1       26     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        3     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1       23     198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       14     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       10     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       36     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       32     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   0       22     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                   1       70     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  0       78     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4+                  1       98     360
0-6 months    ki1114097-CONTENT          PERU                           1                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1       4
0-6 months    ki1114097-CONTENT          PERU                           2                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0       4
0-6 months    ki1114097-CONTENT          PERU                           3                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           3                   1        1       4
0-6 months    ki1114097-CONTENT          PERU                           4+                  0        0       4
0-6 months    ki1114097-CONTENT          PERU                           4+                  1        2       4
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      568    1287
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      319    1287
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      227    1287
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      125    1287
0-6 months    ki1135781-COHORTS          INDIA                          3                   0       22    1287
0-6 months    ki1135781-COHORTS          INDIA                          3                   1       12    1287
0-6 months    ki1135781-COHORTS          INDIA                          4+                  0       10    1287
0-6 months    ki1135781-COHORTS          INDIA                          4+                  1        4    1287
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1968    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3716    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      748    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1796    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0      256    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      620    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      100    9466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+                  1      262    9466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      288    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      354    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      122    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1      142    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0       52    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       74    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       22    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       42    1096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       24      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       26      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        5      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        4      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0        1      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1        0      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  0        2      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4+                  1        0      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0        1       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  0        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4+                  1        4       9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       21      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       15      95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       18      95
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1       22      95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0        5      95
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        7      95
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  0        1      95
6-24 months   ki0047075b-MAL-ED          INDIA                          4+                  1        6      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        2      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1       14      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0        0      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        4      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0        0      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  0        9      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          4+                  1       19      50
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0        0      23
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        2      23
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0        1      23
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        7      23
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  0        4      23
6-24 months   ki0047075b-MAL-ED          PERU                           4+                  1        7      23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        3      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        2      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  0        9      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                  1       32      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        2      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        4      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        5      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  0        1      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                  1        9      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       37     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       49     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       11     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       17     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        6     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  0        0     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                  1        1     123
6-24 months   ki1000108-IRC              INDIA                          1                   0       24     155
6-24 months   ki1000108-IRC              INDIA                          1                   1       30     155
6-24 months   ki1000108-IRC              INDIA                          2                   0       40     155
6-24 months   ki1000108-IRC              INDIA                          2                   1       40     155
6-24 months   ki1000108-IRC              INDIA                          3                   0        4     155
6-24 months   ki1000108-IRC              INDIA                          3                   1        8     155
6-24 months   ki1000108-IRC              INDIA                          4+                  0        7     155
6-24 months   ki1000108-IRC              INDIA                          4+                  1        2     155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       70     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       20     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0        7     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1        7     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   0        9     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                   1        5     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  0        3     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                  1        2     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       56     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       10     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   0       22     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                   1        5     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   0       10     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                   1        1     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  0        8     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                  1        1     113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       20     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       46     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       80     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       66     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   0       92     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                   1       94     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  0      194     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4+                  1      170     762
6-24 months   ki1114097-CONTENT          PERU                           1                   0        0       5
6-24 months   ki1114097-CONTENT          PERU                           1                   1        1       5
6-24 months   ki1114097-CONTENT          PERU                           2                   0        1       5
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2       5
6-24 months   ki1114097-CONTENT          PERU                           3                   0        0       5
6-24 months   ki1114097-CONTENT          PERU                           3                   1        0       5
6-24 months   ki1114097-CONTENT          PERU                           4+                  0        1       5
6-24 months   ki1114097-CONTENT          PERU                           4+                  1        0       5
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      511     672
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0     672
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      146     672
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0     672
6-24 months   ki1135781-COHORTS          INDIA                          3                   0       12     672
6-24 months   ki1135781-COHORTS          INDIA                          3                   1        0     672
6-24 months   ki1135781-COHORTS          INDIA                          4+                  0        3     672
6-24 months   ki1135781-COHORTS          INDIA                          4+                  1        0     672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3354    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1615    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      523    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1        0    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  0      164    5656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+                  1        0    5656
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1576    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      282    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      621    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      106    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      217    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       33    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  0       90    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+                  1       24    2949


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0ab88603-bbc8-4960-89b2-bbd1325231fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ab88603-bbc8-4960-89b2-bbd1325231fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ab88603-bbc8-4960-89b2-bbd1325231fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ab88603-bbc8-4960-89b2-bbd1325231fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.5886794   0.5175627   0.6597961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.6733681   0.5736997   0.7730365
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.7161341   0.5850867   0.8471816
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.6890208   0.5463989   0.8316426
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6319540   0.5083756   0.7555324
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4597392   0.3676600   0.5518183
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5974025   0.5097482   0.6850569
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4965681   0.4344036   0.5587326
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4075142   0.3937892   0.4212392
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.4311236   0.4109326   0.4513145
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.4084684   0.3783693   0.4385674
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.4735775   0.4399674   0.5071876
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2543990   0.2306150   0.2781830
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.2502564   0.2112254   0.2892875
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.2845711   0.2152574   0.3538849
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.3707833   0.2617614   0.4798053
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3925415   0.1586586   0.6264244
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4720285   0.3129273   0.6311298
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    NA                0.7648584   0.6415515   0.8881652
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5552401   0.4522743   0.6582059
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6552406   0.6387672   0.6717139
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.6939887   0.6716344   0.7163431
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.6903733   0.6619419   0.7188048
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.6803559   0.6463378   0.7143740
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5504983   0.4960893   0.6049073
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.5372039   0.4526380   0.6217697
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.5796816   0.4604925   0.6988707
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.5916711   0.4452497   0.7380926
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6621087   0.5033333   0.8208841
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4027379   0.2848413   0.5206346
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.4816291   0.3706422   0.5926160
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4545749   0.3800522   0.5290975
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1518611   0.1304645   0.1732577
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1462655   0.1098122   0.1827188
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1327867   0.0699013   0.1956721
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.2120513   0.1001667   0.3239358


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5913706   0.5391835   0.6435576
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4228277   0.4116994   0.4339560
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2613103   0.2419607   0.2806599
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6754701   0.6621313   0.6888089
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1508986   0.1332882   0.1685090


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC           INDIA        2                    1                 1.0312500   0.8580769   1.2393722
0-24 months   ki1000108-IRC           INDIA        3                    1                 0.9492188   0.6232698   1.4456279
0-24 months   ki1000108-IRC           INDIA        4+                   1                 0.7593750   0.4733474   1.2182394
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    1                 1.1438621   0.9468577   1.3818555
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    1                 1.2165096   0.9794387   1.5109629
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   1                 1.1704517   0.9245608   1.4817383
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    1                 0.7274883   0.5497359   0.9627154
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    1                 0.9453259   0.7401755   1.2073369
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   1                 0.7857662   0.6228802   0.9912477
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    1                 1.0579351   0.9992322   1.1200866
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    1                 1.0023414   0.9246910   1.0865125
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   1                 1.1621129   1.0746235   1.2567253
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9837165   0.8201323   1.1799293
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    1                 1.1186018   0.8617465   1.4520162
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.4574876   1.0705696   1.9842429
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    1                 1.2024933   0.6092454   2.3734117
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    1                 1.9484777   1.0512411   3.6115080
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   1                 1.4144749   0.7581980   2.6388083
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    1                 1.0591358   1.0171133   1.1028946
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    1                 1.0536181   1.0044488   1.1051944
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   1                 1.0383299   0.9822201   1.0976451
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9758502   0.8103507   1.1751500
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    1                 1.0530126   0.8380541   1.3231073
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.0747920   0.8233393   1.4030398
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    1                 0.6082655   0.4166240   0.8880596
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    1                 0.7274169   0.5216256   1.0143969
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   1                 0.6865562   0.5133630   0.9181795
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9631536   0.7233352   1.2824826
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    1                 0.8743958   0.5334940   1.4331333
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.3963505   0.8087670   2.4108236


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                -0.0012220   -0.0643943    0.0619503
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0351148   -0.0133780    0.0836076
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1096724   -0.2302149    0.0108702
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0153135    0.0063149    0.0243121
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0069113   -0.0085952    0.0224178
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1907918   -0.0356627    0.4172463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0202296    0.0097337    0.0307254
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0078959   -0.0270700    0.0428618
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1686704   -0.3221086   -0.0152323
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0009624   -0.0147883    0.0128634


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                -0.0020664   -0.1147791    0.0992501
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0562923   -0.0246944    0.1308782
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2099871   -0.4676777    0.0024590
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0362168    0.0147564    0.0572098
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0264486   -0.0346023    0.0838970
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.3270717   -0.1978959    0.6219768
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0299488    0.0143097    0.0453399
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0141404   -0.0505216    0.0748222
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.3418267   -0.6983591   -0.0601403
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0063781   -0.1023777    0.0812615
