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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      136     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       30     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       45     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      151     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       11     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      152     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       30     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        5     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      134     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       20     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       11     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0     165
Birth       ki0047075b-MAL-ED          PERU                           0                 0      234     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        5     249
Birth       ki0047075b-MAL-ED          PERU                           1                 0       10     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      195     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     209
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5452   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      646   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    22442   30840
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2300   30840
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      220    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        8    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      976    1266
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       62    1266
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      172     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       55     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        6     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      216     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                 0      258     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                 0       11     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      235     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      242     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     6156   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      830   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    24324   33310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2000   33310
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1728    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1      156    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     6318    8520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      318    8520
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      144     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       12     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      151     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      194     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       25     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        5     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      207     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                 0      188     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     198
24 months   ki0047075b-MAL-ED          PERU                           1                 0        8     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      226     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      207     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2846   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      898   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10450   17026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2832   17026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1388    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      406    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     5288    8318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1     1236    8318


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
![](/tmp/26eedb77-b516-4c2a-bfe1-0f178de3d038/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26eedb77-b516-4c2a-bfe1-0f178de3d038/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26eedb77-b516-4c2a-bfe1-0f178de3d038/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26eedb77-b516-4c2a-bfe1-0f178de3d038/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1807229   0.1220537   0.2393920
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1509434   0.0543429   0.2475439
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0164473   0.0079484   0.0249461
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0265329   0.0111338   0.0419321
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0942508   0.0889058   0.0995959
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0954831   0.0902488   0.1007175
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0350877   0.0025210   0.0676545
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0597303   0.0358470   0.0836135
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1951060   0.1340160   0.2561959
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0906134   0.0534984   0.1277284
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0679283   0.0543841   0.0814726
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0410334   0.0250801   0.0569867
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0828652   0.0397013   0.1260292
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0869399   0.0596412   0.1142385
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1110011   0.1010290   0.1209733
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0773332   0.0722697   0.0823967
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0743917   0.0586171   0.0901663
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0488119   0.0382097   0.0594140
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0769231   0.0350076   0.1188386
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1698113   0.0684847   0.2711379
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1221245   0.0912941   0.1529549
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0833233   0.0381433   0.1285033
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1135537   0.0946788   0.1324287
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1110787   0.0871198   0.1350376
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2165846   0.1517703   0.2813989
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1666726   0.1285760   0.2047693
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2285620   0.2104259   0.2466981
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2174991   0.2065055   0.2284928
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2039175   0.1769622   0.2308727
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1895311   0.1743719   0.2046902


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
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.8352201   0.4075190   1.7118038
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 1.6132140   0.7415472   3.5094995
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0130749   0.9931690   1.0333798
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.7023121   0.6185571   4.6848816
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4644317   0.2775911   0.7770307
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.6040690   0.3904232   0.9346251
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0491719   0.5724630   1.9228522
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6966885   0.6261890   0.7751252
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6561469   0.4854464   0.8868718
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.2075472   0.9839470   4.9527714
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.6822817   0.3751559   1.2408397
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.9782038   0.7476148   1.2799139
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7695499   0.5284683   1.1206102
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9515980   0.8679565   1.0432996
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9294498   0.8005854   1.0790565


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0072069   -0.0346114    0.0201975
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0045108   -0.0014504    0.0104720
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0012745   -0.0001996    0.0027485
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0202045   -0.0129696    0.0533786
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0647868   -0.1067871   -0.0227866
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0081799   -0.0146267   -0.0017331
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0087098   -0.0281465    0.0455662
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0260417   -0.0344212   -0.0176622
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0187579   -0.0330039   -0.0045118
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0235554   -0.0047887    0.0518995
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0096677   -0.0233627    0.0040273
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0078734   -0.0184079    0.0026610
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0286932   -0.0830088    0.0256225
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0094853   -0.0253832    0.0064126
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0065143   -0.0290495    0.0160210


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0415346   -0.2117738    0.1047882
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.2152308   -0.1155375    0.4479230
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0133417   -0.0021878    0.0286305
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.3654135   -0.5549497    0.7410206
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4971398   -0.8436343   -0.2157658
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.1369057   -0.2474809   -0.0361318
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0951115   -0.4111822    0.4197609
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3065188   -0.4092216   -0.2113009
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3371670   -0.6366164   -0.0925074
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2344322   -0.0870450    0.4608374
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0859684   -0.2135434    0.0281952
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0745023   -0.1794145    0.0210777
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1527113   -0.4828330    0.1039156
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0432967   -0.1186253    0.0269593
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0329997   -0.1536803    0.0750570
