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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* trth2o
* cleanck
* impfloor
* impsan
* safeh20
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_parity
* delta_trth2o
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country      nhh          s03rec24   n_cell     n
-------------------  -----------  ----------  ---------  -------  ----
ki1000108-IRC        INDIA        3 or less           0       55   410
ki1000108-IRC        INDIA        3 or less           1        3   410
ki1000108-IRC        INDIA        4-5                 0      147   410
ki1000108-IRC        INDIA        4-5                 1       11   410
ki1000108-IRC        INDIA        6-7                 0       98   410
ki1000108-IRC        INDIA        6-7                 1        9   410
ki1000108-IRC        INDIA        8+                  0       82   410
ki1000108-IRC        INDIA        8+                  1        5   410
ki1017093b-PROVIDE   BANGLADESH   3 or less           0      133   690
ki1017093b-PROVIDE   BANGLADESH   3 or less           1        4   690
ki1017093b-PROVIDE   BANGLADESH   4-5                 0      310   690
ki1017093b-PROVIDE   BANGLADESH   4-5                 1        8   690
ki1017093b-PROVIDE   BANGLADESH   6-7                 0      140   690
ki1017093b-PROVIDE   BANGLADESH   6-7                 1        9   690
ki1017093b-PROVIDE   BANGLADESH   8+                  0       85   690
ki1017093b-PROVIDE   BANGLADESH   8+                  1        1   690


The following strata were considered:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED
















