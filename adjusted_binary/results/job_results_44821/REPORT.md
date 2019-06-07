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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed6    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54    238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      171    238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       17    212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0    212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      193    212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2    212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        6    234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      209    234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19    234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15    235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217    235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    235
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11    270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      258    270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      246    248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247    248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-24 months   ki1000108-IRC              INDIA                          1                    0        0     14
0-24 months   ki1000108-IRC              INDIA                          1                    1        0     14
0-24 months   ki1000108-IRC              INDIA                          0                    0       12     14
0-24 months   ki1000108-IRC              INDIA                          0                    1        2     14
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      208    377
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       13    377
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      141    377
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       15    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       92    111
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       10    111
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0        8    111
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        1    111
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     41
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     41
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       34     41
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        7     41
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      164    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      461    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    640
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      715   2120
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       25   2120
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1296   2120
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       84   2120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357    560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59    560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    560
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5777   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      297   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1530   7758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      154   7758
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      875   1183
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       71   1183
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      217   1183
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       20   1183
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       57    238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1    238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      174    238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        6    238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       17    212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0    212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      194    212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        1    212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        6    233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      209    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       18    233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15    234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0    234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      215    234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4    234
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       11    270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0    270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      259    270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      244    246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247    248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-6 months    ki1000108-IRC              INDIA                          1                    0        0     14
0-6 months    ki1000108-IRC              INDIA                          1                    1        0     14
0-6 months    ki1000108-IRC              INDIA                          0                    0       11     14
0-6 months    ki1000108-IRC              INDIA                          0                    1        3     14
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      199    366
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       11    366
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      140    366
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       16    366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      164    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      459    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    637
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      614   1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       11   1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     1256   1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       37   1918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      353    533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       41    533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      117    533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       22    533
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       21     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54    238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      171    238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       17    212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0    212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      193    212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2    212
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        6    234
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      209    234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19    234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11    270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      258    270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      246    248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247    248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    248
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
6-24 months   ki1000108-IRC              INDIA                          1                    0        0     14
6-24 months   ki1000108-IRC              INDIA                          1                    1        0     14
6-24 months   ki1000108-IRC              INDIA                          0                    0       12     14
6-24 months   ki1000108-IRC              INDIA                          0                    1        2     14
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      208    377
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       13    377
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      141    377
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       15    377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       92    111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       10    111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0        8    111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        1    111
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     41
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     41
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       34     41
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        7     41
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      164    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      461    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    640
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      715   2120
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       25   2120
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1296   2120
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       84   2120
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357    560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59    560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    560
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5777   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      297   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1530   7758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      154   7758
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      875   1183
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       71   1183
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      217   1183
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       20   1183


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/fb817336-9c0c-426e-9eb8-f7eb89a0309b/b4998fda-942f-4ebb-8706-e43215bf7a72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb817336-9c0c-426e-9eb8-f7eb89a0309b/b4998fda-942f-4ebb-8706-e43215bf7a72/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb817336-9c0c-426e-9eb8-f7eb89a0309b/b4998fda-942f-4ebb-8706-e43215bf7a72/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb817336-9c0c-426e-9eb8-f7eb89a0309b/b4998fda-942f-4ebb-8706-e43215bf7a72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0588235   0.0277608   0.0898863
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0961538   0.0498312   0.1424765
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0337838   0.0207633   0.0468042
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0608696   0.0482520   0.0734871
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1418269   0.1082720   0.1753819
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998329   0.2196115
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0488969   0.0428229   0.0549709
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0914489   0.0772723   0.1056256
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0750529   0.0545644   0.0955413
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0843882   0.0507415   0.1180349
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0523810   0.0222067   0.0825552
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1025641   0.0548904   0.1502379
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0176000   0.0072885   0.0279115
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0286156   0.0195257   0.0377055
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1040609   0.0738829   0.1342389
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1582734   0.0975385   0.2190082
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0588235   0.0277608   0.0898863
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0961538   0.0498312   0.1424765
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0337838   0.0207633   0.0468042
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0608696   0.0482520   0.0734871
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1418269   0.1082720   0.1753819
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998329   0.2196115
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0488969   0.0428229   0.0549709
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0914489   0.0772723   0.1056256
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0750529   0.0545644   0.0955413
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0843882   0.0507415   0.1180349


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0581335   0.0523247   0.0639424
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0769231   0.0598991   0.0939471
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250261   0.0180336   0.0320185
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0581335   0.0523247   0.0639424
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0769231   0.0598991   0.0939471


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.634615   0.7997990   3.340799
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.801739   1.1631583   2.790905
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.126177   0.7228651   1.754511
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.870238   1.5401563   2.271063
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.124383   0.6770892   1.867166
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.958042   0.9340233   4.104746
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.625888   0.8349360   3.166123
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.520969   0.9402166   2.460439
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.634615   0.7997990   3.340799
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.801739   1.1631583   2.790905
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.126177   0.7228651   1.754511
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.870238   1.5401563   2.271063
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.124383   0.6770892   1.867166


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0154470   -0.0077063   0.0386004
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0176313    0.0058162   0.0294464
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0046016   -0.0130628   0.0222661
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0092366    0.0058905   0.0125827
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0018702   -0.0063660   0.0101064
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0213895   -0.0027929   0.0455720
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0074261   -0.0018436   0.0166957
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0141380   -0.0036637   0.0319397
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0154470   -0.0077063   0.0386004
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0176313    0.0058162   0.0294464
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0046016   -0.0130628   0.0222661
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0092366    0.0058905   0.0125827
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0018702   -0.0063660   0.0101064


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2079832   -0.1625011   0.4603957
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3429209    0.0792236   0.5310990
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0314259   -0.0969197   0.1447544
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1588859    0.1004966   0.2134851
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0243129   -0.0903269   0.1268992
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2899471   -0.1024954   0.5426964
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.2967333   -0.1756120   0.5792965
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1196116   -0.0423136   0.2563815
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2079832   -0.1625011   0.4603957
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3429209    0.0792236   0.5310990
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0314259   -0.0969197   0.1447544
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1588859    0.1004966   0.2134851
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0243129   -0.0903269   0.1268992
