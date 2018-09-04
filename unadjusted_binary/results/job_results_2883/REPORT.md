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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        mbmi                   s03rec24   n_cell      n
-------------------------  -----------------------------  --------------------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 0      148    241
ki0047075b-MAL-ED          BANGLADESH                     Normal weight                 1        4    241
ki0047075b-MAL-ED          BANGLADESH                     Underweight                   0       32    241
ki0047075b-MAL-ED          BANGLADESH                     Underweight                   1        0    241
ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           0       53    241
ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese           1        4    241
ki0047075b-MAL-ED          BRAZIL                         Normal weight                 0       80    213
ki0047075b-MAL-ED          BRAZIL                         Normal weight                 1        6    213
ki0047075b-MAL-ED          BRAZIL                         Underweight                   0        7    213
ki0047075b-MAL-ED          BRAZIL                         Underweight                   1        2    213
ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           0      109    213
ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese           1        9    213
ki0047075b-MAL-ED          INDIA                          Normal weight                 0      130    238
ki0047075b-MAL-ED          INDIA                          Normal weight                 1       10    238
ki0047075b-MAL-ED          INDIA                          Underweight                   0       45    238
ki0047075b-MAL-ED          INDIA                          Underweight                   1        3    238
ki0047075b-MAL-ED          INDIA                          Overweight or Obese           0       50    238
ki0047075b-MAL-ED          INDIA                          Overweight or Obese           1        0    238
ki0047075b-MAL-ED          NEPAL                          Normal weight                 0      129    237
ki0047075b-MAL-ED          NEPAL                          Normal weight                 1        4    237
ki0047075b-MAL-ED          NEPAL                          Underweight                   0        0    237
ki0047075b-MAL-ED          NEPAL                          Underweight                   1        0    237
ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           0       97    237
ki0047075b-MAL-ED          NEPAL                          Overweight or Obese           1        7    237
ki0047075b-MAL-ED          PERU                           Normal weight                 0      139    272
ki0047075b-MAL-ED          PERU                           Normal weight                 1        9    272
ki0047075b-MAL-ED          PERU                           Underweight                   0        5    272
ki0047075b-MAL-ED          PERU                           Underweight                   1        0    272
ki0047075b-MAL-ED          PERU                           Overweight or Obese           0      109    272
ki0047075b-MAL-ED          PERU                           Overweight or Obese           1       10    272
ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 0       98    264
ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                 1        8    264
ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   0        7    264
ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                   1        1    264
ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           0      141    264
ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese           1        9    264
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 0      171    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                 1        1    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   0       14    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                   1        0    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0       62    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        0    248
ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 0      403    660
ki1017093b-PROVIDE         BANGLADESH                     Normal weight                 1       14    660
ki1017093b-PROVIDE         BANGLADESH                     Underweight                   0      123    660
ki1017093b-PROVIDE         BANGLADESH                     Underweight                   1        3    660
ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           0      112    660
ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese           1        5    660
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 0     1170   2231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                 1        1   2231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   0       35   2231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                   1        0   2231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           0     1024   2231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese           1        1   2231


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED
















