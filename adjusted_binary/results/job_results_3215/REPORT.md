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

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* hhwealth_quart
* month
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_month
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        pers_wast    s03rec24   n_cell      n
-------------------------  -----------------------------  ----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                   0      232    247
ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    247
ki0047075b-MAL-ED          BANGLADESH                     1                   0        7    247
ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    247
ki0047075b-MAL-ED          BRAZIL                         0                   0      204    223
ki0047075b-MAL-ED          BRAZIL                         0                   1       18    223
ki0047075b-MAL-ED          BRAZIL                         1                   0        1    223
ki0047075b-MAL-ED          BRAZIL                         1                   1        0    223
ki0047075b-MAL-ED          INDIA                          0                   0      213    246
ki0047075b-MAL-ED          INDIA                          0                   1       13    246
ki0047075b-MAL-ED          INDIA                          1                   0       20    246
ki0047075b-MAL-ED          INDIA                          1                   1        0    246
ki0047075b-MAL-ED          NEPAL                          0                   0      222    238
ki0047075b-MAL-ED          NEPAL                          0                   1       11    238
ki0047075b-MAL-ED          NEPAL                          1                   0        5    238
ki0047075b-MAL-ED          NEPAL                          1                   1        0    238
ki0047075b-MAL-ED          PERU                           0                   0      265    284
ki0047075b-MAL-ED          PERU                           0                   1       19    284
ki0047075b-MAL-ED          PERU                           1                   0        0    284
ki0047075b-MAL-ED          PERU                           1                   1        0    284
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      276    302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       19    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        7    302
ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    302
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      252    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    253
ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      296    367
ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       15    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       54    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    367
ki1000108-IRC              INDIA                          0                   0      313    410
ki1000108-IRC              INDIA                          0                   1       26    410
ki1000108-IRC              INDIA                          1                   0       69    410
ki1000108-IRC              INDIA                          1                   1        2    410
ki1000109-EE               PAKISTAN                       0                   0      318    350
ki1000109-EE               PAKISTAN                       0                   1        0    350
ki1000109-EE               PAKISTAN                       1                   0       32    350
ki1000109-EE               PAKISTAN                       1                   1        0    350
ki1000109-ResPak           PAKISTAN                       0                   0      146    166
ki1000109-ResPak           PAKISTAN                       0                   1        0    166
ki1000109-ResPak           PAKISTAN                       1                   0       20    166
ki1000109-ResPak           PAKISTAN                       1                   1        0    166
ki1017093b-PROVIDE         BANGLADESH                     0                   0      644    690
ki1017093b-PROVIDE         BANGLADESH                     0                   1       20    690
ki1017093b-PROVIDE         BANGLADESH                     1                   0       24    690
ki1017093b-PROVIDE         BANGLADESH                     1                   1        2    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     2210   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        2   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       64   2276
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0   2276
ki1101329-Keneba           GAMBIA                         0                   0     2142   2285
ki1101329-Keneba           GAMBIA                         0                   1       80   2285
ki1101329-Keneba           GAMBIA                         1                   0       63   2285
ki1101329-Keneba           GAMBIA                         1                   1        0   2285
ki1113344-GMS-Nepal        NEPAL                          0                   0     1012   1188
ki1113344-GMS-Nepal        NEPAL                          0                   1       30   1188
ki1113344-GMS-Nepal        NEPAL                          1                   0      146   1188
ki1113344-GMS-Nepal        NEPAL                          1                   1        0   1188
ki1114097-CMIN             BANGLADESH                     0                   0      237    259
ki1114097-CMIN             BANGLADESH                     0                   1       11    259
ki1114097-CMIN             BANGLADESH                     1                   0       11    259
ki1114097-CMIN             BANGLADESH                     1                   1        0    259
ki1114097-CMIN             PERU                           0                   0      621    634
ki1114097-CMIN             PERU                           0                   1        1    634
ki1114097-CMIN             PERU                           1                   0       12    634
ki1114097-CMIN             PERU                           1                   1        0    634
ki1114097-CONTENT          PERU                           0                   0      200    214
ki1114097-CONTENT          PERU                           0                   1       14    214
ki1114097-CONTENT          PERU                           1                   0        0    214
ki1114097-CONTENT          PERU                           1                   1        0    214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















