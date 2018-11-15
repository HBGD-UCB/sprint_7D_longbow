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

agecat        studyid                    country                        exclfeed6    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      171     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      193     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       17     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     212
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      209     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        6     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      258     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      246     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19      19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      19
0-24 months   ki1000108-IRC              INDIA                          0                    0       12      14
0-24 months   ki1000108-IRC              INDIA                          0                    1        2      14
0-24 months   ki1000108-IRC              INDIA                          1                    0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                    1        0      14
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      141     377
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       15     377
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      208     377
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       13     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      461     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     640
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1296    2120
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       84    2120
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      715    2120
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       25    2120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     560
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2960   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      292   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11817   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      606   15675
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      899    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      103    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3370    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      260    4632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        6     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       57     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      194     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       17     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      209     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       18     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        6     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      215     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      259     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       11     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      244     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      247     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15      19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4      19
0-6 months    ki1000108-IRC              INDIA                          0                    0       11      14
0-6 months    ki1000108-IRC              INDIA                          0                    1        3      14
0-6 months    ki1000108-IRC              INDIA                          1                    0        0      14
0-6 months    ki1000108-IRC              INDIA                          1                    1        0      14
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      140     366
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       16     366
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      199     366
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       11     366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      459     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1     637
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     1256    1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       37    1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      614    1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       11    1918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      117     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       22     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      353     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       41     533
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      162     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       10     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       49     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        7     228
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      179     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       16     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     227
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       26     227
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        5     227
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     227
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      213     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       15     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     230
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      235     248
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        2     248
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       11     248
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      240     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     235
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19      19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      19
6-24 months   ki1000108-IRC              INDIA                          0                    0       12      14
6-24 months   ki1000108-IRC              INDIA                          0                    1        2      14
6-24 months   ki1000108-IRC              INDIA                          1                    0        0      14
6-24 months   ki1000108-IRC              INDIA                          1                    1        0      14
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      136     368
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       19     368
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      189     368
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       24     368
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       12     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        1     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      293     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       63     369
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      130     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       23     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     153
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      419     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       32     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      144     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6     601
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1166    1938
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1      132    1938
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      598    1938
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       42    1938
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      109     547
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       30     547
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      335     547
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       73     547
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      833    4429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      116    4429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3125    4429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      355    4429


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
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/01592d0e-b2be-4324-a402-0562e7e15c8a/7a3d9b90-9ec3-430b-9310-2b9300cdbebc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01592d0e-b2be-4324-a402-0562e7e15c8a/7a3d9b90-9ec3-430b-9310-2b9300cdbebc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01592d0e-b2be-4324-a402-0562e7e15c8a/7a3d9b90-9ec3-430b-9310-2b9300cdbebc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01592d0e-b2be-4324-a402-0562e7e15c8a/7a3d9b90-9ec3-430b-9310-2b9300cdbebc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0961538   0.0498312   0.1424765
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0588235   0.0277608   0.0898863
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0608696   0.0482520   0.0734871
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0337838   0.0207633   0.0468042
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998329   0.2196115
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1418269   0.1082720   0.1753819
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0897909   0.0795047   0.1000771
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0487805   0.0444577   0.0531033
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1027944   0.0834698   0.1221190
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0716253   0.0614009   0.0818498
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1025641   0.0548904   0.1502379
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0523810   0.0222067   0.0825552
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0286156   0.0195257   0.0377055
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0176000   0.0072885   0.0279115
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1582734   0.0975385   0.2190082
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1040609   0.0738829   0.1342389
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0581395   0.0230912   0.0931879
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1250000   0.0381904   0.2118096
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1225806   0.0708810   0.1742803
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1126761   0.0701548   0.1551973
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0709534   0.0472382   0.0946686
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0400000   0.0086145   0.0713856
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1016949   0.0852480   0.1181418
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0656250   0.0464354   0.0848146
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2158273   0.1473736   0.2842811
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1789216   0.1416962   0.2161469
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1222339   0.0998480   0.1446199
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1020115   0.0894812   0.1145418


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0514151   0.0420121   0.0608181
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250261   0.0180336   0.0320185
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0745614   0.0403897   0.1087331
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0897833   0.0770525   0.1025140
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1882998   0.1555073   0.2210923
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1063445   0.0949209   0.1177682


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.6117647   0.2993296   1.2503142
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5550193   0.3583068   0.8597282
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8879599   0.5699594   1.3833840
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5432676   0.4710621   0.6265409
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6967825   0.5517848   0.8798826
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5107143   0.2436205   1.0706370
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.6150487   0.3158437   1.1976966
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6574758   0.4064316   1.0635847
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.1500000   0.8571404   5.3929318
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9191994   0.5219425   1.6188136
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.5637501   0.2402669   1.3227548
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.6453125   0.4620058   0.9013485
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8290033   0.5673097   1.2114131
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8345596   0.6774115   1.0281633


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0218833   -0.0546309    0.0108643
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0094545   -0.0158071   -0.0031019
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0132937   -0.0642940    0.0377067
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0325022   -0.0412464   -0.0237581
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0244265   -0.0414140   -0.0074391
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0287936   -0.0612660    0.0036788
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0035896   -0.0080748    0.0008957
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0400745   -0.0902480    0.0100990
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0164219   -0.0068748    0.0397185
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0057328   -0.0444810    0.0330154
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0077255   -0.0176019    0.0021509
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0119116   -0.0202919   -0.0035313
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0275275   -0.0856632    0.0306081
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0158894   -0.0350540    0.0032752


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.2946429   -0.8058824    0.0718664
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1838851   -0.3096231   -0.0702193
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0907859   -0.5007022    0.2071619
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5673411   -0.7256663   -0.4235419
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3116907   -0.5507300   -0.1094984
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3903134   -0.8833650   -0.0263392
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.1434326   -0.3324812    0.0187944
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3390430   -0.8320753    0.0213086
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2202462   -0.1424844    0.4678125
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0490623   -0.4387899    0.2350991
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1221846   -0.2853132    0.0202401
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1326710   -0.2283537   -0.0444414
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1461898   -0.4998664    0.1240879
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1494142   -0.3452136    0.0178861
