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

unadjusted

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0    16517   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1970   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1009   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1       67   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      693     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       58     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       65     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        6     822
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      346     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       17     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     441
6 months    ki1114097-CONTENT          PERU                           0                  0       14     215
6 months    ki1114097-CONTENT          PERU                           0                  1        0     215
6 months    ki1114097-CONTENT          PERU                           1                  0      197     215
6 months    ki1114097-CONTENT          PERU                           1                  1        4     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0    14328   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      980   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1429   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1       36   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3980    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      254    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      574    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       16    4824
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      278     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       35     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       69     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        3     385
24 months   ki1114097-CONTENT          PERU                           0                  0       10     164
24 months   ki1114097-CONTENT          PERU                           0                  1        0     164
24 months   ki1114097-CONTENT          PERU                           1                  0      151     164
24 months   ki1114097-CONTENT          PERU                           1                  1        3     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6638    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1297    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      629    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       45    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3766    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      414    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      544    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       22    4746


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/58b32f6d-cb41-4ca2-9189-0ee3bf4ad983/9c57425a-dbd8-4516-bda0-9df8b5235e7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58b32f6d-cb41-4ca2-9189-0ee3bf4ad983/9c57425a-dbd8-4516-bda0-9df8b5235e7d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58b32f6d-cb41-4ca2-9189-0ee3bf4ad983/9c57425a-dbd8-4516-bda0-9df8b5235e7d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58b32f6d-cb41-4ca2-9189-0ee3bf4ad983/9c57425a-dbd8-4516-bda0-9df8b5235e7d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1065614   0.1017202   0.1114025
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0622677   0.0468239   0.0777114
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0772304   0.0544983   0.0999624
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0845070   0.0003034   0.1687107
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1363636   0.0348769   0.2378504
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0148423   0.0046251   0.0250595
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0297952   0.0154049   0.0441854
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0640188   0.0599190   0.0681186
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0245734   0.0166417   0.0325050
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0599906   0.0525705   0.0674106
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0271186   0.0118993   0.0423380
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4400000   0.3022497   0.5777503
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1883289   0.1488164   0.2278415
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2444444   0.1187715   0.3701174
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0714286   0.0495251   0.0933320
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0773810   0.0369378   0.1178241
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0635838   0.0378478   0.0893198
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1634531   0.1542849   0.1726212
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0667656   0.0459874   0.0875438
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0990431   0.0887054   0.1093808
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0388693   0.0204899   0.0572487


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1041251   0.0994430   0.1088072
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0605735   0.0567154   0.0644317
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0559701   0.0491990   0.0627413
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2177986   0.1786036   0.2569935
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1558834   0.1471384   0.1646284
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0918668   0.0824774   0.1012563


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.5843361   0.4540856   0.7519479
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.0942205   0.3861879   3.1003519
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.1088435   0.0394932   0.2999735
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.7576483   0.3166354   1.8129082
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.3838462   0.2769038   0.5320906
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.4520486   0.2540436   0.8043813
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.4280203   0.2936242   0.6239312
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.2922078   0.1605881   0.5317045
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.8216985   0.4242492   1.5914903
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.4084694   0.2980622   0.5597734
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.3924481   0.2413027   0.6382669


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0024362   -0.0033719   -0.0015006
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0006285   -0.0069333    0.0081904
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1123499   -0.2066876   -0.0180122
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0071580   -0.0311882    0.0168721
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0034453   -0.0042525   -0.0026381
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0040204   -0.0061613   -0.0018795
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.2222014   -0.3489593   -0.0954435
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1595224   -0.2772019   -0.0418429
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0092876   -0.0415615    0.0229864
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0075697   -0.0093640   -0.0057754
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0071762   -0.0098278   -0.0045246


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0233972   -0.0324070   -0.0144660
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0080726   -0.0938240    0.1004769
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                -4.6785714   -9.2378919   -2.1496888
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.2225208   -1.2432419    0.3337513
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0568775   -0.0700351   -0.0438817
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0718312   -0.1103581   -0.0346411
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -1.0202151   -1.6995276   -0.5118456
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -1.8784580   -3.5888603   -0.8055727
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.1363946   -0.7219557    0.2500431
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0485599   -0.0600767   -0.0371682
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0781155   -0.1065696   -0.0503932
