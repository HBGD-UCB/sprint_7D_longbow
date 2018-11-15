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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      169     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      157     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       11     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      178     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        5     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     190
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      153     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        6     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     170
Birth       ki0047075b-MAL-ED          PERU                           0                   0      241     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        5     256
Birth       ki0047075b-MAL-ED          PERU                           1                   0        9     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        1     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      210     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      113     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       ki1000108-IRC              INDIA                          0                   0       14      14
Birth       ki1000108-IRC              INDIA                          0                   1        0      14
Birth       ki1000108-IRC              INDIA                          1                   0        0      14
Birth       ki1000108-IRC              INDIA                          1                   1        0      14
Birth       ki1000109-EE               PAKISTAN                       0                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        0      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0       47      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1        1      50
Birth       ki1101329-Keneba           GAMBIA                         0                   0      898    1401
Birth       ki1101329-Keneba           GAMBIA                         0                   1       19    1401
Birth       ki1101329-Keneba           GAMBIA                         1                   0      474    1401
Birth       ki1101329-Keneba           GAMBIA                         1                   1       10    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3465   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      549   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13765   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1303   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      134     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       16     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      572     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       45     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      172     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       55     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      193     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                   0      249     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        9     269
6 months    ki0047075b-MAL-ED          PERU                           1                   0       10     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      229     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    ki1000108-IRC              INDIA                          0                   0       13      14
6 months    ki1000108-IRC              INDIA                          0                   1        1      14
6 months    ki1000108-IRC              INDIA                          1                   0        0      14
6 months    ki1000108-IRC              INDIA                          1                   1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                   0      125     372
6 months    ki1000109-EE               PAKISTAN                       0                   1       29     372
6 months    ki1000109-EE               PAKISTAN                       1                   0      153     372
6 months    ki1000109-EE               PAKISTAN                       1                   1       65     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      435     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       12     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      134     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     583
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1280    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   1       42    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   0      564    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   1       22    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      133     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      393     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     546
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3106   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      377   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    12572   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      627   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      849    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       91    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3174    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      145    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      140     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       16     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        9     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      193     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       26     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        3     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        2     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      205     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        7     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                   0      177     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1       13     198
24 months   ki0047075b-MAL-ED          PERU                           1                   0        8     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      202     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      143     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   ki1000108-IRC              INDIA                          0                   0       13      14
24 months   ki1000108-IRC              INDIA                          0                   1        1      14
24 months   ki1000108-IRC              INDIA                          1                   0        0      14
24 months   ki1000108-IRC              INDIA                          1                   1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      395     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      133     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       11     577
24 months   ki1101329-Keneba           GAMBIA                         0                   0      908    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   1       90    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   0      480    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   1       35    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      103     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       17     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      324     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     480
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1538    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      339    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5679    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      986    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      782    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      116    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3000    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      276    4174


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
![](/tmp/f7585c84-3508-4d0b-a4ef-ee9ff6afc950/9fb28fe1-62af-440a-86d5-ebfff4568dcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7585c84-3508-4d0b-a4ef-ee9ff6afc950/9fb28fe1-62af-440a-86d5-ebfff4568dcd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7585c84-3508-4d0b-a4ef-ee9ff6afc950/9fb28fe1-62af-440a-86d5-ebfff4568dcd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7585c84-3508-4d0b-a4ef-ee9ff6afc950/9fb28fe1-62af-440a-86d5-ebfff4568dcd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0207197   0.0114969   0.0299426
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0206612   0.0079839   0.0333384
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1367713   0.1247515   0.1487911
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0864746   0.0817473   0.0912020
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1066667   0.0434641   0.1698693
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0729335   0.0493916   0.0964755
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1883117   0.1264808   0.2501426
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2981651   0.2373586   0.3589717
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0317700   0.0223132   0.0412268
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0375427   0.0221481   0.0529372
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0633803   0.0232695   0.1034910
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0272277   0.0113435   0.0431120
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1082400   0.0970293   0.1194508
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0475036   0.0437879   0.0512193
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0968085   0.0777688   0.1158483
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0436879   0.0355655   0.0518102
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1025641   0.0548412   0.1502870
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1698113   0.0684847   0.2711379
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0877598   0.0610861   0.1144335
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0763889   0.0329676   0.1198102
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0901804   0.0724033   0.1079574
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0679612   0.0462174   0.0897050
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1416667   0.0792110   0.2041224
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1000000   0.0689779   0.1310221
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1806074   0.1615909   0.1996238
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1479370   0.1387368   0.1571371
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1291759   0.1064951   0.1518568
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0842491   0.0728684   0.0956298


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0206995   0.0132415   0.0281575
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0970548   0.0924831   0.1016266
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0795306   0.0569401   0.1021211
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0366300   0.0208588   0.0524012
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0601846   0.0563303   0.0640390
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0554121   0.0477101   0.0631140
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1196172   0.0755162   0.1637183
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0826173   0.0687407   0.0964939
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1104167   0.0823500   0.1384833
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1551159   0.1463315   0.1639003
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0939147   0.0835386   0.1042909


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.9971727   0.4672630   2.1280378
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6322573   0.5707692   0.7003694
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6837520   0.3477572   1.3443771
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.5833597   1.0757597   2.3304721
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1817000   0.7119487   1.9613982
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4295930   0.1816556   1.0159338
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.4388728   0.3869262   0.4977935
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4512812   0.3459786   0.5886339
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6556604   0.7768770   3.5285010
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8704313   0.4568736   1.6583376
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.7536138   0.5175377   1.0973766
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7058824   0.4117339   1.2101746
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8191083   0.7307436   0.9181585
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6522041   0.5255236   0.8094218


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0000202   -0.0054362    0.0053957
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0397165   -0.0498409   -0.0295921
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0271360   -0.0814283    0.0271562
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0643765    0.0132589    0.1154941
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0017729   -0.0037773    0.0073232
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0267502   -0.0586995    0.0051990
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0480554   -0.0572724   -0.0388384
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0413964   -0.0574191   -0.0253738
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0170531   -0.0116264    0.0457326
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0028378   -0.0155620    0.0098864
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0075630   -0.0171377    0.0020116
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0312500   -0.0835768    0.0210768
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0254915   -0.0410233   -0.0099596
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0352612   -0.0548237   -0.0156988


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0009777   -0.3000042    0.2292668
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4092170   -0.5146515   -0.3111218
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3412022   -1.2072862    0.1850521
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2547665    0.0255629    0.4300577
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0528555   -0.1273978    0.2042891
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7302817   -1.7817399   -0.0762598
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7984662   -0.9469884   -0.6612737
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7470654   -1.0604567   -0.4813403
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1425641   -0.1281893    0.3483396
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0334166   -0.1944070    0.1058744
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0915431   -0.2128968    0.0176689
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2830189   -0.8508958    0.1106266
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1643381   -0.2677597   -0.0693535
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3754602   -0.6022988   -0.1807353
