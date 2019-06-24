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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        impfloor    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      189     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       34     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       14     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        5     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      206     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0      173     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1       47     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        6     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       94     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        9     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      116     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       10     229
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       55     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      206     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      215     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      211     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       23     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      198     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       63     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     261
0-24 months   ki1000108-IRC              INDIA                          1                 0      253     306
0-24 months   ki1000108-IRC              INDIA                          1                 1       53     306
0-24 months   ki1000108-IRC              INDIA                          0                 0        0     306
0-24 months   ki1000108-IRC              INDIA                          0                 1        0     306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      437     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      112     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       49     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       23     621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      563     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       75     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       47     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       15     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      524     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       56     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       15     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       62     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       23     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      261     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      128     474
0-24 months   ki1114097-CONTENT          PERU                           1                 0      197     215
0-24 months   ki1114097-CONTENT          PERU                           1                 1        4     215
0-24 months   ki1114097-CONTENT          PERU                           0                 0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                 1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2003   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      115   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    22480   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     2260   26858
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      591    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       57    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3958    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      819    5425
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      215     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       18     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      208     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0      205     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1       15     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0       13     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      125     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        1     229
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       58     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      213     272
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      232     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        4     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      233     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       24     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
0-6 months    ki1000108-IRC              INDIA                          1                 0      289     305
0-6 months    ki1000108-IRC              INDIA                          1                 1       16     305
0-6 months    ki1000108-IRC              INDIA                          0                 0        0     305
0-6 months    ki1000108-IRC              INDIA                          0                 1        0     305
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      512     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       35     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       64     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        8     619
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      615     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       55     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      567     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       13     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      174     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        4     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       81     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        4     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      373     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       16     474
0-6 months    ki1114097-CONTENT          PERU                           1                 0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           0                 0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2044   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       62   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    23655   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      990   26751
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      604    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1       12    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4341    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1      122    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      190     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       31     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       14     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      203     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0      178     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1       42     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0       10     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       97     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      117     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        9     228
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       54     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      205     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      215     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       19     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      210     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       21     243
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      211     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       50     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     261
6-24 months   ki1000108-IRC              INDIA                          1                 0      262     306
6-24 months   ki1000108-IRC              INDIA                          1                 1       44     306
6-24 months   ki1000108-IRC              INDIA                          0                 0        0     306
6-24 months   ki1000108-IRC              INDIA                          0                 1        0     306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      383     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       96     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       42     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       18     539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      503     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       62     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       36     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       13     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      504     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      163     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       15     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       61     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       22     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      254     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      126     463
6-24 months   ki1114097-CONTENT          PERU                           1                 0      197     215
6-24 months   ki1114097-CONTENT          PERU                           1                 1        4     215
6-24 months   ki1114097-CONTENT          PERU                           0                 0       14     215
6-24 months   ki1114097-CONTENT          PERU                           0                 1        0     215
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1449   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       58   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    14298   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     1436   17241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      597    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       48    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4023    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      753    5421


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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/345573b7-8d5e-4ad6-90c9-428d28a51ca3/98fd71b8-6e47-44e4-98b1-4f1a9628ad8f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/345573b7-8d5e-4ad6-90c9-428d28a51ca3/98fd71b8-6e47-44e4-98b1-4f1a9628ad8f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/345573b7-8d5e-4ad6-90c9-428d28a51ca3/98fd71b8-6e47-44e4-98b1-4f1a9628ad8f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/345573b7-8d5e-4ad6-90c9-428d28a51ca3/98fd71b8-6e47-44e4-98b1-4f1a9628ad8f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1524664   0.1051882   0.1997445
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647468   0.4615690
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.2136364   0.1593598   0.2679129
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.4000000   0.1515528   0.6484472
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0873786   0.0327239   0.1420334
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0793651   0.0320639   0.1266662
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2058608   0.1719727   0.2397489
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3120910   0.2006114   0.4235707
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1183298   0.0933056   0.1433540
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2353302   0.1259681   0.3446924
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0957548   0.0717755   0.1197340
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0863891   0.0447802   0.1279980
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2807522   0.1868546   0.3746497
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3282203   0.2814849   0.3749557
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0688617   0.0526297   0.0850936
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0896793   0.0856769   0.0936816
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0901648   0.0551570   0.1251727
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1684179   0.1563842   0.1804515
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0639854   0.0434602   0.0845106
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1111111   0.0384611   0.1837611
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0360502   0.0215748   0.0505255
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1129032   0.0340714   0.1917350
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0271816   0.0162769   0.0380862
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0395127   0.0368842   0.0421413
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0194388   0.0042705   0.0346072
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0272811   0.0216320   0.0329302
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1909091   0.1388646   0.2429536
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.3333333   0.0942649   0.5724018
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0490196   0.0070270   0.0910123
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0714286   0.0263613   0.1164958
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2004875   0.1645730   0.2364021
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2936578   0.1712539   0.4160616
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1109907   0.0851640   0.1368174
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2751772   0.1483137   0.4020408
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0873653   0.0637654   0.1109651
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0797393   0.0404375   0.1190411
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2557171   0.1615200   0.3499143
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3290472   0.2817258   0.3763686
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0548338   0.0388982   0.0707694
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0896317   0.0847605   0.0945030
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0757423   0.0453137   0.1061708
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1547385   0.1433600   0.1661171


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0829694   0.0471654   0.1187734
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2173913   0.1849240   0.2498586
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3185654   0.2765770   0.3605538
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0884280   0.0845825   0.0922736
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1614747   0.1501435   0.1728058
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0694669   0.0494218   0.0895120
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0393256   0.0368449   0.0418063
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0614035   0.0301736   0.0926335
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2115028   0.1769952   0.2460104
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3196544   0.2771306   0.3621782
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0866539   0.0820272   0.0912806
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1477587   0.1371623   0.1583552


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.7260062   0.7638160   3.900281
0-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.8723404   0.9570686   3.662913
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 0.9082892   0.3828292   2.154980
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.5160293   1.0238878   2.244724
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.9887653   1.1949911   3.309805
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9021913   0.5244133   1.552114
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.1690749   0.8140342   1.678966
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.3023105   1.0266242   1.652029
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.8678892   1.2634020   2.761599
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7365079   0.8382638   3.597268
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.1318373   1.3995795   7.008108
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.4536590   0.9677709   2.183496
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.4034332   0.6274648   3.139020
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.7460317   0.8106464   3.760736
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 1.4571428   0.5028581   4.222395
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.4647183   0.9302841   2.306177
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.4792819   1.4810036   4.150455
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9127121   0.5204234   1.600703
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.2867625   0.8675221   1.908606
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.6346071   1.2163180   2.196745
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.0429616   1.3608211   3.067040


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0086907   -0.0077585   0.0251398
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0118956   -0.0053544   0.0291455
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0044092   -0.0441829   0.0353645
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0115305   -0.0017276   0.0247886
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0102416    0.0003477   0.0201355
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0020872   -0.0131602   0.0089858
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0378132   -0.0480205   0.1236470
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0195664    0.0037414   0.0353913
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0713098    0.0376655   0.1049542
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0054815   -0.0033801   0.0143431
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0068070   -0.0004742   0.0140882
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0121441    0.0014269   0.0228612
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0069443   -0.0072006   0.0210892
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0090909   -0.0071508   0.0253326
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0123839   -0.0216885   0.0464563
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0110153   -0.0028243   0.0248548
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0111591    0.0006531   0.0216652
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0010639   -0.0125958   0.0104681
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0639373   -0.0227052   0.1505798
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0318201    0.0161171   0.0475231
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0720165    0.0422489   0.1017840


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0539266   -0.0530109   0.1500043
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0527444   -0.0264141   0.1257982
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0531426   -0.6595466   0.3316794
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0530403   -0.0097019   0.1118837
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0796570    0.0007114   0.1523657
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0222832   -0.1474611   0.0892389
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1186985   -0.1961583   0.3506776
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2212687    0.0199245   0.3812493
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4416163    0.1877721   0.6161270
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0789082   -0.0558885   0.1964965
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.1588297   -0.0189113   0.3055651
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3088076   -0.0251489   0.5339731
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2632103   -0.5318760   0.6456247
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0454545   -0.0388318   0.1229023
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.2016807   -0.5826684   0.5973169
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0520809   -0.0153740   0.1150546
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0913562    0.0032769   0.1716520
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0123275   -0.1551486   0.1128353
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.2000201   -0.1221988   0.4297197
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3672089    0.1584948   0.5241568
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4873923    0.2420654   0.6533122
