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

agecat        studyid                    country                        impfloor    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        2     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      212     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      206     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       14     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        1     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      201     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       19     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      124     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0      102     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     229
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      212     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       58     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      233     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      248     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       13     261
0-24 months   ki1000108-IRC              INDIA                          0                   0        0     306
0-24 months   ki1000108-IRC              INDIA                          0                   1        0     306
0-24 months   ki1000108-IRC              INDIA                          1                   0      271     306
0-24 months   ki1000108-IRC              INDIA                          1                   1       35     306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       53     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        6     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      432     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       41     532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      574     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      650     930
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1      114     930
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      140     930
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       26     930
0-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0    26908   31290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1656   31290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2598   31290
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      128   31290
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     8287   10302
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      787   10302
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1185   10302
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       43   10302
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       18     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      217     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        6     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0      207     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     210
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       14     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1        1     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0      202     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       17     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      123     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        3     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0      101     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     228
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      213     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       58     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      231     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      220     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       31     251
0-6 months    ki1000108-IRC              INDIA                          0                   0        0     300
0-6 months    ki1000108-IRC              INDIA                          0                   1        0     300
0-6 months    ki1000108-IRC              INDIA                          1                   0      249     300
0-6 months    ki1000108-IRC              INDIA                          1                   1       51     300
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       52     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        1     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      571     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       13     637
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      624     846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       76     846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      124     846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       22     846
0-6 months    ki1114097-CONTENT          PERU                           0                   0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           1                   0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       14     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      203     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      193     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       13     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      191     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       25     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      123     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       99     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     224
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      193     251
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       56     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      230     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      224     236
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     236
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       12     236
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     236
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      244     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       17     261
6-24 months   ki1000108-IRC              INDIA                          0                   0        0     306
6-24 months   ki1000108-IRC              INDIA                          0                   1        0     306
6-24 months   ki1000108-IRC              INDIA                          1                   0      271     306
6-24 months   ki1000108-IRC              INDIA                          1                   1       35     306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       49     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        7     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      386     490
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       48     490
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       40     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        8     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      523     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       30     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      165     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        8     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      490     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       34     697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      598     906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1      146     906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      130     906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       32     906
6-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
6-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     7691    9854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      995    9854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1109    9854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       59    9854


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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7288d4c0-9d48-4110-8c36-8a36b0d682e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7288d4c0-9d48-4110-8c36-8a36b0d682e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7288d4c0-9d48-4110-8c36-8a36b0d682e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7288d4c0-9d48-4110-8c36-8a36b0d682e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949   0.0244994   0.1788905
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808   0.0613003   0.1120612
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079   0.0071767   0.0602390
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319   0.0206325   0.0518313
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1485215   0.1128269   0.1842161
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1598180   0.0830539   0.2365822
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0570833   0.0528633   0.0613032
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0315865   0.0212522   0.0419207
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0854351   0.0761560   0.0947142
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0375825   0.0163566   0.0588084
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1081895   0.0755862   0.1407929
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1531158   0.0711693   0.2350622
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1250000   0.0382925   0.2117075
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1105991   0.0810617   0.1401364
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1666667   0.0611496   0.2721838
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0542495   0.0353551   0.0731440
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0462428   0.0149260   0.0775596
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0648855   0.0437798   0.0859912
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1888717   0.1496773   0.2280661
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1339664   0.0745054   0.1934274
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1145781   0.1033689   0.1257872
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0653061   0.0366910   0.0939212


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1505376   0.1180002   0.1830751
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0570150   0.0529229   0.0611071
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0805669   0.0719078   0.0892259
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1158392   0.0853051   0.1463734
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1122449   0.0842665   0.1402233
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1964680   0.1598389   0.2330971
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1069616   0.0962313   0.1176919


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.8523608   0.3778157   1.9229455
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.0748792   0.4382605   2.6362525
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 1.0760601   0.6302042   1.8373495
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 0.5533403   0.3970925   0.7710685
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.4398954   0.2496423   0.7751410
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 1.4152547   0.7664044   2.6134320
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 0.8847926   0.4207578   1.8605908
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 0.3254973   0.1580282   0.6704404
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 1.4031488   0.6619445   2.9743075
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.7092984   0.4364533   1.1527104
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.5699701   0.3661402   0.8872717


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0133491   -0.0855990    0.0589008
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0019086   -0.0213643    0.0251814
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0020162   -0.0131268    0.0171591
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0000682   -0.0014465    0.0013100
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0048682   -0.0076772   -0.0020593
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0076497   -0.0076448    0.0229442
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.0127551   -0.0938880    0.0683778
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -0.1034387   -0.2021029   -0.0047745
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0140155   -0.0143823    0.0424133
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0075963   -0.0086412    0.0238337
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0076164   -0.0109063   -0.0043266


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1510999   -1.3407505    0.4339290
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.0535869   -0.8871031    0.5253583
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0133930   -0.0925075    0.1090282
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                -0.0011970   -0.0256714    0.0226934
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0604248   -0.0960474   -0.0259600
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0660372   -0.0748854    0.1884843
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                -0.1136364   -1.1304548    0.4178774
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                -1.6359649   -3.6693031   -0.4880831
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                 0.2325901   -0.4099241    0.5823052
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                 0.0386641   -0.0475253    0.1177619
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0712073   -0.1032849   -0.0400622
