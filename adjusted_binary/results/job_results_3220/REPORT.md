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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_nrooms
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country                        safeh20    s03rec24   n_cell     n
-------------------  -----------------------------  --------  ---------  -------  ----
ki0047075b-MAL-ED    BANGLADESH                     0                 0      226   234
ki0047075b-MAL-ED    BANGLADESH                     0                 1        8   234
ki0047075b-MAL-ED    BANGLADESH                     1                 0        0   234
ki0047075b-MAL-ED    BANGLADESH                     1                 1        0   234
ki0047075b-MAL-ED    BRAZIL                         0                 0      129   138
ki0047075b-MAL-ED    BRAZIL                         0                 1        9   138
ki0047075b-MAL-ED    BRAZIL                         1                 0        0   138
ki0047075b-MAL-ED    BRAZIL                         1                 1        0   138
ki0047075b-MAL-ED    INDIA                          0                 0      220   233
ki0047075b-MAL-ED    INDIA                          0                 1       13   233
ki0047075b-MAL-ED    INDIA                          1                 0        0   233
ki0047075b-MAL-ED    INDIA                          1                 1        0   233
ki0047075b-MAL-ED    NEPAL                          0                 0      221   233
ki0047075b-MAL-ED    NEPAL                          0                 1       11   233
ki0047075b-MAL-ED    NEPAL                          1                 0        1   233
ki0047075b-MAL-ED    NEPAL                          1                 1        0   233
ki0047075b-MAL-ED    PERU                           0                 0      220   248
ki0047075b-MAL-ED    PERU                           0                 1       17   248
ki0047075b-MAL-ED    PERU                           1                 0       11   248
ki0047075b-MAL-ED    PERU                           1                 1        0   248
ki0047075b-MAL-ED    SOUTH AFRICA                   0                 0      197   251
ki0047075b-MAL-ED    SOUTH AFRICA                   0                 1       16   251
ki0047075b-MAL-ED    SOUTH AFRICA                   1                 0       36   251
ki0047075b-MAL-ED    SOUTH AFRICA                   1                 1        2   251
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                 0       77   244
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                 1        1   244
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                 0      166   244
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                 1        0   244
ki1017093b-PROVIDE   BANGLADESH                     0                 0        0   688
ki1017093b-PROVIDE   BANGLADESH                     0                 1        0   688
ki1017093b-PROVIDE   BANGLADESH                     1                 0      666   688
ki1017093b-PROVIDE   BANGLADESH                     1                 1       22   688
ki1114097-CONTENT    PERU                           0                 0        3    57
ki1114097-CONTENT    PERU                           0                 1        0    57
ki1114097-CONTENT    PERU                           1                 0       51    57
ki1114097-CONTENT    PERU                           1                 1        3    57


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















