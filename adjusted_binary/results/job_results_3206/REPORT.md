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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        nrooms    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     1                0      141    234
ki0047075b-MAL-ED          BANGLADESH                     1                1        5    234
ki0047075b-MAL-ED          BANGLADESH                     2                0       47    234
ki0047075b-MAL-ED          BANGLADESH                     2                1        1    234
ki0047075b-MAL-ED          BANGLADESH                     3                0       26    234
ki0047075b-MAL-ED          BANGLADESH                     3                1        2    234
ki0047075b-MAL-ED          BANGLADESH                     4+               0       12    234
ki0047075b-MAL-ED          BANGLADESH                     4+               1        0    234
ki0047075b-MAL-ED          BRAZIL                         1                0        4    204
ki0047075b-MAL-ED          BRAZIL                         1                1        0    204
ki0047075b-MAL-ED          BRAZIL                         2                0       16    204
ki0047075b-MAL-ED          BRAZIL                         2                1        3    204
ki0047075b-MAL-ED          BRAZIL                         3                0       51    204
ki0047075b-MAL-ED          BRAZIL                         3                1        8    204
ki0047075b-MAL-ED          BRAZIL                         4+               0      115    204
ki0047075b-MAL-ED          BRAZIL                         4+               1        7    204
ki0047075b-MAL-ED          INDIA                          1                0       79    233
ki0047075b-MAL-ED          INDIA                          1                1        5    233
ki0047075b-MAL-ED          INDIA                          2                0       72    233
ki0047075b-MAL-ED          INDIA                          2                1        4    233
ki0047075b-MAL-ED          INDIA                          3                0       45    233
ki0047075b-MAL-ED          INDIA                          3                1        3    233
ki0047075b-MAL-ED          INDIA                          4+               0       24    233
ki0047075b-MAL-ED          INDIA                          4+               1        1    233
ki0047075b-MAL-ED          NEPAL                          1                0       48    235
ki0047075b-MAL-ED          NEPAL                          1                1        3    235
ki0047075b-MAL-ED          NEPAL                          2                0       30    235
ki0047075b-MAL-ED          NEPAL                          2                1        1    235
ki0047075b-MAL-ED          NEPAL                          3                0       21    235
ki0047075b-MAL-ED          NEPAL                          3                1        1    235
ki0047075b-MAL-ED          NEPAL                          4+               0      125    235
ki0047075b-MAL-ED          NEPAL                          4+               1        6    235
ki0047075b-MAL-ED          PERU                           1                0       17    258
ki0047075b-MAL-ED          PERU                           1                1        2    258
ki0047075b-MAL-ED          PERU                           2                0       43    258
ki0047075b-MAL-ED          PERU                           2                1        5    258
ki0047075b-MAL-ED          PERU                           3                0       51    258
ki0047075b-MAL-ED          PERU                           3                1        7    258
ki0047075b-MAL-ED          PERU                           4+               0      128    258
ki0047075b-MAL-ED          PERU                           4+               1        5    258
ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       14    253
ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0    253
ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       18    253
ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        3    253
ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       24    253
ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        1    253
ki0047075b-MAL-ED          SOUTH AFRICA                   4+               0      178    253
ki0047075b-MAL-ED          SOUTH AFRICA                   4+               1       15    253
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       13    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       61    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       65    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               0      105    245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+               1        1    245
ki1000108-CMC-V-BCS-2002   INDIA                          1                0      189    370
ki1000108-CMC-V-BCS-2002   INDIA                          1                1       11    370
ki1000108-CMC-V-BCS-2002   INDIA                          2                0      102    370
ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3    370
ki1000108-CMC-V-BCS-2002   INDIA                          3                0       48    370
ki1000108-CMC-V-BCS-2002   INDIA                          3                1        3    370
ki1000108-CMC-V-BCS-2002   INDIA                          4+               0       14    370
ki1000108-CMC-V-BCS-2002   INDIA                          4+               1        0    370
ki1000108-IRC              INDIA                          1                0      177    408
ki1000108-IRC              INDIA                          1                1        8    408
ki1000108-IRC              INDIA                          2                0      154    408
ki1000108-IRC              INDIA                          2                1       16    408
ki1000108-IRC              INDIA                          3                0       34    408
ki1000108-IRC              INDIA                          3                1        2    408
ki1000108-IRC              INDIA                          4+               0       15    408
ki1000108-IRC              INDIA                          4+               1        2    408
ki1017093b-PROVIDE         BANGLADESH                     1                0      484    690
ki1017093b-PROVIDE         BANGLADESH                     1                1       14    690
ki1017093b-PROVIDE         BANGLADESH                     2                0      103    690
ki1017093b-PROVIDE         BANGLADESH                     2                1        4    690
ki1017093b-PROVIDE         BANGLADESH                     3                0       59    690
ki1017093b-PROVIDE         BANGLADESH                     3                1        3    690
ki1017093b-PROVIDE         BANGLADESH                     4+               0       22    690
ki1017093b-PROVIDE         BANGLADESH                     4+               1        1    690
ki1113344-GMS-Nepal        NEPAL                          1                0       80   1188
ki1113344-GMS-Nepal        NEPAL                          1                1        0   1188
ki1113344-GMS-Nepal        NEPAL                          2                0      246   1188
ki1113344-GMS-Nepal        NEPAL                          2                1        8   1188
ki1113344-GMS-Nepal        NEPAL                          3                0      282   1188
ki1113344-GMS-Nepal        NEPAL                          3                1       16   1188
ki1113344-GMS-Nepal        NEPAL                          4+               0      550   1188
ki1113344-GMS-Nepal        NEPAL                          4+               1        6   1188
ki1114097-CONTENT          PERU                           1                0       43    214
ki1114097-CONTENT          PERU                           1                1        1    214
ki1114097-CONTENT          PERU                           2                0       53    214
ki1114097-CONTENT          PERU                           2                1        1    214
ki1114097-CONTENT          PERU                           3                0       34    214
ki1114097-CONTENT          PERU                           3                1        5    214
ki1114097-CONTENT          PERU                           4+               0       70    214
ki1114097-CONTENT          PERU                           4+               1        7    214


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















