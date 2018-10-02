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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      282     754
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       30     754
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      416     754
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       26     754
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      242    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       46    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      714    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      118    1120
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     5920   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      584   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    23634   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1212   31350
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1798    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      206    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6740    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      520    9264
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
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      280     732
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       32     732
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      398     732
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       22     732
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      459     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       13     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      164     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1     637
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     1256    1918
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       37    1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      614    1918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       11    1918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      234    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       44    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      706    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       82    1066
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
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      272     736
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       38     736
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      378     736
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       48     736
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      218    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       60    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      670    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      146    1094
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1666    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      232    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6250    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      710    8858


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
![](/tmp/9c07111e-39e2-4d99-ab3e-f406b4dacdcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c07111e-39e2-4d99-ab3e-f406b4dacdcd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c07111e-39e2-4d99-ab3e-f406b4dacdcd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c07111e-39e2-4d99-ab3e-f406b4dacdcd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0836392   0.0381614   0.1291170
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0552328   0.0242775   0.0861882
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0595550   0.0470614   0.0720487
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0301071   0.0176991   0.0425151
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1482340   0.0954472   0.2010209
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1394335   0.1065913   0.1722757
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0776260   0.0693603   0.0858917
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0508629   0.0466394   0.0550864
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0869372   0.0707767   0.1030977
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0733095   0.0632201   0.0833988
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1226171   0.0754715   0.1697626
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0574392   0.0273675   0.0875108
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0272710   0.0184278   0.0361142
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0175161   0.0072211   0.0278111
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1275546   0.0743775   0.1807318
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1001851   0.0705756   0.1297946
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0581395   0.0230912   0.0931879
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1250000   0.0381904   0.2118096
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1058505   0.0596474   0.1520537
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1074750   0.0670579   0.1478920
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0709534   0.0472382   0.0946686
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0400000   0.0086145   0.0713856
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1037290   0.0877209   0.1197370
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0650886   0.0480373   0.0821399
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1840663   0.1293010   0.2388316
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1761930   0.1402608   0.2121252
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1027123   0.0833385   0.1220862
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1030694   0.0907119   0.1154269


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.6603698   0.3025306   1.4414683
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5055348   0.3185648   0.8022400
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9406307   0.6136946   1.4417369
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6552298   0.5773701   0.7435890
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8432466   0.6748183   1.0537130
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4684434   0.2444125   0.8978230
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.6422991   0.3283253   1.2565225
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7854290   0.4713742   1.3087240
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.1500000   0.8571404   5.3929318
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0153466   0.5741821   1.7954735
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.5637501   0.2402669   1.3227548
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.6274870   0.4658058   0.8452877
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9572259   0.6684762   1.3707015
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0034765   0.8164931   1.2332806


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0093687   -0.0413929    0.0226555
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0081400   -0.0143968   -0.0018831
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0018054   -0.0469324    0.0433216
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0203373   -0.0270882   -0.0135865
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0085693   -0.0225929    0.0054543
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0488466   -0.0812272   -0.0164659
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0022449   -0.0065980    0.0021082
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0093557   -0.0529765    0.0342651
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0164219   -0.0068748    0.0397185
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0109973   -0.0235120    0.0455066
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0077255   -0.0176019    0.0021509
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0139457   -0.0217944   -0.0060970
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0042335   -0.0427094    0.0511765
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0036322   -0.0126860    0.0199504


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1261426   -0.6416648    0.2274933
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1583183   -0.2826090   -0.0460720
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0123298   -0.3727216    0.2534454
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3549975   -0.4780540   -0.2421861
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1093472   -0.3051538    0.0570833
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.6621425   -1.1682921   -0.2741446
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0897028   -0.2753937    0.0689524
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0791525   -0.5179334    0.2327923
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2202462   -0.1424844    0.4678125
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0941166   -0.2544881    0.3458489
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.1221846   -0.2853132    0.0202401
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1553263   -0.2452527   -0.0718939
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0224830   -0.2610698    0.2422786
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0341551   -0.1319569    0.1758906
