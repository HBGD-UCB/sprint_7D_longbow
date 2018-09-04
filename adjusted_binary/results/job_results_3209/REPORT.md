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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        hhwealth_quart    s03rec24   n_cell      n
-------------------------  -----------------------------  ---------------  ---------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       20     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        1     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       20     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        1     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       18     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        1     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       18     80
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        1     80
ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       15     71
ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        3     71
ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       17     71
ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        2     71
ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       15     71
ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        2     71
ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       17     71
ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        0     71
ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       11     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0        8     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        3     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       10     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       10     42
ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0     42
ki0047075b-MAL-ED          PERU                           Wealth Q4                0        9     36
ki0047075b-MAL-ED          PERU                           Wealth Q4                1        1     36
ki0047075b-MAL-ED          PERU                           Wealth Q1                0        8     36
ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1     36
ki0047075b-MAL-ED          PERU                           Wealth Q2                0        7     36
ki0047075b-MAL-ED          PERU                           Wealth Q2                1        1     36
ki0047075b-MAL-ED          PERU                           Wealth Q3                0        9     36
ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0     36
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       17     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       17     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        0     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       16     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        1     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       14     68
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        3     68
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       15     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        0     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       15     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       15     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       15     60
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0     60
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       91    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1        5    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       87    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        4    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       89    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1        4    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       86    370
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1        4    370
ki1000108-IRC              INDIA                          Wealth Q4                0       91    410
ki1000108-IRC              INDIA                          Wealth Q4                1        9    410
ki1000108-IRC              INDIA                          Wealth Q1                0      102    410
ki1000108-IRC              INDIA                          Wealth Q1                1        3    410
ki1000108-IRC              INDIA                          Wealth Q2                0       94    410
ki1000108-IRC              INDIA                          Wealth Q2                1        8    410
ki1000108-IRC              INDIA                          Wealth Q3                0       95    410
ki1000108-IRC              INDIA                          Wealth Q3                1        8    410
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      166    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        8    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      169    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        4    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      162    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        6    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      169    688
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        4    688
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      553   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      685   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      460   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      565   2265
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1   2265
ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      286   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1       12   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      290   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1        8   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      292   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        8   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      290   1188
ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        2   1188
ki1114097-CONTENT          PERU                           Wealth Q4                0       46    214
ki1114097-CONTENT          PERU                           Wealth Q4                1        5    214
ki1114097-CONTENT          PERU                           Wealth Q1                0       58    214
ki1114097-CONTENT          PERU                           Wealth Q1                1        1    214
ki1114097-CONTENT          PERU                           Wealth Q2                0       48    214
ki1114097-CONTENT          PERU                           Wealth Q2                1        4    214
ki1114097-CONTENT          PERU                           Wealth Q3                0       48    214
ki1114097-CONTENT          PERU                           Wealth Q3                1        4    214


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED
















