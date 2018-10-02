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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        nrooms    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0      106     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       29     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       43     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        4     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       24     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        4     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        3     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0       17     167
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       46     167
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             0       95     167
Birth       ki0047075b-MAL-ED          BRAZIL                         4+             1        4     167
Birth       ki0047075b-MAL-ED          INDIA                          1              0       57     188
Birth       ki0047075b-MAL-ED          INDIA                          1              1       11     188
Birth       ki0047075b-MAL-ED          INDIA                          2              0       57     188
Birth       ki0047075b-MAL-ED          INDIA                          2              1        9     188
Birth       ki0047075b-MAL-ED          INDIA                          3              0       25     188
Birth       ki0047075b-MAL-ED          INDIA                          3              1        7     188
Birth       ki0047075b-MAL-ED          INDIA                          4+             0       19     188
Birth       ki0047075b-MAL-ED          INDIA                          4+             1        3     188
Birth       ki0047075b-MAL-ED          NEPAL                          1              0       31     166
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        3     166
Birth       ki0047075b-MAL-ED          NEPAL                          2              0       21     166
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0     166
Birth       ki0047075b-MAL-ED          NEPAL                          3              0       15     166
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        2     166
Birth       ki0047075b-MAL-ED          NEPAL                          4+             0       79     166
Birth       ki0047075b-MAL-ED          NEPAL                          4+             1       15     166
Birth       ki0047075b-MAL-ED          PERU                           1              0       16     252
Birth       ki0047075b-MAL-ED          PERU                           1              1        1     252
Birth       ki0047075b-MAL-ED          PERU                           2              0       50     252
Birth       ki0047075b-MAL-ED          PERU                           2              1        1     252
Birth       ki0047075b-MAL-ED          PERU                           3              0       56     252
Birth       ki0047075b-MAL-ED          PERU                           3              1        1     252
Birth       ki0047075b-MAL-ED          PERU                           4+             0      125     252
Birth       ki0047075b-MAL-ED          PERU                           4+             1        2     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       13     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        1     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        3     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      149     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1       10     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       23     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       30     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       53     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        1     114
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0       31      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0       17      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             0        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0      88
Birth       ki1000108-IRC              INDIA                          1              0      111     341
Birth       ki1000108-IRC              INDIA                          1              1       45     341
Birth       ki1000108-IRC              INDIA                          2              0      105     341
Birth       ki1000108-IRC              INDIA                          2              1       35     341
Birth       ki1000108-IRC              INDIA                          3              0       25     341
Birth       ki1000108-IRC              INDIA                          3              1        6     341
Birth       ki1000108-IRC              INDIA                          4+             0        9     341
Birth       ki1000108-IRC              INDIA                          4+             1        5     341
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              0        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        0      23
Birth       ki1114097-CONTENT          PERU                           1              0        0       2
Birth       ki1114097-CONTENT          PERU                           1              1        0       2
Birth       ki1114097-CONTENT          PERU                           2              0        1       2
Birth       ki1114097-CONTENT          PERU                           2              1        0       2
Birth       ki1114097-CONTENT          PERU                           3              0        0       2
Birth       ki1114097-CONTENT          PERU                           3              1        0       2
Birth       ki1114097-CONTENT          PERU                           4+             0        1       2
Birth       ki1114097-CONTENT          PERU                           4+             1        0       2
Birth       ki1135781-COHORTS          INDIA                          1              0     2333    4454
Birth       ki1135781-COHORTS          INDIA                          1              1      546    4454
Birth       ki1135781-COHORTS          INDIA                          2              0     1121    4454
Birth       ki1135781-COHORTS          INDIA                          2              1      207    4454
Birth       ki1135781-COHORTS          INDIA                          3              0      141    4454
Birth       ki1135781-COHORTS          INDIA                          3              1       16    4454
Birth       ki1135781-COHORTS          INDIA                          4+             0       84    4454
Birth       ki1135781-COHORTS          INDIA                          4+             1        6    4454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0    17862   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1     1918   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     7254   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      800   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     2322   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1      206   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             0      924   31372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4+             1       86   31372
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0      804    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1       48    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      324    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1       16    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      128    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1        8    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             0       38    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4+             1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0      145     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       49     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       27     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             0       11     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+             1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       59     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             0      125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4+             1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1              0       78     235
6 months    ki0047075b-MAL-ED          INDIA                          1              1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          2              0       74     235
6 months    ki0047075b-MAL-ED          INDIA                          2              1        4     235
6 months    ki0047075b-MAL-ED          INDIA                          3              0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          3              1        7     235
6 months    ki0047075b-MAL-ED          INDIA                          4+             0       24     235
6 months    ki0047075b-MAL-ED          INDIA                          4+             1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       51     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+             0      128     236
6 months    ki0047075b-MAL-ED          NEPAL                          4+             1        3     236
6 months    ki0047075b-MAL-ED          PERU                           1              0       19     270
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           2              0       50     270
6 months    ki0047075b-MAL-ED          PERU                           2              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           3              0       62     270
6 months    ki0047075b-MAL-ED          PERU                           3              1        0     270
6 months    ki0047075b-MAL-ED          PERU                           4+             0      139     270
6 months    ki0047075b-MAL-ED          PERU                           4+             1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       14     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       22     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        1     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      186     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        5     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       62     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       63     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0      108     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0      171     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       91     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       48     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       12     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        2     368
6 months    ki1000108-IRC              INDIA                          1              0      163     406
6 months    ki1000108-IRC              INDIA                          1              1       20     406
6 months    ki1000108-IRC              INDIA                          2              0      149     406
6 months    ki1000108-IRC              INDIA                          2              1       21     406
6 months    ki1000108-IRC              INDIA                          3              0       28     406
6 months    ki1000108-IRC              INDIA                          3              1        8     406
6 months    ki1000108-IRC              INDIA                          4+             0       13     406
6 months    ki1000108-IRC              INDIA                          4+             1        4     406
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      395     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1       19     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0       89     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              0       55     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3              1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+             1        2     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      325     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              0      180     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2              1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              0      100     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3              1        1     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       89     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        2     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0       72    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      208    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       22    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0      256    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1       26    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             0      488    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4+             1       46    1126
6 months    ki1114097-CONTENT          PERU                           1              0       44     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1114097-CONTENT          PERU                           2              0       54     215
6 months    ki1114097-CONTENT          PERU                           2              1        0     215
6 months    ki1114097-CONTENT          PERU                           3              0       39     215
6 months    ki1114097-CONTENT          PERU                           3              1        0     215
6 months    ki1114097-CONTENT          PERU                           4+             0       78     215
6 months    ki1114097-CONTENT          PERU                           4+             1        0     215
6 months    ki1135781-COHORTS          INDIA                          1              0     2732    4955
6 months    ki1135781-COHORTS          INDIA                          1              1      474    4955
6 months    ki1135781-COHORTS          INDIA                          2              0     1313    4955
6 months    ki1135781-COHORTS          INDIA                          2              1      161    4955
6 months    ki1135781-COHORTS          INDIA                          3              0      171    4955
6 months    ki1135781-COHORTS          INDIA                          3              1       11    4955
6 months    ki1135781-COHORTS          INDIA                          4+             0       89    4955
6 months    ki1135781-COHORTS          INDIA                          4+             1        4    4955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0    17506   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1     1698   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     8650   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      800   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     3099   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1      269   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             0     1413   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4+             1       66   33501
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     5238    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      342    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0     2273    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1      126    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      922    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1       35    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             0      480    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4+             1       29    9445
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0      120     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       37     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+             1        2     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       49     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             0      101     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4+             1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          1              0       75     227
24 months   ki0047075b-MAL-ED          INDIA                          1              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          2              0       62     227
24 months   ki0047075b-MAL-ED          INDIA                          2              1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          3              0       39     227
24 months   ki0047075b-MAL-ED          INDIA                          3              1        7     227
24 months   ki0047075b-MAL-ED          INDIA                          4+             0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          4+             1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       45     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        3     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       31     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+             0      125     228
24 months   ki0047075b-MAL-ED          NEPAL                          4+             1        2     228
24 months   ki0047075b-MAL-ED          PERU                           1              0       15     201
24 months   ki0047075b-MAL-ED          PERU                           1              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2              0       32     201
24 months   ki0047075b-MAL-ED          PERU                           2              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3              0       42     201
24 months   ki0047075b-MAL-ED          PERU                           3              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           4+             0      109     201
24 months   ki0047075b-MAL-ED          PERU                           4+             1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             0      182     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+             1        1     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       53     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             0       98     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+             1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0      186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       99     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       50     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             0       14     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+             1        0     372
24 months   ki1000108-IRC              INDIA                          1              0      174     407
24 months   ki1000108-IRC              INDIA                          1              1       10     407
24 months   ki1000108-IRC              INDIA                          2              0      154     407
24 months   ki1000108-IRC              INDIA                          2              1       16     407
24 months   ki1000108-IRC              INDIA                          3              0       33     407
24 months   ki1000108-IRC              INDIA                          3              1        3     407
24 months   ki1000108-IRC              INDIA                          4+             0       16     407
24 months   ki1000108-IRC              INDIA                          4+             1        1     407
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      361     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       46     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0       84     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              0       49     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3              1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             0       19     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+             1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      193     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       24     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              0      126     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2              1       11     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3              1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             0       75     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+             1        7     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0       64     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        8     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0      176     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       40     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0      194     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1       40     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             0      380     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4+             1       94     996
24 months   ki1114097-CONTENT          PERU                           1              0       30     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1114097-CONTENT          PERU                           2              0       39     164
24 months   ki1114097-CONTENT          PERU                           2              1        0     164
24 months   ki1114097-CONTENT          PERU                           3              0       32     164
24 months   ki1114097-CONTENT          PERU                           3              1        0     164
24 months   ki1114097-CONTENT          PERU                           4+             0       63     164
24 months   ki1114097-CONTENT          PERU                           4+             1        0     164
24 months   ki1135781-COHORTS          INDIA                          1              0     2021    3719
24 months   ki1135781-COHORTS          INDIA                          1              1      266    3719
24 months   ki1135781-COHORTS          INDIA                          2              0     1123    3719
24 months   ki1135781-COHORTS          INDIA                          2              1       84    3719
24 months   ki1135781-COHORTS          INDIA                          3              0      146    3719
24 months   ki1135781-COHORTS          INDIA                          3              1        4    3719
24 months   ki1135781-COHORTS          INDIA                          4+             0       73    3719
24 months   ki1135781-COHORTS          INDIA                          4+             1        2    3719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     7818   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1     2235   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     3658   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1     1120   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0     1309   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1      276   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             0      619   17144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4+             1      109   17144
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     4341    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1     1091    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0     1898    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1      459    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      790    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1      166    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             0      394    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4+             1       98    9237


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7bcbf1de-7c09-4c09-9eb8-277e60be13f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bcbf1de-7c09-4c09-9eb8-277e60be13f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bcbf1de-7c09-4c09-9eb8-277e60be13f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bcbf1de-7c09-4c09-9eb8-277e60be13f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC         INDIA        1                    NA                0.2884615    0.2172637   0.3596594
Birth       ki1000108-IRC         INDIA        2                    NA                0.2500000    0.1781673   0.3218327
Birth       ki1000108-IRC         INDIA        3                    NA                0.1935484    0.0542683   0.3328284
Birth       ki1000108-IRC         INDIA        4+                   NA                0.3571429    0.1057806   0.6085051
Birth       ki1135781-COHORTS     INDIA        1                    NA                0.1896492    0.1753277   0.2039707
Birth       ki1135781-COHORTS     INDIA        2                    NA                0.1558735    0.1363621   0.1753849
Birth       ki1135781-COHORTS     INDIA        3                    NA                0.1019108    0.0545830   0.1492387
Birth       ki1135781-COHORTS     INDIA        4+                   NA                0.0666667    0.0151262   0.1182071
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1034610    0.0964661   0.1104560
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0945844    0.0854521   0.1037166
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0742936    0.0604888   0.0880984
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0942256    0.0724908   0.1159604
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1000000    0.0069481   0.1930519
6 months    ki1113344-GMS-Nepal   NEPAL        2                    NA                0.0956522    0.0418499   0.1494544
6 months    ki1113344-GMS-Nepal   NEPAL        3                    NA                0.0921986    0.0444036   0.1399935
6 months    ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.0861423    0.0524581   0.1198265
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0891819    0.0830578   0.0953059
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.0835662    0.0749254   0.0922069
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.0752363    0.0623753   0.0880974
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.0514713    0.0350290   0.0679136
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0612455    0.0493070   0.0731840
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.0530731    0.0401432   0.0660031
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.0359703    0.0188355   0.0531051
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.0539295   -0.0169759   0.1248350
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1111111    0.0083483   0.2138739
24 months   ki1113344-GMS-Nepal   NEPAL        2                    NA                0.1851852    0.1118512   0.2585192
24 months   ki1113344-GMS-Nepal   NEPAL        3                    NA                0.1709402    0.1026581   0.2392222
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   NA                0.1983122    0.1474977   0.2491268
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2226554    0.2099026   0.2354083
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    NA                0.2312274    0.2133577   0.2490972
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    NA                0.1523194    0.1293155   0.1753233
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   NA                0.1460144    0.1184473   0.1735815
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2006506    0.1830692   0.2182319
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    NA                0.1957089    0.1705376   0.2208801
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    NA                0.1741645    0.1364632   0.2118659
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   NA                0.2000806    0.1241162   0.2760451


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA        NA                   NA                0.2668622   0.2198462   0.3138781
Birth       ki1135781-COHORTS     INDIA        NA                   NA                0.1740009   0.1628660   0.1851358
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0959454   0.0907405   0.1011503
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0905861   0.0668565   0.1143158
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0845646   0.0797577   0.0893716
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563261   0.0473846   0.0652676
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1827309   0.1487560   0.2167058
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2181521   0.2082397   0.2280645
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1963841   0.1829372   0.2098310


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC         INDIA        2                    1                 0.8666667   0.5933999   1.2657756
Birth       ki1000108-IRC         INDIA        3                    1                 0.6709677   0.3135491   1.4358123
Birth       ki1000108-IRC         INDIA        4+                   1                 1.2380952   0.5872740   2.6101612
Birth       ki1135781-COHORTS     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS     INDIA        2                    1                 0.8219044   0.7101207   0.9512844
Birth       ki1135781-COHORTS     INDIA        3                    1                 0.5373650   0.3356850   0.8602146
Birth       ki1135781-COHORTS     INDIA        4+                   1                 0.3515263   0.1616604   0.7643844
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.9142029   0.8133406   1.0275731
Birth       kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.7180829   0.5892205   0.8751275
Birth       kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.9107349   0.7163209   1.1579142
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        2                    1                 0.9565217   0.3224640   2.8373212
6 months    ki1113344-GMS-Nepal   NEPAL        3                    1                 0.9219858   0.3177788   2.6749982
6 months    ki1113344-GMS-Nepal   NEPAL        4+                   1                 0.8614232   0.3139534   2.3635675
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   2                    1                 0.9370309   0.8291418   1.0589587
6 months    kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.8436279   0.7031542   1.0121649
6 months    kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.5771495   0.4149540   0.8027434
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.8665634   0.6339185   1.1845880
6 months    kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.5873136   0.3515273   0.9812531
6 months    kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.8805469   0.2331412   3.3257225
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        2                    1                 1.6666667   0.6094168   4.5580919
24 months   ki1113344-GMS-Nepal   NEPAL        3                    1                 1.5384615   0.5617732   4.2132022
24 months   ki1113344-GMS-Nepal   NEPAL        4+                   1                 1.7848101   0.6835935   4.6600020
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   2                    1                 1.0384990   0.9453392   1.1408394
24 months   kiGH5241-JiVitA-3     BANGLADESH   3                    1                 0.6841036   0.5817020   0.8045318
24 months   kiGH5241-JiVitA-3     BANGLADESH   4+                   1                 0.6557866   0.5380464   0.7992916
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   2                    1                 0.9753716   0.8366490   1.1370954
24 months   kiGH5241-JiVitA-4     BANGLADESH   3                    1                 0.8679992   0.6863897   1.0976602
24 months   kiGH5241-JiVitA-4     BANGLADESH   4+                   1                 0.9971595   0.6744315   1.4743188


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC         INDIA        1                    NA                -0.0215994   -0.0729958    0.0297971
Birth       ki1135781-COHORTS     INDIA        1                    NA                -0.0156483   -0.0236444   -0.0076522
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0075156   -0.0117359   -0.0032953
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0094139   -0.0988085    0.0799808
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0046173   -0.0086991   -0.0005354
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0049194   -0.0122368    0.0023979
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0716198   -0.0293144    0.1725540
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0045033   -0.0128348    0.0038282
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0042665   -0.0153673    0.0068343


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC         INDIA        1                    NA                -0.0809383   -0.2916232    0.0953805
Birth       ki1135781-COHORTS     INDIA        1                    NA                -0.0899322   -0.1366655   -0.0451203
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0783322   -0.1230357   -0.0354082
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1039216   -1.6981052    0.5483338
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0546003   -0.1042822   -0.0071535
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0873380   -0.2250826    0.0349191
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3919414   -0.4995263    0.7534320
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0206429   -0.0595992    0.0168812
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0217251   -0.0798379    0.0332603
