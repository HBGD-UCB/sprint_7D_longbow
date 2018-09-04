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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        mwtkg         s03rec24   n_cell      n
-------------------------  -----------------------------  -----------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              0       45    241
ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              1        2    241
ki0047075b-MAL-ED          BANGLADESH                     <52 kg               0      150    241
ki0047075b-MAL-ED          BANGLADESH                     <52 kg               1        4    241
ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           0       38    241
ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           1        2    241
ki0047075b-MAL-ED          BRAZIL                         >=58 kg              0      127    213
ki0047075b-MAL-ED          BRAZIL                         >=58 kg              1       10    213
ki0047075b-MAL-ED          BRAZIL                         <52 kg               0       36    213
ki0047075b-MAL-ED          BRAZIL                         <52 kg               1        5    213
ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           0       33    213
ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           1        2    213
ki0047075b-MAL-ED          INDIA                          >=58 kg              0       41    238
ki0047075b-MAL-ED          INDIA                          >=58 kg              1        0    238
ki0047075b-MAL-ED          INDIA                          <52 kg               0      137    238
ki0047075b-MAL-ED          INDIA                          <52 kg               1       12    238
ki0047075b-MAL-ED          INDIA                          [52-58) kg           0       47    238
ki0047075b-MAL-ED          INDIA                          [52-58) kg           1        1    238
ki0047075b-MAL-ED          NEPAL                          >=58 kg              0       75    237
ki0047075b-MAL-ED          NEPAL                          >=58 kg              1        5    237
ki0047075b-MAL-ED          NEPAL                          <52 kg               0       73    237
ki0047075b-MAL-ED          NEPAL                          <52 kg               1        2    237
ki0047075b-MAL-ED          NEPAL                          [52-58) kg           0       78    237
ki0047075b-MAL-ED          NEPAL                          [52-58) kg           1        4    237
ki0047075b-MAL-ED          PERU                           >=58 kg              0       89    272
ki0047075b-MAL-ED          PERU                           >=58 kg              1       10    272
ki0047075b-MAL-ED          PERU                           <52 kg               0      104    272
ki0047075b-MAL-ED          PERU                           <52 kg               1        5    272
ki0047075b-MAL-ED          PERU                           [52-58) kg           0       60    272
ki0047075b-MAL-ED          PERU                           [52-58) kg           1        4    272
ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              0      178    264
ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              1       12    264
ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               0       24    264
ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               1        5    264
ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           0       44    264
ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           1        1    264
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              0       94    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        0    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               0       95    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               1        1    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0       58    248
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        0    248
ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              0      116    660
ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              1        3    660
ki1017093b-PROVIDE         BANGLADESH                     <52 kg               0      416    660
ki1017093b-PROVIDE         BANGLADESH                     <52 kg               1       10    660
ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           0      106    660
ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           1        9    660
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              0     1416   2235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              1        1   2235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               0      365   2235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               1        0   2235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           0      452   2235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           1        1   2235


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
















