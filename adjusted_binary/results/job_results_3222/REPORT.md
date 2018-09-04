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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country                        perdiar24    s03rec24   n_cell     n
-------------------  -----------------------------  ----------  ---------  -------  ----
ki0047075b-MAL-ED    BANGLADESH                     (0%, 5%]            0      138   247
ki0047075b-MAL-ED    BANGLADESH                     (0%, 5%]            1        4   247
ki0047075b-MAL-ED    BANGLADESH                     >5%                 0       85   247
ki0047075b-MAL-ED    BANGLADESH                     >5%                 1        4   247
ki0047075b-MAL-ED    BANGLADESH                     0%                  0       16   247
ki0047075b-MAL-ED    BANGLADESH                     0%                  1        0   247
ki0047075b-MAL-ED    BRAZIL                         (0%, 5%]            0       88   223
ki0047075b-MAL-ED    BRAZIL                         (0%, 5%]            1       12   223
ki0047075b-MAL-ED    BRAZIL                         >5%                 0        2   223
ki0047075b-MAL-ED    BRAZIL                         >5%                 1        0   223
ki0047075b-MAL-ED    BRAZIL                         0%                  0      115   223
ki0047075b-MAL-ED    BRAZIL                         0%                  1        6   223
ki0047075b-MAL-ED    INDIA                          (0%, 5%]            0      180   246
ki0047075b-MAL-ED    INDIA                          (0%, 5%]            1       10   246
ki0047075b-MAL-ED    INDIA                          >5%                 0       41   246
ki0047075b-MAL-ED    INDIA                          >5%                 1        3   246
ki0047075b-MAL-ED    INDIA                          0%                  0       12   246
ki0047075b-MAL-ED    INDIA                          0%                  1        0   246
ki0047075b-MAL-ED    NEPAL                          (0%, 5%]            0      138   238
ki0047075b-MAL-ED    NEPAL                          (0%, 5%]            1        6   238
ki0047075b-MAL-ED    NEPAL                          >5%                 0       74   238
ki0047075b-MAL-ED    NEPAL                          >5%                 1        5   238
ki0047075b-MAL-ED    NEPAL                          0%                  0       15   238
ki0047075b-MAL-ED    NEPAL                          0%                  1        0   238
ki0047075b-MAL-ED    PERU                           (0%, 5%]            0      102   284
ki0047075b-MAL-ED    PERU                           (0%, 5%]            1        5   284
ki0047075b-MAL-ED    PERU                           >5%                 0      138   284
ki0047075b-MAL-ED    PERU                           >5%                 1       14   284
ki0047075b-MAL-ED    PERU                           0%                  0       25   284
ki0047075b-MAL-ED    PERU                           0%                  1        0   284
ki0047075b-MAL-ED    SOUTH AFRICA                   (0%, 5%]            0      165   292
ki0047075b-MAL-ED    SOUTH AFRICA                   (0%, 5%]            1       16   292
ki0047075b-MAL-ED    SOUTH AFRICA                   >5%                 0        3   292
ki0047075b-MAL-ED    SOUTH AFRICA                   >5%                 1        0   292
ki0047075b-MAL-ED    SOUTH AFRICA                   0%                  0      105   292
ki0047075b-MAL-ED    SOUTH AFRICA                   0%                  1        3   292
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      178   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        1   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   >5%                 0       60   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0%                  0       14   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
ki1000109-EE         PAKISTAN                       (0%, 5%]            0       80   350
ki1000109-EE         PAKISTAN                       (0%, 5%]            1        0   350
ki1000109-EE         PAKISTAN                       >5%                 0       20   350
ki1000109-EE         PAKISTAN                       >5%                 1        0   350
ki1000109-EE         PAKISTAN                       0%                  0      250   350
ki1000109-EE         PAKISTAN                       0%                  1        0   350
ki1000109-ResPak     PAKISTAN                       (0%, 5%]            0       53   165
ki1000109-ResPak     PAKISTAN                       (0%, 5%]            1        0   165
ki1000109-ResPak     PAKISTAN                       >5%                 0       99   165
ki1000109-ResPak     PAKISTAN                       >5%                 1        0   165
ki1000109-ResPak     PAKISTAN                       0%                  0       13   165
ki1000109-ResPak     PAKISTAN                       0%                  1        0   165
ki1017093b-PROVIDE   BANGLADESH                     (0%, 5%]            0      412   690
ki1017093b-PROVIDE   BANGLADESH                     (0%, 5%]            1       15   690
ki1017093b-PROVIDE   BANGLADESH                     >5%                 0      191   690
ki1017093b-PROVIDE   BANGLADESH                     >5%                 1        7   690
ki1017093b-PROVIDE   BANGLADESH                     0%                  0       65   690
ki1017093b-PROVIDE   BANGLADESH                     0%                  1        0   690
ki1114097-CMIN       BANGLADESH                     (0%, 5%]            0      112   259
ki1114097-CMIN       BANGLADESH                     (0%, 5%]            1        3   259
ki1114097-CMIN       BANGLADESH                     >5%                 0      127   259
ki1114097-CMIN       BANGLADESH                     >5%                 1        8   259
ki1114097-CMIN       BANGLADESH                     0%                  0        9   259
ki1114097-CMIN       BANGLADESH                     0%                  1        0   259
ki1114097-CMIN       PERU                           (0%, 5%]            0      321   737
ki1114097-CMIN       PERU                           (0%, 5%]            1        1   737
ki1114097-CMIN       PERU                           >5%                 0      354   737
ki1114097-CMIN       PERU                           >5%                 1        0   737
ki1114097-CMIN       PERU                           0%                  0       61   737
ki1114097-CMIN       PERU                           0%                  1        0   737
ki1114097-CONTENT    PERU                           (0%, 5%]            0      131   214
ki1114097-CONTENT    PERU                           (0%, 5%]            1       11   214
ki1114097-CONTENT    PERU                           >5%                 0       64   214
ki1114097-CONTENT    PERU                           >5%                 1        3   214
ki1114097-CONTENT    PERU                           0%                  0        5   214
ki1114097-CONTENT    PERU                           0%                  1        0   214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















