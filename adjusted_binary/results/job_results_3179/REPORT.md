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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       18     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      210     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        6     234
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0        2     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0      165     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        7     174
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       10     191
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0     191
Birth       ki0047075b-MAL-ED          INDIA                          1                  0      174     191
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        7     191
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       96     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       62     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        4     164
Birth       ki0047075b-MAL-ED          PERU                           0                  0      199     259
Birth       ki0047075b-MAL-ED          PERU                           0                  1        4     259
Birth       ki0047075b-MAL-ED          PERU                           1                  0       53     259
Birth       ki0047075b-MAL-ED          PERU                           1                  1        3     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      196     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        7     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       68      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      71
Birth       ki1000108-IRC              INDIA                          0                  0        0     287
Birth       ki1000108-IRC              INDIA                          0                  1        0     287
Birth       ki1000108-IRC              INDIA                          1                  0      274     287
Birth       ki1000108-IRC              INDIA                          1                  1       13     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  0       24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        0      27
Birth       ki1114097-CONTENT          PERU                           0                  0        0       2
Birth       ki1114097-CONTENT          PERU                           0                  1        0       2
Birth       ki1114097-CONTENT          PERU                           1                  0        2       2
Birth       ki1114097-CONTENT          PERU                           1                  1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0    33034   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     3940   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2018   39126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      134   39126
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1386    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      116    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      130    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       12    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       18     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      214     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0      207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       14     235
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        1     235
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      212     235
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      126     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0      102     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     229
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1        8     270
6 months    ki0047075b-MAL-ED          PERU                           1                  0       54     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1        4     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      223     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      218     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       13     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       13     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      221     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       36     257
6 months    ki1000108-IRC              INDIA                          0                  0        0     303
6 months    ki1000108-IRC              INDIA                          0                  1        0     303
6 months    ki1000108-IRC              INDIA                          1                  0      285     303
6 months    ki1000108-IRC              INDIA                          1                  1       18     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0       54     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        4     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0      446     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1       31     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0       38     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        6     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      531     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        8     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      171     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      521     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       16     715
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      692     882
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       34     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      156     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     882
6 months    ki1114097-CONTENT          PERU                           0                  0       14     215
6 months    ki1114097-CONTENT          PERU                           0                  1        0     215
6 months    ki1114097-CONTENT          PERU                           1                  0      197     215
6 months    ki1114097-CONTENT          PERU                           1                  1        4     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0    28621   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1958   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2851   33501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1       71   33501
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     7788    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      494    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1126    9440
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       32    9440
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      170     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       25     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0      166     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      186     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      119     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       95     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     221
24 months   ki0047075b-MAL-ED          PERU                           0                  0      140     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       12     201
24 months   ki0047075b-MAL-ED          PERU                           1                  0       46     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      196     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       24     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      135     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       65     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        9     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      168     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       92     260
24 months   ki1000108-IRC              INDIA                          0                  0        0     305
24 months   ki1000108-IRC              INDIA                          0                  1        0     305
24 months   ki1000108-IRC              INDIA                          1                  0      282     305
24 months   ki1000108-IRC              INDIA                          1                  1       23     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0       28     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       22     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      306     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       71     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0       34     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      494     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       38     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      324     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       22     514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      556     770
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       70     770
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      138     770
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     770
24 months   ki1114097-CONTENT          PERU                           0                  0       10     164
24 months   ki1114097-CONTENT          PERU                           0                  1        0     164
24 months   ki1114097-CONTENT          PERU                           1                  0      151     164
24 months   ki1114097-CONTENT          PERU                           1                  1        3     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0    13249   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2587   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1255   17180
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       89   17180
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     7349    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      809    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1067    9269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       44    9269


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/85846084-3a4e-4df0-9020-72b18c77fc8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/85846084-3a4e-4df0-9020-72b18c77fc8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/85846084-3a4e-4df0-9020-72b18c77fc8c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/85846084-3a4e-4df0-9020-72b18c77fc8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1049872    0.1001937   0.1097807
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0441425    0.0326782   0.0556068
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0769721    0.0542217   0.0997225
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0551574    0.0183154   0.0919994
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1363636    0.0348769   0.2378504
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0148423    0.0046251   0.0250595
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258    0.0107520   0.0678997
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0297952    0.0154049   0.0441854
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0621237    0.0581449   0.0661024
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0225820    0.0141599   0.0310040
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0585315    0.0505773   0.0664857
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0317521    0.0036076   0.0598965
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3525376    0.2488535   0.4562216
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1908684    0.1516398   0.2300969
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3311889    0.2158184   0.4465594
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0713776    0.0495052   0.0932499
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0759171    0.0360730   0.1157612
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0644394    0.0385447   0.0903341
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1118211    0.0768626   0.1467796
24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.0416667   -0.0045501   0.0878834
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1592779    0.1503098   0.1682461
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1268913    0.0981445   0.1556381
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0963636    0.0860398   0.1066873
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0493167    0.0197777   0.0788557


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1041251   0.0994430   0.1088072
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0605654   0.0567056   0.0644251
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0557203   0.0488106   0.0626301
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2177986   0.1786036   0.2569935
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0987013   0.0688696   0.1285330
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1557625   0.1470150   0.1645100
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0920272   0.0825471   0.1015073


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.4204560   0.3229455   0.5474088
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.7165902   0.3456691   1.4855293
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.1088435   0.0394932   0.2999735
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.7576483   0.3166354   1.8129082
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.3635001   0.2491462   0.5303405
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.5424784   0.2203309   1.3356401
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.5414128   0.3813368   0.7686849
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.2155192   0.1354333   0.3429623
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.8488125   0.4383987   1.6434418
24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.3726191   0.1177001   1.1796507
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.7966661   0.6311079   1.0056552
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.5117775   0.2772664   0.9446377


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0008621   -0.0017939    0.0000697
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0008868   -0.0072259    0.0089996
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1123499   -0.2066876   -0.0180122
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0071580   -0.0311882    0.0168721
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0015583   -0.0023712   -0.0007455
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0028111   -0.0055345   -0.0000878
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1347390   -0.2287326   -0.0407453
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.2462669   -0.3547281   -0.1378056
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0078237   -0.0396407    0.0239933
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0131198   -0.0242970   -0.0019425
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0035154   -0.0051324   -0.0018985
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0043364   -0.0071568   -0.0015160


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0082793   -0.0172675    0.0006295
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0113901   -0.0982503    0.1100848
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -4.6785714   -9.2378919   -2.1496888
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2225208   -1.2432419    0.3337513
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0257293   -0.0392681   -0.0123669
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0504507   -0.0994797   -0.0036081
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.6186402   -1.1243905   -0.2332930
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -2.8999179   -4.5128236   -1.7589056
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.1148969   -0.6934724    0.2660080
24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.1329242   -0.2459665   -0.0301378
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0225691   -0.0330225   -0.0122214
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0471208   -0.0777965   -0.0173181
