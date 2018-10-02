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
![](/tmp/a6267f28-1cac-45fb-869a-7e3e26e69700/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6267f28-1cac-45fb-869a-7e3e26e69700/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6267f28-1cac-45fb-869a-7e3e26e69700/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6267f28-1cac-45fb-869a-7e3e26e69700/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                0.5925926   0.5081592   0.6770260
0-24 months   ki1000108-IRC           INDIA        2                    NA                0.6111111   0.5401543   0.6820679
0-24 months   ki1000108-IRC           INDIA        3                    NA                0.5625000   0.3398407   0.7851593
0-24 months   ki1000108-IRC           INDIA        4+                   NA                0.4500000   0.2471890   0.6528110
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.5868916   0.5145233   0.6592599
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    NA                0.6658164   0.5623307   0.7693021
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    NA                0.7096105   0.5727585   0.8464624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   NA                0.6907126   0.5398783   0.8415470
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6314308   0.5083406   0.7545211
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4601515   0.3683478   0.5519551
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.5973303   0.5098908   0.6847699
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4965517   0.4344351   0.5586683
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4074899   0.3937612   0.4212187
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.4311266   0.4109217   0.4513316
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.4081949   0.3780746   0.4383152
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.4728102   0.4392087   0.5064116
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2544000   0.2306160   0.2781840
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.2502523   0.2112209   0.2892837
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.2845745   0.2152607   0.3538883
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.3707865   0.2617648   0.4798082
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4084350   0.1543243   0.6625456
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4712243   0.3045536   0.6378950
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    NA                0.7626976   0.6385016   0.8868935
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.5558634   0.4523265   0.6594004
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6558797   0.6394706   0.6722887
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    NA                0.6941443   0.6719719   0.7163167
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    NA                0.6911805   0.6629364   0.7194246
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   NA                0.6818863   0.6482575   0.7155151
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5505173   0.4961089   0.6049257
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.5371021   0.4525287   0.6216756
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.5798064   0.4604870   0.6991257
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.5913946   0.4434279   0.7393613
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.6476971   0.4792204   0.8161739
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    NA                0.4075329   0.2864372   0.5286286
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    NA                0.4777915   0.3643672   0.5912158
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   NA                0.4553649   0.3803551   0.5303747
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1517761   0.1303785   0.1731737
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    NA                0.1458047   0.1093596   0.1822498
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    NA                0.1320000   0.0691088   0.1948912
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   NA                0.2105263   0.0986019   0.3224507


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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   2                    1                 1.1344793   0.9315661   1.3815910
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3                    1                 1.2090998   0.9633007   1.5176178
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4+                   1                 1.1768999   0.9182687   1.5083747
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        2                    1                 0.7287441   0.5512235   0.9634349
0-24 months   ki1113344-GMS-Nepal     NEPAL        3                    1                 0.9459949   0.7412151   1.2073505
0-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   1                 0.7863913   0.6237221   0.9914853
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   2                    1                 1.0580056   0.9992660   1.1201981
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   3                    1                 1.0017301   0.9240374   1.0859551
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   4+                   1                 1.1602990   1.0728478   1.2548787
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9836960   0.8201119   1.1799096
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    1                 1.1186103   0.8617552   1.4520238
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.4574942   1.0705777   1.9842457
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        2                    1                 1.1537315   0.5648423   2.3565808
0-6 months    ki1113344-GMS-Nepal     NEPAL        3                    1                 1.8673659   0.9816769   3.5521418
0-6 months    ki1113344-GMS-Nepal     NEPAL        4+                   1                 1.3609594   0.7110239   2.6049904
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   2                    1                 1.0583409   1.0167485   1.1016347
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   3                    1                 1.0538221   1.0050721   1.1049367
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   4+                   1                 1.0396515   0.9841871   1.0982416
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9756318   0.8101411   1.1749279
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   3                    1                 1.0532029   0.8380727   1.3235561
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.0742526   0.8208468   1.4058878
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        2                    1                 0.6292029   0.4238719   0.9339997
6-24 months   ki1113344-GMS-Nepal     NEPAL        3                    1                 0.7376774   0.5187196   1.0490598
6-24 months   ki1113344-GMS-Nepal     NEPAL        4+                   1                 0.7030521   0.5165432   0.9569041
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   2                    1                 0.9606563   0.7209765   1.2800148
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   3                    1                 0.8697021   0.5291699   1.4293742
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   4+                   1                 1.3870847   0.8002791   2.4041662


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                -0.0012220   -0.0643943   0.0619503
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0369026   -0.0127652   0.0865704
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1091492   -0.2292367   0.0109383
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0153377    0.0063335   0.0243420
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0069103   -0.0085964   0.0224169
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1748984   -0.0709679   0.4207646
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0195904    0.0092127   0.0299682
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0078769   -0.0270876   0.0428414
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1542588   -0.3167916   0.0082740
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0008775   -0.0147036   0.0129486


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC           INDIA        1                    NA                -0.0020664   -0.1147791    0.0992501
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0591583   -0.0239608    0.1355303
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2089853   -0.4656548    0.0027356
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0362742    0.0148001    0.0572803
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0264447   -0.0346067    0.0838934
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.2998258   -0.2791679    0.6167477
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0290027    0.0135403    0.0442226
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0141063   -0.0505527    0.0747857
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.3126203   -0.6918681   -0.0183843
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0058151   -0.1018119    0.0818178
