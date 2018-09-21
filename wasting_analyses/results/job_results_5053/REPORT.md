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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predexfd6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      113     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      142     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      166     187
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       15     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      139     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        4     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       22     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     165
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     249
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     249
Birth       ki0047075b-MAL-ED          PERU                           1                  0      104     249
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      205     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       7
Birth       ki1000108-IRC              INDIA                          0                  0       12      12
Birth       ki1000108-IRC              INDIA                          0                  1        0      12
Birth       ki1000108-IRC              INDIA                          1                  0        0      12
Birth       ki1000108-IRC              INDIA                          1                  1        0      12
Birth       ki1000109-EE               PAKISTAN                       0                  0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                  1        0      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  0       44      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                  1        1      47
Birth       ki1101329-Keneba           GAMBIA                         0                  0      877    1336
Birth       ki1101329-Keneba           GAMBIA                         0                  1        8    1336
Birth       ki1101329-Keneba           GAMBIA                         1                  0      448    1336
Birth       ki1101329-Keneba           GAMBIA                         1                  1        3    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5958   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       92   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    24384   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      406   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      224    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1032    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       10    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      111     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
6 months    ki1000108-IRC              INDIA                          0                  0       14      14
6 months    ki1000108-IRC              INDIA                          0                  1        0      14
6 months    ki1000108-IRC              INDIA                          1                  0        0      14
6 months    ki1000108-IRC              INDIA                          1                  1        0      14
6 months    ki1000109-EE               PAKISTAN                       0                  0      298     752
6 months    ki1000109-EE               PAKISTAN                       0                  1       14     752
6 months    ki1000109-EE               PAKISTAN                       1                  0      436     752
6 months    ki1000109-EE               PAKISTAN                       1                  1        4     752
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       18     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        1     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      360     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      441     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        0     582
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1299    1908
6 months    ki1101329-Keneba           GAMBIA                         0                  1       23    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  0      577    1908
6 months    ki1101329-Keneba           GAMBIA                         1                  1        9    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      284    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      794    1092
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14    1092
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6802   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      136   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    26048   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      324   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1838    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       20    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6624    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       38    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      199     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0      114     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1        0     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      210     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      19
24 months   ki1000108-IRC              INDIA                          0                  0       14      14
24 months   ki1000108-IRC              INDIA                          0                  1        0      14
24 months   ki1000108-IRC              INDIA                          1                  0        0      14
24 months   ki1000108-IRC              INDIA                          1                  1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      427     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        7     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      142     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     578
24 months   ki1101329-Keneba           GAMBIA                         0                  0      978    1514
24 months   ki1101329-Keneba           GAMBIA                         0                  1       22    1514
24 months   ki1101329-Keneba           GAMBIA                         1                  0      509    1514
24 months   ki1101329-Keneba           GAMBIA                         1                  1        5    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      222     958
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       18     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      706     958
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       12     958
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3546   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      174   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12812   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      494   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1716    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       52    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6388    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      162    8318


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/182f0fcc-8459-458a-bbd8-ccd0e30cdcc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/182f0fcc-8459-458a-bbd8-ccd0e30cdcc5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/182f0fcc-8459-458a-bbd8-ccd0e30cdcc5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/182f0fcc-8459-458a-bbd8-ccd0e30cdcc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0152066   0.0108748   0.0195385
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0163776   0.0136851   0.0190701
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0173979   0.0103480   0.0244478
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0153584   0.0053992   0.0253176
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0196022   0.0140974   0.0251070
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0122858   0.0101858   0.0143857
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0107643   0.0054305   0.0160981
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057040   0.0005124   0.0108956
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0220000   0.0129056   0.0310944
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0097276   0.0012399   0.0182153
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0750000   0.0278249   0.1221751
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0167131   0.0034384   0.0299877
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0467742   0.0365173   0.0570311
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0371261   0.0323005   0.0419517
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0294118   0.0182004   0.0406232
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0247328   0.0181655   0.0313001


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0161479   0.0137874   0.0185083
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0167715   0.0110080   0.0225350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0138097   0.0117159   0.0159035
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0068075   0.0025982   0.0110168
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0178336   0.0111649   0.0245022
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0313152   0.0157016   0.0469288
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0392341   0.0348275   0.0436407
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0257273   0.0200920   0.0313626


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0770033   0.7800945   1.4869176
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.8827719   0.4109264   1.8964134
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6267543   0.4566545   0.8602148
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5299009   0.1874013   1.4983621
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.4421648   0.1683720   1.1611776
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2228412   0.0809066   0.6137723
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7937306   0.6161318   1.0225218
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8409160   0.5255660   1.3454824


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0009412   -0.0030769    0.0049594
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0006264   -0.0043742    0.0031214
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0057925   -0.0103319   -0.0012532
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0039568   -0.0098004    0.0018869
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0041664   -0.0083999    0.0000670
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0436848   -0.0804843   -0.0068852
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0075401   -0.0163486    0.0012684
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0036844   -0.0140280    0.0066592


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0582894   -0.2249767    0.2760524
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0373487   -0.2862635    0.1633966
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4194543   -0.7744820   -0.1354584
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5812331   -2.1244515    0.1997642
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.2336296   -0.4762584   -0.0308778
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3949999   -2.6148418   -0.5867982
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1921818   -0.4377220    0.0114241
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1432106   -0.6317305    0.1990525
