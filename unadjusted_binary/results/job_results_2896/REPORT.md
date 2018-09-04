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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        trth2o    s03rec24   n_cell     n
-------------------------  -----------------------------  -------  ---------  -------  ----
ki0047075b-MAL-ED          BANGLADESH                     0                0        2   135
ki0047075b-MAL-ED          BANGLADESH                     0                1        0   135
ki0047075b-MAL-ED          BANGLADESH                     1                0      126   135
ki0047075b-MAL-ED          BANGLADESH                     1                1        7   135
ki0047075b-MAL-ED          BRAZIL                         0                0       80   103
ki0047075b-MAL-ED          BRAZIL                         0                1       10   103
ki0047075b-MAL-ED          BRAZIL                         1                0       10   103
ki0047075b-MAL-ED          BRAZIL                         1                1        3   103
ki0047075b-MAL-ED          INDIA                          0                0        5     9
ki0047075b-MAL-ED          INDIA                          0                1        0     9
ki0047075b-MAL-ED          INDIA                          1                0        3     9
ki0047075b-MAL-ED          INDIA                          1                1        1     9
ki0047075b-MAL-ED          NEPAL                          0                0       13    83
ki0047075b-MAL-ED          NEPAL                          0                1        1    83
ki0047075b-MAL-ED          NEPAL                          1                0       65    83
ki0047075b-MAL-ED          NEPAL                          1                1        4    83
ki0047075b-MAL-ED          PERU                           0                0       10    49
ki0047075b-MAL-ED          PERU                           0                1        0    49
ki0047075b-MAL-ED          PERU                           1                0       35    49
ki0047075b-MAL-ED          PERU                           1                1        4    49
ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       10    12
ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0    12
ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        2    12
ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0    12
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       37    43
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0    43
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        6    43
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    43
ki1000108-CMC-V-BCS-2002   INDIA                          0                0        0   119
ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0   119
ki1000108-CMC-V-BCS-2002   INDIA                          1                0      113   119
ki1000108-CMC-V-BCS-2002   INDIA                          1                1        6   119
ki1000108-IRC              INDIA                          0                0        0   122
ki1000108-IRC              INDIA                          0                1        0   122
ki1000108-IRC              INDIA                          1                0      113   122
ki1000108-IRC              INDIA                          1                1        9   122
ki1017093b-PROVIDE         BANGLADESH                     0                0      652   690
ki1017093b-PROVIDE         BANGLADESH                     0                1       22   690
ki1017093b-PROVIDE         BANGLADESH                     1                0       16   690
ki1017093b-PROVIDE         BANGLADESH                     1                1        0   690
ki1113344-GMS-Nepal        NEPAL                          0                0        6     8
ki1113344-GMS-Nepal        NEPAL                          0                1        0     8
ki1113344-GMS-Nepal        NEPAL                          1                0        2     8
ki1113344-GMS-Nepal        NEPAL                          1                1        0     8


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


ALL STRATA DROPPED. JOB FINISHED
















