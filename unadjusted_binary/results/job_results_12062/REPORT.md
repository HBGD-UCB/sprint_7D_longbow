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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        hdlvry    s03rec24   n_cell      n
-------------------------  -----------------------------  -------  ---------  -------  -----
ki1000108-CMC-V-BCS-2002   INDIA                          0                0      344    367
ki1000108-CMC-V-BCS-2002   INDIA                          0                1       15    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    367
ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    367
ki1000108-IRC              INDIA                          0                0      374    410
ki1000108-IRC              INDIA                          0                1       28    410
ki1000108-IRC              INDIA                          1                0        8    410
ki1000108-IRC              INDIA                          1                1        0    410
ki1000109-EE               PAKISTAN                       0                0      120    173
ki1000109-EE               PAKISTAN                       0                1        0    173
ki1000109-EE               PAKISTAN                       1                0       53    173
ki1000109-EE               PAKISTAN                       1                1        0    173
ki1017093b-PROVIDE         BANGLADESH                     0                0      494    690
ki1017093b-PROVIDE         BANGLADESH                     0                1       18    690
ki1017093b-PROVIDE         BANGLADESH                     1                0      174    690
ki1017093b-PROVIDE         BANGLADESH                     1                1        4    690
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2125   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       37   2163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0   2163
ki1113344-GMS-Nepal        NEPAL                          0                0      135    554
ki1113344-GMS-Nepal        NEPAL                          0                1        3    554
ki1113344-GMS-Nepal        NEPAL                          1                0      406    554
ki1113344-GMS-Nepal        NEPAL                          1                1       10    554


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED
















