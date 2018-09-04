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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_nrooms
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid               country        hfoodsec                s03rec24   n_cell      n
--------------------  -------------  ---------------------  ---------  -------  -----
ki0047075b-MAL-ED     BANGLADESH     Food Secure                    0      153    194
ki0047075b-MAL-ED     BANGLADESH     Food Secure                    1        8    194
ki0047075b-MAL-ED     BANGLADESH     Mildly Food Insecure           0        4    194
ki0047075b-MAL-ED     BANGLADESH     Mildly Food Insecure           1        0    194
ki0047075b-MAL-ED     BANGLADESH     Food Insecure                  0       29    194
ki0047075b-MAL-ED     BANGLADESH     Food Insecure                  1        0    194
ki0047075b-MAL-ED     BRAZIL         Food Secure                    0        3    129
ki0047075b-MAL-ED     BRAZIL         Food Secure                    1        0    129
ki0047075b-MAL-ED     BRAZIL         Mildly Food Insecure           0        8    129
ki0047075b-MAL-ED     BRAZIL         Mildly Food Insecure           1        3    129
ki0047075b-MAL-ED     BRAZIL         Food Insecure                  0      103    129
ki0047075b-MAL-ED     BRAZIL         Food Insecure                  1       12    129
ki0047075b-MAL-ED     INDIA          Food Secure                    0      179    212
ki0047075b-MAL-ED     INDIA          Food Secure                    1       11    212
ki0047075b-MAL-ED     INDIA          Mildly Food Insecure           0        5    212
ki0047075b-MAL-ED     INDIA          Mildly Food Insecure           1        0    212
ki0047075b-MAL-ED     INDIA          Food Insecure                  0       17    212
ki0047075b-MAL-ED     INDIA          Food Insecure                  1        0    212
ki0047075b-MAL-ED     NEPAL          Food Secure                    0       91    128
ki0047075b-MAL-ED     NEPAL          Food Secure                    1        3    128
ki0047075b-MAL-ED     NEPAL          Mildly Food Insecure           0       13    128
ki0047075b-MAL-ED     NEPAL          Mildly Food Insecure           1        2    128
ki0047075b-MAL-ED     NEPAL          Food Insecure                  0       19    128
ki0047075b-MAL-ED     NEPAL          Food Insecure                  1        0    128
ki0047075b-MAL-ED     PERU           Food Secure                    0       25    112
ki0047075b-MAL-ED     PERU           Food Secure                    1        2    112
ki0047075b-MAL-ED     PERU           Mildly Food Insecure           0       27    112
ki0047075b-MAL-ED     PERU           Mildly Food Insecure           1        2    112
ki0047075b-MAL-ED     PERU           Food Insecure                  0       52    112
ki0047075b-MAL-ED     PERU           Food Insecure                  1        4    112
ki0047075b-MAL-ED     SOUTH AFRICA   Food Secure                    0      118    232
ki0047075b-MAL-ED     SOUTH AFRICA   Food Secure                    1       13    232
ki0047075b-MAL-ED     SOUTH AFRICA   Mildly Food Insecure           0       19    232
ki0047075b-MAL-ED     SOUTH AFRICA   Mildly Food Insecure           1        0    232
ki0047075b-MAL-ED     SOUTH AFRICA   Food Insecure                  0       76    232
ki0047075b-MAL-ED     SOUTH AFRICA   Food Insecure                  1        6    232
ki1113344-GMS-Nepal   NEPAL          Food Secure                    0      814   1152
ki1113344-GMS-Nepal   NEPAL          Food Secure                    1       22   1152
ki1113344-GMS-Nepal   NEPAL          Mildly Food Insecure           0      160   1152
ki1113344-GMS-Nepal   NEPAL          Mildly Food Insecure           1        2   1152
ki1113344-GMS-Nepal   NEPAL          Food Insecure                  0      150   1152
ki1113344-GMS-Nepal   NEPAL          Food Insecure                  1        4   1152


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED
















