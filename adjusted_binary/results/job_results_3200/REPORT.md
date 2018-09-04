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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* single
* W_nrooms
* brthmon
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid             country                        fage       s03rec24   n_cell     n
------------------  -----------------------------  --------  ---------  -------  ----
ki0047075b-MAL-ED   BANGLADESH                     >=38              0       67   151
ki0047075b-MAL-ED   BANGLADESH                     >=38              1        2   151
ki0047075b-MAL-ED   BANGLADESH                     <32               0       28   151
ki0047075b-MAL-ED   BANGLADESH                     <32               1        2   151
ki0047075b-MAL-ED   BANGLADESH                     [32-38)           0       51   151
ki0047075b-MAL-ED   BANGLADESH                     [32-38)           1        1   151
ki0047075b-MAL-ED   BRAZIL                         >=38              0       26    79
ki0047075b-MAL-ED   BRAZIL                         >=38              1        4    79
ki0047075b-MAL-ED   BRAZIL                         <32               0       15    79
ki0047075b-MAL-ED   BRAZIL                         <32               1        3    79
ki0047075b-MAL-ED   BRAZIL                         [32-38)           0       27    79
ki0047075b-MAL-ED   BRAZIL                         [32-38)           1        4    79
ki0047075b-MAL-ED   INDIA                          >=38              0       35   161
ki0047075b-MAL-ED   INDIA                          >=38              1        1   161
ki0047075b-MAL-ED   INDIA                          <32               0       50   161
ki0047075b-MAL-ED   INDIA                          <32               1        3   161
ki0047075b-MAL-ED   INDIA                          [32-38)           0       69   161
ki0047075b-MAL-ED   INDIA                          [32-38)           1        3   161
ki0047075b-MAL-ED   NEPAL                          >=38              0       17    79
ki0047075b-MAL-ED   NEPAL                          >=38              1        0    79
ki0047075b-MAL-ED   NEPAL                          <32               0       15    79
ki0047075b-MAL-ED   NEPAL                          <32               1        0    79
ki0047075b-MAL-ED   NEPAL                          [32-38)           0       45    79
ki0047075b-MAL-ED   NEPAL                          [32-38)           1        2    79
ki0047075b-MAL-ED   PERU                           >=38              0       25    84
ki0047075b-MAL-ED   PERU                           >=38              1        2    84
ki0047075b-MAL-ED   PERU                           <32               0       26    84
ki0047075b-MAL-ED   PERU                           <32               1        3    84
ki0047075b-MAL-ED   PERU                           [32-38)           0       25    84
ki0047075b-MAL-ED   PERU                           [32-38)           1        3    84
ki0047075b-MAL-ED   SOUTH AFRICA                   >=38              0       61    90
ki0047075b-MAL-ED   SOUTH AFRICA                   >=38              1        4    90
ki0047075b-MAL-ED   SOUTH AFRICA                   <32               0        8    90
ki0047075b-MAL-ED   SOUTH AFRICA                   <32               1        1    90
ki0047075b-MAL-ED   SOUTH AFRICA                   [32-38)           0       13    90
ki0047075b-MAL-ED   SOUTH AFRICA                   [32-38)           1        3    90
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   >=38              0       48   100
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   >=38              1        0   100
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   <32               0       15   100
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   <32               1        0   100
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   [32-38)           0       37   100
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   [32-38)           1        0   100


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED
















