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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_mhtcm
* delta_W_mage
* delta_W_mhtcm

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid            country   fhtcm           s03rec24   n_cell      n
-----------------  --------  -------------  ---------  -------  -----
ki1101329-Keneba   GAMBIA    >=167 cm               0     1096   1751
ki1101329-Keneba   GAMBIA    >=167 cm               1       32   1751
ki1101329-Keneba   GAMBIA    <162 cm                0      124   1751
ki1101329-Keneba   GAMBIA    <162 cm                1        1   1751
ki1101329-Keneba   GAMBIA    [162-167) cm           0      484   1751
ki1101329-Keneba   GAMBIA    [162-167) cm           1       14   1751


The following strata were considered:

* studyid: ki1101329-Keneba, country: GAMBIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1101329-Keneba, country: GAMBIA


ALL STRATA DROPPED. JOB FINISHED
















