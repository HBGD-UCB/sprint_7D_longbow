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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        nrooms    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      127     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        8     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       47     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       28     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       19     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       46     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              0       99     167
Birth       ki0047075b-MAL-ED          BRAZIL                         4+              1        0     167
Birth       ki0047075b-MAL-ED          INDIA                          1               0       66     188
Birth       ki0047075b-MAL-ED          INDIA                          1               1        2     188
Birth       ki0047075b-MAL-ED          INDIA                          2               0       64     188
Birth       ki0047075b-MAL-ED          INDIA                          2               1        2     188
Birth       ki0047075b-MAL-ED          INDIA                          3               0       31     188
Birth       ki0047075b-MAL-ED          INDIA                          3               1        1     188
Birth       ki0047075b-MAL-ED          INDIA                          4+              0       21     188
Birth       ki0047075b-MAL-ED          INDIA                          4+              1        1     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       34     166
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     166
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       21     166
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        0     166
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       17     166
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        0     166
Birth       ki0047075b-MAL-ED          NEPAL                          4+              0       90     166
Birth       ki0047075b-MAL-ED          NEPAL                          4+              1        4     166
Birth       ki0047075b-MAL-ED          PERU                           1               0       17     252
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     252
Birth       ki0047075b-MAL-ED          PERU                           2               0       51     252
Birth       ki0047075b-MAL-ED          PERU                           2               1        0     252
Birth       ki0047075b-MAL-ED          PERU                           3               0       57     252
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     252
Birth       ki0047075b-MAL-ED          PERU                           4+              0      127     252
Birth       ki0047075b-MAL-ED          PERU                           4+              1        0     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       22     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      159     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        0     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       30     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        1     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       54     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       34      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0       26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0       18      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              0        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0      88
Birth       ki1000108-IRC              INDIA                          1               0      128     341
Birth       ki1000108-IRC              INDIA                          1               1       28     341
Birth       ki1000108-IRC              INDIA                          2               0      123     341
Birth       ki1000108-IRC              INDIA                          2               1       17     341
Birth       ki1000108-IRC              INDIA                          3               0       26     341
Birth       ki1000108-IRC              INDIA                          3               1        5     341
Birth       ki1000108-IRC              INDIA                          4+              0       11     341
Birth       ki1000108-IRC              INDIA                          4+              1        3     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       14      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        0      23
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1114097-CONTENT          PERU                           2               0        1       2
Birth       ki1114097-CONTENT          PERU                           2               1        0       2
Birth       ki1114097-CONTENT          PERU                           3               0        0       2
Birth       ki1114097-CONTENT          PERU                           3               1        0       2
Birth       ki1114097-CONTENT          PERU                           4+              0        1       2
Birth       ki1114097-CONTENT          PERU                           4+              1        0       2
Birth       ki1135781-COHORTS          INDIA                          1               0     2733    4454
Birth       ki1135781-COHORTS          INDIA                          1               1      146    4454
Birth       ki1135781-COHORTS          INDIA                          2               0     1266    4454
Birth       ki1135781-COHORTS          INDIA                          2               1       62    4454
Birth       ki1135781-COHORTS          INDIA                          3               0      154    4454
Birth       ki1135781-COHORTS          INDIA                          3               1        3    4454
Birth       ki1135781-COHORTS          INDIA                          4+              0       87    4454
Birth       ki1135781-COHORTS          INDIA                          4+              1        3    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    19440   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      340   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     7928   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      126   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     2504   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1       24   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              0      992   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+              1       18   31372
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      846    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      336    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1        4    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      136    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              0       38    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+              1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      149     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       50     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       27     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              0       12     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              0      126     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1               0       82     235
6 months    ki0047075b-MAL-ED          INDIA                          1               1        2     235
6 months    ki0047075b-MAL-ED          INDIA                          2               0       76     235
6 months    ki0047075b-MAL-ED          INDIA                          2               1        2     235
6 months    ki0047075b-MAL-ED          INDIA                          3               0       47     235
6 months    ki0047075b-MAL-ED          INDIA                          3               1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              0       25     235
6 months    ki0047075b-MAL-ED          INDIA                          4+              1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       52     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              0      131     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1               0       19     270
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           2               0       50     270
6 months    ki0047075b-MAL-ED          PERU                           2               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           3               0       62     270
6 months    ki0047075b-MAL-ED          PERU                           3               1        0     270
6 months    ki0047075b-MAL-ED          PERU                           4+              0      139     270
6 months    ki0047075b-MAL-ED          PERU                           4+              1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      189     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        2     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       64     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0      108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      189     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0      102     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       51     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       14     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0     368
6 months    ki1000108-IRC              INDIA                          1               0      174     406
6 months    ki1000108-IRC              INDIA                          1               1        9     406
6 months    ki1000108-IRC              INDIA                          2               0      164     406
6 months    ki1000108-IRC              INDIA                          2               1        6     406
6 months    ki1000108-IRC              INDIA                          3               0       32     406
6 months    ki1000108-IRC              INDIA                          3               1        4     406
6 months    ki1000108-IRC              INDIA                          4+              0       15     406
6 months    ki1000108-IRC              INDIA                          4+              1        2     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      410     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        4     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0       90     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               0       56     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3               1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              0       21     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+              1        0     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      339     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               0      184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               0      101     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       91     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        0     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0       78    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      226    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0      280    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              0      528    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+              1        6    1126
6 months    ki1114097-CONTENT          PERU                           1               0       44     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1114097-CONTENT          PERU                           2               0       54     215
6 months    ki1114097-CONTENT          PERU                           2               1        0     215
6 months    ki1114097-CONTENT          PERU                           3               0       39     215
6 months    ki1114097-CONTENT          PERU                           3               1        0     215
6 months    ki1114097-CONTENT          PERU                           4+              0       78     215
6 months    ki1114097-CONTENT          PERU                           4+              1        0     215
6 months    ki1135781-COHORTS          INDIA                          1               0     3090    4955
6 months    ki1135781-COHORTS          INDIA                          1               1      116    4955
6 months    ki1135781-COHORTS          INDIA                          2               0     1443    4955
6 months    ki1135781-COHORTS          INDIA                          2               1       31    4955
6 months    ki1135781-COHORTS          INDIA                          3               0      178    4955
6 months    ki1135781-COHORTS          INDIA                          3               1        4    4955
6 months    ki1135781-COHORTS          INDIA                          4+              0       93    4955
6 months    ki1135781-COHORTS          INDIA                          4+              1        0    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    18950   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      254   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     9296   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      154   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     3334   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1       34   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              0     1463   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+              1       16   33501
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     5537    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       43    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0     2381    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1       18    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0      957    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1        0    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              0      505    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+              1        4    9445
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      134     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       27     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+              1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              0      103     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+              1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1               0       82     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       74     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       45     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          4+              1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       48     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              0      127     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       43     201
24 months   ki0047075b-MAL-ED          PERU                           3               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4+              0      110     201
24 months   ki0047075b-MAL-ED          PERU                           4+              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              0      183     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       57     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              0       98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+              1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      199     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0      105     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       51     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              0       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+              1        0     372
24 months   ki1000108-IRC              INDIA                          1               0      182     407
24 months   ki1000108-IRC              INDIA                          1               1        2     407
24 months   ki1000108-IRC              INDIA                          2               0      169     407
24 months   ki1000108-IRC              INDIA                          2               1        1     407
24 months   ki1000108-IRC              INDIA                          3               0       35     407
24 months   ki1000108-IRC              INDIA                          3               1        1     407
24 months   ki1000108-IRC              INDIA                          4+              0       17     407
24 months   ki1000108-IRC              INDIA                          4+              1        0     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      399     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0       91     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        1     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               0       57     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3               1        0     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              0       22     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+              1        0     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      217     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               0      133     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2               1        4     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3               1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              0       82     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+              1        0     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       68     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        4     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      210     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0      228     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              0      460     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4+              1       14     996
24 months   ki1114097-CONTENT          PERU                           1               0       30     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1114097-CONTENT          PERU                           2               0       39     164
24 months   ki1114097-CONTENT          PERU                           2               1        0     164
24 months   ki1114097-CONTENT          PERU                           3               0       32     164
24 months   ki1114097-CONTENT          PERU                           3               1        0     164
24 months   ki1114097-CONTENT          PERU                           4+              0       63     164
24 months   ki1114097-CONTENT          PERU                           4+              1        0     164
24 months   ki1135781-COHORTS          INDIA                          1               0     2254    3719
24 months   ki1135781-COHORTS          INDIA                          1               1       33    3719
24 months   ki1135781-COHORTS          INDIA                          2               0     1200    3719
24 months   ki1135781-COHORTS          INDIA                          2               1        7    3719
24 months   ki1135781-COHORTS          INDIA                          3               0      149    3719
24 months   ki1135781-COHORTS          INDIA                          3               1        1    3719
24 months   ki1135781-COHORTS          INDIA                          4+              0       75    3719
24 months   ki1135781-COHORTS          INDIA                          4+              1        0    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     9640   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      413   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     4590   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      188   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0     1545   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1       40   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              0      706   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+              1       22   17144
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     5270    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1      162    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     2298    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1       59    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0      931    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1       25    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              0      486    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+              1        6    9237


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/edc08ca9-9fec-473a-9175-503cea355f0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/edc08ca9-9fec-473a-9175-503cea355f0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/edc08ca9-9fec-473a-9175-503cea355f0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/edc08ca9-9fec-473a-9175-503cea355f0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0170644    0.0141091   0.0200197
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0155836    0.0113005   0.0198666
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0095430    0.0026828   0.0164032
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0172435    0.0038279   0.0306591
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0130981    0.0105713   0.0156250
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0159652    0.0117691   0.0201613
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0102535    0.0048854   0.0156217
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0091694   -0.0001608   0.0184997
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0405728    0.0347282   0.0464173
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    NA                0.0366446    0.0297490   0.0435401
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    NA                0.0250829    0.0148022   0.0353636
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   NA                0.0325896    0.0201719   0.0450072
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.0298233    0.0230825   0.0365641
24 months   kiGH5241-JiVitA-4   BANGLADESH   2                    NA                0.0250318    0.0141163   0.0359473
24 months   kiGH5241-JiVitA-4   BANGLADESH   3                    NA                0.0261506    0.0109499   0.0413514
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   NA                0.0121951   -0.0218531   0.0462434


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0161928   0.0138270   0.0185586
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0136712   0.0115940   0.0157484
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0386724   0.0343430   0.0430019
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0272816   0.0219894   0.0325738


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   2                    1                 0.9132220   0.6598835   1.2638206
Birth       kiGH5241-JiVitA-3   BANGLADESH   3                    1                 0.5592363   0.2740462   1.1412139
Birth       kiGH5241-JiVitA-3   BANGLADESH   4+                   1                 1.0104956   0.4543528   2.2473756
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   2                    1                 1.2188930   0.8836592   1.6813044
6 months    kiGH5241-JiVitA-3   BANGLADESH   3                    1                 0.7828254   0.4507485   1.3595510
6 months    kiGH5241-JiVitA-3   BANGLADESH   4+                   1                 0.7000575   0.2479525   1.9765094
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   2                    1                 0.9031817   0.7123499   1.1451357
24 months   kiGH5241-JiVitA-3   BANGLADESH   3                    1                 0.6182204   0.4003171   0.9547344
24 months   kiGH5241-JiVitA-3   BANGLADESH   4+                   1                 0.8032378   0.5331935   1.2100504
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   2                    1                 0.8393386   0.5099335   1.3815316
24 months   kiGH5241-JiVitA-4   BANGLADESH   3                    1                 0.8768531   0.4676957   1.6439566
24 months   kiGH5241-JiVitA-4   BANGLADESH   4+                   1                 0.4089130   0.0247617   6.7527591


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0008716   -0.0025434   0.0008002
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0005731   -0.0011996   0.0023459
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0019003   -0.0054369   0.0016363
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                -0.0025417   -0.0072396   0.0021562


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0538258   -0.1622513   0.0444848
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                 0.0419211   -0.0960494   0.1625239
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                -0.0491393   -0.1443037   0.0381108
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                -0.0931648   -0.2827334   0.0683884
