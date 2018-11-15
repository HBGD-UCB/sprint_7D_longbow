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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        feducyrs    s03rec24   n_cell      n
-------------------------  -----------------------------  ---------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Low                0       38    140
ki0047075b-MAL-ED          BANGLADESH                     Low                1        1    140
ki0047075b-MAL-ED          BANGLADESH                     Medium             0       48    140
ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2    140
ki0047075b-MAL-ED          BANGLADESH                     High               0       50    140
ki0047075b-MAL-ED          BANGLADESH                     High               1        1    140
ki0047075b-MAL-ED          INDIA                          Low                0       57    146
ki0047075b-MAL-ED          INDIA                          Low                1        1    146
ki0047075b-MAL-ED          INDIA                          Medium             0       43    146
ki0047075b-MAL-ED          INDIA                          Medium             1        1    146
ki0047075b-MAL-ED          INDIA                          High               0       40    146
ki0047075b-MAL-ED          INDIA                          High               1        4    146
ki0047075b-MAL-ED          NEPAL                          Low                0       27     96
ki0047075b-MAL-ED          NEPAL                          Low                1        0     96
ki0047075b-MAL-ED          NEPAL                          Medium             0       25     96
ki0047075b-MAL-ED          NEPAL                          Medium             1        2     96
ki0047075b-MAL-ED          NEPAL                          High               0       39     96
ki0047075b-MAL-ED          NEPAL                          High               1        3     96
ki0047075b-MAL-ED          PERU                           Low                0       60    236
ki0047075b-MAL-ED          PERU                           Low                1        5    236
ki0047075b-MAL-ED          PERU                           Medium             0       54    236
ki0047075b-MAL-ED          PERU                           Medium             1        4    236
ki0047075b-MAL-ED          PERU                           High               0      105    236
ki0047075b-MAL-ED          PERU                           High               1        8    236
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       36    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       26    104
ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        3    104
ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       37    104
ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2    104
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       57    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        0    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       18    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        0    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      128    204
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        1    204
ki1017093b-PROVIDE         BANGLADESH                     Low                0      228    690
ki1017093b-PROVIDE         BANGLADESH                     Low                1        6    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             0      224    690
ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3    690
ki1017093b-PROVIDE         BANGLADESH                     High               0      216    690
ki1017093b-PROVIDE         BANGLADESH                     High               1       13    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1195   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        2   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      635   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      432   2264
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0   2264
ki1113344-GMS-Nepal        NEPAL                          Low                0      246    593
ki1113344-GMS-Nepal        NEPAL                          Low                1        9    593
ki1113344-GMS-Nepal        NEPAL                          Medium             0      192    593
ki1113344-GMS-Nepal        NEPAL                          Medium             1        3    593
ki1113344-GMS-Nepal        NEPAL                          High               0      140    593
ki1113344-GMS-Nepal        NEPAL                          High               1        3    593


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED
















