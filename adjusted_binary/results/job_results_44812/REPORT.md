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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        impfloor    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ---------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      212    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       11    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       17    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        2    242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      206    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0    210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      201    235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       19    235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       14    235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        1    235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0      102    229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1    229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      124    229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2    229
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       58    271
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      212    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      233    256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2    256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21    256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      248    261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       13    261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0    261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0    261
0-24 months   ki1000108-IRC              INDIA                          1                   0      271    306
0-24 months   ki1000108-IRC              INDIA                          1                   1       35    306
0-24 months   ki1000108-IRC              INDIA                          0                   0        0    306
0-24 months   ki1000108-IRC              INDIA                          0                   1        0    306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      432    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       41    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       53    532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        6    532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      574    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6    730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       70    465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       13    465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      325    465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       57    465
0-24 months   ki1114097-CONTENT          PERU                           1                   0      201    215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        0    215
0-24 months   ki1114097-CONTENT          PERU                           0                   0       14    215
0-24 months   ki1114097-CONTENT          PERU                           0                   1        0    215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      631   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       26   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6660   7739
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      422   7739
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      149   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        5   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1116   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      107   1377
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      217    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        6    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       18    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1    242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0      207    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        2    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0      202    234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       17    234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       14    234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1        1    234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0      101    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      123    228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        3    228
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       58    271
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      213    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      231    254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2    254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21    254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      220    251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       31    251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0    251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0    251
0-6 months    ki1000108-IRC              INDIA                          1                   0      249    300
0-6 months    ki1000108-IRC              INDIA                          1                   1       51    300
0-6 months    ki1000108-IRC              INDIA                          0                   0        0    300
0-6 months    ki1000108-IRC              INDIA                          0                   1        0    300
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   0      139    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   1        8    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   0       19    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   1        3    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      571    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       13    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       52    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        1    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      239    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        5    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0        6    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        0    250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       62    423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11    423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      312    423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       38    423
0-6 months    ki1114097-CONTENT          PERU                           1                   0      201    215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
0-6 months    ki1114097-CONTENT          PERU                           0                   0       14    215
0-6 months    ki1114097-CONTENT          PERU                           0                   1        0    215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       21     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        2     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      212    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       11    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       17    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        2    242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      206    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0    210
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      201    235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       19    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       14    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        1    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0      102    229
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1    229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      124    229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2    229
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       58    271
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      212    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      233    256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2    256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21    256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    248
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      248    261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       13    261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0    261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0    261
6-24 months   ki1000108-IRC              INDIA                          1                   0      271    306
6-24 months   ki1000108-IRC              INDIA                          1                   1       35    306
6-24 months   ki1000108-IRC              INDIA                          0                   0        0    306
6-24 months   ki1000108-IRC              INDIA                          0                   1        0    306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      432    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       41    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       53    532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        6    532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      574    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6    730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       70    465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       13    465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      325    465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       57    465
6-24 months   ki1114097-CONTENT          PERU                           1                   0      201    215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0    215
6-24 months   ki1114097-CONTENT          PERU                           0                   0       14    215
6-24 months   ki1114097-CONTENT          PERU                           0                   1        0    215
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      631   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       26   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     6660   7739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      422   7739
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      149   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        5   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1116   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      107   1377


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/dba2c95a-2884-426c-b990-66932fe65895/86bc8465-6691-42e3-ba07-bcd9f8716fea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dba2c95a-2884-426c-b990-66932fe65895/86bc8465-6691-42e3-ba07-bcd9f8716fea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dba2c95a-2884-426c-b990-66932fe65895/86bc8465-6691-42e3-ba07-bcd9f8716fea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dba2c95a-2884-426c-b990-66932fe65895/86bc8465-6691-42e3-ba07-bcd9f8716fea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808    0.0613003   0.1120612
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949    0.0244994   0.1788905
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319    0.0206325   0.0518313
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079    0.0071767   0.0602390
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1566265    0.0783522   0.2349008
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1492147    0.1134462   0.1849831
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0395738    0.0225841   0.0565636
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0595877    0.0534899   0.0656855
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0324675   -0.0266433   0.0915783
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0874898    0.0708366   0.1041430
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1506849    0.0685231   0.2328467
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1085714    0.0759405   0.1412023
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808    0.0613003   0.1120612
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949    0.0244994   0.1788905
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319    0.0206325   0.0518313
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079    0.0071767   0.0602390
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1566265    0.0783522   0.2349008
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1492147    0.1134462   0.1849831
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0395738    0.0225841   0.0565636
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0595877    0.0534899   0.0656855
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0324675   -0.0266433   0.0915783
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0874898    0.0708366   0.1041430


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1505376   0.1180002   0.1830751
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0578886   0.0520579   0.0637193
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0813362   0.0653528   0.0973196
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1158392   0.0853051   0.1463734
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1505376   0.1180002   0.1830751
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0578886   0.0520579   0.0637193
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0813362   0.0653528   0.0973196


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356    2.646793
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263    2.281748
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9526782   0.5473068    1.658294
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.5057348   0.9736000    2.328715
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.6946852   0.4280068   16.965450
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7205195   0.3865924    1.342883
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356    2.646793
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263    2.281748
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9526782   0.5473068    1.658294
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.5057348   0.9736000    2.328715
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.6946852   0.4280068   16.965450


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0060889   -0.0767877   0.0646100
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0183148    0.0020584   0.0345712
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0488687   -0.0065874   0.1043249
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0348457   -0.1080093   0.0383179
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0060889   -0.0767877   0.0646100
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0183148    0.0020584   0.0345712
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0488687   -0.0065874   0.1043249


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0404475   -0.6339272   0.3374668
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3163798   -0.0311904   0.5467990
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.6008233   -1.3204238   0.9313306
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.3008107   -1.1085477   0.1975004
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0404475   -0.6339272   0.3374668
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3163798   -0.0311904   0.5467990
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.6008233   -1.3204238   0.9313306
