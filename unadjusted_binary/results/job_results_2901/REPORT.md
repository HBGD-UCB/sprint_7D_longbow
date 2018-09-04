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

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country                        perdiar6    s03rec24   n_cell     n
-------------------  -----------------------------  ---------  ---------  -------  ----
ki0047075b-MAL-ED    BANGLADESH                     (0%, 5%]           0       93   247
ki0047075b-MAL-ED    BANGLADESH                     (0%, 5%]           1        2   247
ki0047075b-MAL-ED    BANGLADESH                     0%                 0       77   247
ki0047075b-MAL-ED    BANGLADESH                     0%                 1        1   247
ki0047075b-MAL-ED    BANGLADESH                     >5%                0       69   247
ki0047075b-MAL-ED    BANGLADESH                     >5%                1        5   247
ki0047075b-MAL-ED    BRAZIL                         (0%, 5%]           0       14   223
ki0047075b-MAL-ED    BRAZIL                         (0%, 5%]           1        1   223
ki0047075b-MAL-ED    BRAZIL                         0%                 0      189   223
ki0047075b-MAL-ED    BRAZIL                         0%                 1       17   223
ki0047075b-MAL-ED    BRAZIL                         >5%                0        2   223
ki0047075b-MAL-ED    BRAZIL                         >5%                1        0   223
ki0047075b-MAL-ED    INDIA                          (0%, 5%]           0      122   246
ki0047075b-MAL-ED    INDIA                          (0%, 5%]           1        5   246
ki0047075b-MAL-ED    INDIA                          0%                 0       54   246
ki0047075b-MAL-ED    INDIA                          0%                 1        4   246
ki0047075b-MAL-ED    INDIA                          >5%                0       57   246
ki0047075b-MAL-ED    INDIA                          >5%                1        4   246
ki0047075b-MAL-ED    NEPAL                          (0%, 5%]           0       73   238
ki0047075b-MAL-ED    NEPAL                          (0%, 5%]           1        4   238
ki0047075b-MAL-ED    NEPAL                          0%                 0       79   238
ki0047075b-MAL-ED    NEPAL                          0%                 1        2   238
ki0047075b-MAL-ED    NEPAL                          >5%                0       75   238
ki0047075b-MAL-ED    NEPAL                          >5%                1        5   238
ki0047075b-MAL-ED    PERU                           (0%, 5%]           0       79   284
ki0047075b-MAL-ED    PERU                           (0%, 5%]           1        5   284
ki0047075b-MAL-ED    PERU                           0%                 0       82   284
ki0047075b-MAL-ED    PERU                           0%                 1        3   284
ki0047075b-MAL-ED    PERU                           >5%                0      104   284
ki0047075b-MAL-ED    PERU                           >5%                1       11   284
ki0047075b-MAL-ED    SOUTH AFRICA                   (0%, 5%]           0       54   292
ki0047075b-MAL-ED    SOUTH AFRICA                   (0%, 5%]           1        6   292
ki0047075b-MAL-ED    SOUTH AFRICA                   0%                 0      209   292
ki0047075b-MAL-ED    SOUTH AFRICA                   0%                 1       13   292
ki0047075b-MAL-ED    SOUTH AFRICA                   >5%                0       10   292
ki0047075b-MAL-ED    SOUTH AFRICA                   >5%                1        0   292
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       97   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0%                 0      109   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   0%                 1        1   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   >5%                0       46   253
ki0047075b-MAL-ED    TANZANIA, UNITED REPUBLIC OF   >5%                1        0   253
ki1000109-ResPak     PAKISTAN                       (0%, 5%]           0       43   165
ki1000109-ResPak     PAKISTAN                       (0%, 5%]           1        0   165
ki1000109-ResPak     PAKISTAN                       0%                 0       37   165
ki1000109-ResPak     PAKISTAN                       0%                 1        0   165
ki1000109-ResPak     PAKISTAN                       >5%                0       85   165
ki1000109-ResPak     PAKISTAN                       >5%                1        0   165
ki1017093b-PROVIDE   BANGLADESH                     (0%, 5%]           0      254   690
ki1017093b-PROVIDE   BANGLADESH                     (0%, 5%]           1        6   690
ki1017093b-PROVIDE   BANGLADESH                     0%                 0      212   690
ki1017093b-PROVIDE   BANGLADESH                     0%                 1        4   690
ki1017093b-PROVIDE   BANGLADESH                     >5%                0      202   690
ki1017093b-PROVIDE   BANGLADESH                     >5%                1       12   690
ki1114097-CMIN       BANGLADESH                     (0%, 5%]           0       57   259
ki1114097-CMIN       BANGLADESH                     (0%, 5%]           1        2   259
ki1114097-CMIN       BANGLADESH                     0%                 0       90   259
ki1114097-CMIN       BANGLADESH                     0%                 1        2   259
ki1114097-CMIN       BANGLADESH                     >5%                0      101   259
ki1114097-CMIN       BANGLADESH                     >5%                1        7   259
ki1114097-CMIN       PERU                           (0%, 5%]           0      187   639
ki1114097-CMIN       PERU                           (0%, 5%]           1        1   639
ki1114097-CMIN       PERU                           0%                 0      189   639
ki1114097-CMIN       PERU                           0%                 1        0   639
ki1114097-CMIN       PERU                           >5%                0      262   639
ki1114097-CMIN       PERU                           >5%                1        0   639
ki1114097-CONTENT    PERU                           (0%, 5%]           0       38   214
ki1114097-CONTENT    PERU                           (0%, 5%]           1        5   214
ki1114097-CONTENT    PERU                           0%                 0      110   214
ki1114097-CONTENT    PERU                           0%                 1        4   214
ki1114097-CONTENT    PERU                           >5%                0       52   214
ki1114097-CONTENT    PERU                           >5%                1        5   214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















