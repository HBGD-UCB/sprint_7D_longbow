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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predexfd6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       83     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       22     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       16     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      136     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      144     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       28     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       13     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      124     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       19     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       21     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1     165
Birth       ki0047075b-MAL-ED          PERU                           0                 0      141     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     249
Birth       ki0047075b-MAL-ED          PERU                           1                 0      103     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      192     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       ki1000108-IRC              INDIA                          0                 0        8      12
Birth       ki1000108-IRC              INDIA                          0                 1        4      12
Birth       ki1000108-IRC              INDIA                          1                 0        0      12
Birth       ki1000108-IRC              INDIA                          1                 1        0      12
Birth       ki1000109-EE               PAKISTAN                       0                 0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       43      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1        2      47
Birth       ki1101329-Keneba           GAMBIA                         0                 0      870    1336
Birth       ki1101329-Keneba           GAMBIA                         0                 1       15    1336
Birth       ki1101329-Keneba           GAMBIA                         1                 0      438    1336
Birth       ki1101329-Keneba           GAMBIA                         1                 1       13    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5410   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      640   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    22484   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2306   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      216    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        8    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      980    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       62    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      197     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      202     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                 0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                 0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      232     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      241     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    ki1000108-IRC              INDIA                          0                 0       11      14
6 months    ki1000108-IRC              INDIA                          0                 1        3      14
6 months    ki1000108-IRC              INDIA                          1                 0        0      14
6 months    ki1000108-IRC              INDIA                          1                 1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                 0      252     752
6 months    ki1000109-EE               PAKISTAN                       0                 1       60     752
6 months    ki1000109-EE               PAKISTAN                       1                 0      402     752
6 months    ki1000109-EE               PAKISTAN                       1                 1       38     752
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      424     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        2     582
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1232    1908
6 months    ki1101329-Keneba           GAMBIA                         0                 1       90    1908
6 months    ki1101329-Keneba           GAMBIA                         1                 0      562    1908
6 months    ki1101329-Keneba           GAMBIA                         1                 1       24    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      256    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       28    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      736    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       72    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     6116   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      822   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    24364   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2008   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1702    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1      156    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     6344    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      318    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       91     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       16     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        1     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                 0      113     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     198
24 months   ki0047075b-MAL-ED          PERU                           1                 0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      206     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   ki1000108-IRC              INDIA                          0                 0       14      14
24 months   ki1000108-IRC              INDIA                          0                 1        0      14
24 months   ki1000108-IRC              INDIA                          1                 0        0      14
24 months   ki1000108-IRC              INDIA                          1                 1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      381     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       53     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      132     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     578
24 months   ki1101329-Keneba           GAMBIA                         0                 0      891    1514
24 months   ki1101329-Keneba           GAMBIA                         0                 1      109    1514
24 months   ki1101329-Keneba           GAMBIA                         1                 0      463    1514
24 months   ki1101329-Keneba           GAMBIA                         1                 1       51    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      182     958
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       58     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      596     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1      122     958
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2828   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      892   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10468   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2838   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1366    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      402    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     5310    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1     1240    8318


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d5b3cf5d-a329-4271-b8a4-a80c29932d4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5b3cf5d-a329-4271-b8a4-a80c29932d4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5b3cf5d-a329-4271-b8a4-a80c29932d4c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5b3cf5d-a329-4271-b8a4-a80c29932d4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2095238   0.1315034   0.2875442
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1403509   0.0764425   0.2042592
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0169492   0.0084417   0.0254566
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0288248   0.0133775   0.0442722
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1057851   0.0935333   0.1180370
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0930214   0.0873920   0.0986508
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0357143   0.0025801   0.0688485
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0595010   0.0357033   0.0832986
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1923077   0.1303799   0.2542355
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0863636   0.0491958   0.1235315
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0680787   0.0544974   0.0816600
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0409556   0.0249051   0.0570062
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0985915   0.0495140   0.1476691
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0891089   0.0613022   0.1169156
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1184779   0.1069374   0.1300185
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0761414   0.0710298   0.0812530
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0839612   0.0649300   0.1029925
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0477334   0.0370754   0.0583914
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0618557   0.0138018   0.1099095
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1339286   0.0707028   0.1971543
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1221198   0.0912887   0.1529510
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0833333   0.0381521   0.1285146
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1090000   0.0896784   0.1283216
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0992218   0.0733681   0.1250755
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2416667   0.1649924   0.3183410
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1699164   0.1310269   0.2088060
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2397849   0.2181526   0.2614173
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2132872   0.2020823   0.2244922
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2273756   0.1933771   0.2613740
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1893130   0.1739403   0.2046857


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1735160   0.1232462   0.2237857
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0209581   0.0132741   0.0286420
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955253   0.0903072   0.1007433
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0552923   0.0348344   0.0757501
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0915751   0.0673602   0.1157900
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849595   0.0801414   0.0897775
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556338   0.0463917   0.0648759
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1004785   0.0596222   0.1413347
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1878914   0.1528732   0.2229097
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2190767   0.2091475   0.2290059
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1974032   0.1830515   0.2117549


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.6698565   0.3719820   1.2062619
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 1.7006651   0.8160810   3.5440866
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8793427   0.7735513   0.9996023
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.6660269   0.6055423   4.5837352
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4490909   0.2623603   0.7687238
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.6015928   0.3875429   0.9338679
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9038190   0.5022605   1.6264243
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6426627   0.5729475   0.7208608
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5685172   0.4129878   0.7826183
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.1651786   0.8723550   5.3739567
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.6823899   0.3752255   1.2410032
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.9102917   0.6642249   1.2475157
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7031025   0.4754644   1.0397268
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8894939   0.8011716   0.9875529
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8326004   0.7043408   0.9842158


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0360078   -0.0887070    0.0166914
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0040089   -0.0019519    0.0099697
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0102598   -0.0209054    0.0003858
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0195780   -0.0140625    0.0532184
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0619885   -0.1045770   -0.0194001
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0083302   -0.0148121   -0.0018484
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0070165   -0.0487554    0.0347225
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0335185   -0.0432948   -0.0237421
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0283274   -0.0454501   -0.0112048
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0386228   -0.0042137    0.0814593
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0096631   -0.0233589    0.0040328
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0033197   -0.0142798    0.0076404
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0537752   -0.1182703    0.0107199
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0207082   -0.0397899   -0.0016266
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0299723   -0.0588831   -0.0010616


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.2075188   -0.5490556    0.0587158
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.1912833   -0.1375800    0.4250754
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1074044   -0.2242599   -0.0017026
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.3540816   -0.5823543    0.7363356
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4756672   -0.8247395   -0.1933723
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.1394219   -0.2505416   -0.0381760
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0766197   -0.6435372    0.2947467
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3945231   -0.5131175   -0.2852239
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5091769   -0.8698279   -0.2180880
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3843888   -0.1805817    0.6789912
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0859270   -0.2135095    0.0282421
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0314125   -0.1404304    0.0671840
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2862037   -0.6774310    0.0137777
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0945251   -0.1852346   -0.0107578
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1518331   -0.3067516   -0.0152806
