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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        safeh20    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        0    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      229    242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       13    242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        0    142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140    142
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2    142
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        0    235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0    235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      215    235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       20    235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        1    233
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    233
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      229    233
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3    233
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11    259
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    259
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247    259
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    259
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       38    254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214    254
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    254
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0      170    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       79    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    249
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       76     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       18     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1        0     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      485    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       47    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0        2    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1        0    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      623    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       15    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0        0    638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        0    638
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      704    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       26    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0        0    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        0    730
0-24 months   ki1114097-CONTENT          PERU                           1                  0       54     57
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0     57
0-24 months   ki1114097-CONTENT          PERU                           0                  0        3     57
0-24 months   ki1114097-CONTENT          PERU                           0                  1        0     57
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      586    715
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4    715
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      123    715
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2    715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7301   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      449   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0        5   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1        1   7756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1265   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      112   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0        0   1377
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0   1377
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        0    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      235    242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7    242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        0    142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      141    142
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    142
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0        0    234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0    234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      216    234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18    234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        1    232
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    232
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      227    232
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4    232
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       11    259
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    259
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      248    259
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    259
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       38    252
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    252
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      212    252
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    252
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0      170    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       79    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    249
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0      158    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1       11    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        0    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      621    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       14    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0        0    635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        0    635
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      245    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        5    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        0    250
0-6 months    ki1114097-CONTENT          PERU                           1                  0       54     57
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0     57
0-6 months    ki1114097-CONTENT          PERU                           0                  0        3     57
0-6 months    ki1114097-CONTENT          PERU                           0                  1        0     57
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0       23     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        0    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      229    242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       13    242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        0    142
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    142
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140    142
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2    142
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0        0    235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      215    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       20    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        1    233
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      229    233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        3    233
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       11    259
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    259
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      247    259
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       38    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214    254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0      170    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       79    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    249
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       76     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1       18     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1        0     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      485    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       47    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0        2    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1        0    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      623    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       15    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0        0    638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        0    638
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      704    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       26    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0        0    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        0    730
6-24 months   ki1114097-CONTENT          PERU                           1                  0       54     57
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0     57
6-24 months   ki1114097-CONTENT          PERU                           0                  0        3     57
6-24 months   ki1114097-CONTENT          PERU                           0                  1        0     57
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0      586    715
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        4    715
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      123    715
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1        2    715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7301   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      449   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0        5   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1        1   7756
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1265   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      112   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0        0   1377
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0   1377


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED
















