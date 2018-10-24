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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        impfloor    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0      197     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     222
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0        2     167
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0      165     167
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     167
Birth       ki0047075b-MAL-ED          INDIA                          0                 0        8     188
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        2     188
Birth       ki0047075b-MAL-ED          INDIA                          1                 0      174     188
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        4     188
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       93     159
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        2     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       62     159
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        2     159
Birth       ki0047075b-MAL-ED          PERU                           0                 0      198     252
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     252
Birth       ki0047075b-MAL-ED          PERU                           1                 0       54     252
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      195     216
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      105     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        7     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       66      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        5      71
Birth       ki1000108-IRC              INDIA                          0                 0        0     253
Birth       ki1000108-IRC              INDIA                          0                 1        0     253
Birth       ki1000108-IRC              INDIA                          1                 0      215     253
Birth       ki1000108-IRC              INDIA                          1                 1       38     253
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      23
Birth       ki1114097-CONTENT          PERU                           0                 0        0       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       ki1114097-CONTENT          PERU                           1                 0        2       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    29008   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      474   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1818   31332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1       32   31332
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1240    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      116    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       19     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      219     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0       15     235
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        0     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 0      215     235
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        5     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      126     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0      103     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     229
6 months    ki0047075b-MAL-ED          PERU                           0                 0      212     270
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     270
6 months    ki0047075b-MAL-ED          PERU                           1                 0       58     270
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      226     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      231     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      253     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4     257
6 months    ki1000108-IRC              INDIA                          0                 0        0     304
6 months    ki1000108-IRC              INDIA                          0                 1        0     304
6 months    ki1000108-IRC              INDIA                          1                 0      289     304
6 months    ki1000108-IRC              INDIA                          1                 1       15     304
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       57     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        1     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      472     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1        4     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       42     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      535     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      178     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      537     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     715
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      714     882
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       12     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      154     882
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        2     882
6 months    ki1114097-CONTENT          PERU                           0                 0       14     215
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
6 months    ki1114097-CONTENT          PERU                           1                 0      201     215
6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    30095   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      434   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2894   33447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       24   33447
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     8223    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       63    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1156    9444
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1        2    9444
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      195     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      166     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0      210     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      123     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        0     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       98     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     221
24 months   ki0047075b-MAL-ED          PERU                           0                 0      151     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       49     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       18     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      220     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      200     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      259     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1     260
24 months   ki1000108-IRC              INDIA                          0                 0        0     305
24 months   ki1000108-IRC              INDIA                          0                 1        0     305
24 months   ki1000108-IRC              INDIA                          1                 0      303     305
24 months   ki1000108-IRC              INDIA                          1                 1        2     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       48     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1        2     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      368     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1        8     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       44     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      525     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      168     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      342     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      598     768
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       26     768
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      140     768
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1        4     768
24 months   ki1114097-CONTENT          PERU                           0                 0       10     164
24 months   ki1114097-CONTENT          PERU                           0                 1        0     164
24 months   ki1114097-CONTENT          PERU                           1                 0      154     164
24 months   ki1114097-CONTENT          PERU                           1                 1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    15165   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      617   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1294   17122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       46   17122
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     7883    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      244    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1101    9236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        8    9236


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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/735da21c-9bfb-476e-a751-1f3cd4368260/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/735da21c-9bfb-476e-a751-1f3cd4368260/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/735da21c-9bfb-476e-a751-1f3cd4368260/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/735da21c-9bfb-476e-a751-1f3cd4368260/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0160776   0.0136305   0.0185247
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0172973   0.0068603   0.0277343
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0142160   0.0120529   0.0163791
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0082248   0.0015242   0.0149254
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.0390952   0.0346458   0.0435446
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0343284   0.0208189   0.0478378
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.0300234   0.0240955   0.0359512
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.0072137   0.0008121   0.0136153


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0161496   0.0137846   0.0185146
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0136933   0.0116146   0.0157720
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0387221   0.0343912   0.0430530
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0272845   0.0219902   0.0325789


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   1                    0                 1.0758627   0.5747645   2.0138344
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   1                    0                 0.5785605   0.2539917   1.3178869
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    0                 0.8780716   0.5890400   1.3089258
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    0                 0.2402696   0.0968077   0.5963316


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                 0.0000720   -0.0005651    0.0007091
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.0005227   -0.0011259    0.0000806
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.0003731   -0.0014598    0.0007137
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                -0.0027388   -0.0038271   -0.0016506


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   0                    NA                 0.0044593   -0.0357869    0.0431418
6 months    kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.0381709   -0.0835833    0.0053384
24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                -0.0096343   -0.0381313    0.0180805
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                -0.1003807   -0.1351428   -0.0666830
