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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        predfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0      117     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        8     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      109     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      173     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0       18     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        1     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      202     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        9     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       29     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      203     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0      112     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        2     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      155     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        1     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      240     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        6     248
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      193     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      133     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       23     377
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       40      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        4      44
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      334     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       78     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      109     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9670   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      344   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2755   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      150   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      924    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      229    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       10    1205
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0      120     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      110     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      174     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0       19     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      205     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      203     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0      113     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        1     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      156     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      241     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      244     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        2     248
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      214     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        7     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      143     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        9     373
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       36      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      36
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      388     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       11     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      131     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        5     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9783   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      160   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2793   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       75   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      953    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        3    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      224    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1    1181
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0      121     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        3     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      108     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       34     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      171     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0       17     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        1     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      209     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       29     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      203     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0      111     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        1     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      154     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        1     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      234     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      236     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     242
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      196     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       23     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      140     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       16     375
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       39      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        7      46
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      340     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       35     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6441    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      200    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1759    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       81    8481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      930    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      231    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       10    1213


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/46603af2-1a91-4404-8463-3f8f99b7a6fb/3a00475a-0037-4928-86b5-6cbf2dc01108/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46603af2-1a91-4404-8463-3f8f99b7a6fb/3a00475a-0037-4928-86b5-6cbf2dc01108/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46603af2-1a91-4404-8463-3f8f99b7a6fb/3a00475a-0037-4928-86b5-6cbf2dc01108/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46603af2-1a91-4404-8463-3f8f99b7a6fb/3a00475a-0037-4928-86b5-6cbf2dc01108/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1266968   0.0827837   0.1706099
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1474359   0.0917266   0.2031452
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1893204   0.1514574   0.2271833
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2377622   0.1679248   0.3075997
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0343519   0.0303360   0.0383678
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0516351   0.0424445   0.0608257
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0434783   0.0285844   0.0583721
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0418410   0.0137932   0.0698888
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0316742   0.0085536   0.0547948
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0592105   0.0216393   0.0967817
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0275689   0.0114881   0.0436497
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0367647   0.0051079   0.0684215
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0160917   0.0131173   0.0190661
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0261506   0.0199087   0.0323926
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1050228   0.0643641   0.1456816
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1025641   0.0548919   0.1502363
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1787440   0.1418043   0.2156836
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2447552   0.1742242   0.3152863
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0301159   0.0256242   0.0346077
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0440217   0.0334460   0.0545974
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0432099   0.0304036   0.0560161
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0414938   0.0195556   0.0634319


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2018018   0.1683814   0.2352222
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0382383   0.0344038   0.0420727
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0431535   0.0297279   0.0565791
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0299065   0.0154599   0.0443532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0183436   0.0155725   0.0211147
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1956912   0.1627145   0.2286679
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0331329   0.0288237   0.0374420
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0428689   0.0315340   0.0542038


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.1636905   0.6968768   1.943206
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2558723   0.8802760   1.791728
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5031221   1.2225518   1.848082
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9623431   0.4603657   2.011671
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.8693609   0.7106352   4.917446
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3335561   0.4713373   3.773035
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6250981   1.2121038   2.178810
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9765886   0.5333358   1.788227
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3693064   0.9604919   1.952125
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4617418   1.1113296   1.922642
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9602845   0.5298395   1.740426


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0085817   -0.0207892   0.0379526
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0124814   -0.0080631   0.0330259
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0038863    0.0016918   0.0060809
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003247   -0.0064898   0.0058404
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0112212   -0.0068085   0.0292510
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0023376   -0.0066948   0.0113701
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0022519    0.0007449   0.0037589
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0010228   -0.0270880   0.0250423
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0169472   -0.0036336   0.0375280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0030169    0.0005851   0.0054488
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0003410   -0.0052939   0.0046120


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0634371   -0.1803657   0.2568829
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0618499   -0.0453822   0.1580824
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1016350    0.0436080   0.1561414
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0075251   -0.1609784   0.1256454
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2615950   -0.2734458   0.5718374
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0781642   -0.2761142   0.3340868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1227614    0.0370273   0.2008626
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0098349   -0.2942866   0.2121014
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0866020   -0.0242291   0.1854401
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0910557    0.0162329   0.1601877
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0079535   -0.1301623   0.1010404
