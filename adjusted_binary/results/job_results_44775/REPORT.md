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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        exclfeed6    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       54     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       0      172     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                       1        8     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       0       17     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       0      191     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                       1        3     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       0        5     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                       1        1     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       0      215     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                       1        9     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       0       15     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       0      217     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                       1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       0       11     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                       1        0     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       0      256     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                       1        3     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       11     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      241     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        6     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       15      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        4      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       0        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                       1        0      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       0        9      14
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                       1        5      14
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       0      193     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                       1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       0      133     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                       1       23     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       0       92     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                       1       13     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       0       10     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     116
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       40      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        4      44
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       0      206     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        4     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      462     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                       1       15     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       0      721    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                       1      101    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       0     1157    2227
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                       1      248    2227
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       0      334     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                       1       78     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       0      109     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                       1       34     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       0       46     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                       1        1     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9653   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      343   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2772   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      151   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      918    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      235    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       10    1205
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       56     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      174     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                       1        5     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       0       17     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       0      192     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                       1        2     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       0        6     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                       1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       0      218     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                       1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       0       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       0      217     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                       1        1     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       0       11     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                       1        0     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       0      258     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                       1        1     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      244     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      245     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        2     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       14      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      17
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      17
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       0        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                       1        0      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       0        9      13
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                       1        4      13
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       0      214     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                       1        7     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       0      143     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                       1        9     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       0       99     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                       1        4     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       0       10     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                       1        1     114
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       36      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      36
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      209     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      468     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                       1        5     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       0      794    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                       1       25    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       0     1327    2216
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                       1       70    2216
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       0      388     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                       1       11     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       0      131     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                       1        5     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     9765   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      160   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2811   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1       75   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      947    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1        3    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      230    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1        1    1181
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       0       55     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                       1        2     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       0      174     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                       1        3     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       0      189     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                       1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       0        5     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                       1        1     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       0      221     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                       1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       0       15     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       0      217     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                       1        2     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       0       11     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                       1        0     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       0      254     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                       1        2     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      237     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        9     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      237     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        4     242
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       17      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      19
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      19
6-24 months                   ki1000108-IRC              INDIA                          1                       0        0      14
6-24 months                   ki1000108-IRC              INDIA                          1                       1        0      14
6-24 months                   ki1000108-IRC              INDIA                          0                       0       13      14
6-24 months                   ki1000108-IRC              INDIA                          0                       1        1      14
6-24 months                   ki1000109-EE               PAKISTAN                       1                       0      196     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                       1       23     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       0      140     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                       1       16     375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       0       92     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                       1       10     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       0        9     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                       1        0     111
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       39      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        7      46
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                       1        3     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       0      449     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                       1       10     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   ki1101329-Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       0      340     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                       1       35     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       0       44     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                       1        1     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6429    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      199    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1771    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                       1       82    8481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      924    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       42    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      237    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       10    1213


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/7a01d542-cc6c-4950-9f13-f5ea5c396020/666edcbc-a5f2-4904-984d-422dcbec63ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a01d542-cc6c-4950-9f13-f5ea5c396020/666edcbc-a5f2-4904-984d-422dcbec63ac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a01d542-cc6c-4950-9f13-f5ea5c396020/666edcbc-a5f2-4904-984d-422dcbec63ac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a01d542-cc6c-4950-9f13-f5ea5c396020/666edcbc-a5f2-4904-984d-422dcbec63ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1266968   0.0827837   0.1706099
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1474359   0.0917266   0.2031452
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                0.1228710   0.1004236   0.1453185
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    NA                0.1765125   0.1565725   0.1964524
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1893204   0.1514574   0.2271833
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2377622   0.1679248   0.3075997
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0343137   0.0303116   0.0383159
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0516593   0.0424874   0.0608311
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0437500   0.0287814   0.0587186
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0408163   0.0133925   0.0682402
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.0316742   0.0085536   0.0547948
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.0592105   0.0216393   0.0967817
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                0.0305250   0.0187408   0.0423092
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    NA                0.0501074   0.0386645   0.0615503
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0275689   0.0114881   0.0436497
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0367647   0.0051079   0.0684215
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0161209   0.0131406   0.0191012
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0259875   0.0197876   0.0321875
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1050228   0.0643641   0.1456816
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1025641   0.0548919   0.1502363
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                0.1095700   0.0867650   0.1323750
6-24 months                   ki1101329-Keneba      GAMBIA       0                    NA                0.1336742   0.1156434   0.1517050
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1787440   0.1418043   0.2156836
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2447552   0.1742242   0.3152863
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0300241   0.0255494   0.0344988
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0442526   0.0337411   0.0547640
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0434783   0.0306101   0.0563464
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0404858   0.0193219   0.0616497


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       NA                   NA                0.1567131   0.1416114   0.1718148
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2018018   0.1683814   0.2352222
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0382383   0.0344038   0.0420727
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0431535   0.0297279   0.0565791
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       NA                   NA                0.0428700   0.0344343   0.0513058
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0299065   0.0154599   0.0443532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0183436   0.0155725   0.0211147
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1101329-Keneba      GAMBIA       NA                   NA                0.1253589   0.1111594   0.1395583
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1956912   0.1627145   0.2286679
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0331329   0.0288237   0.0374420
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0428689   0.0315340   0.0542038


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.1636905   0.6968768   1.943206
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       0                    1                 1.4365667   1.1588871   1.780781
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2558723   0.8802760   1.791728
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5054983   1.2256692   1.849214
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9329446   0.4458803   1.952061
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    1                 1.8693609   0.7106352   4.917446
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       0                    1                 1.6415175   1.0482085   2.570653
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3335561   0.4713373   3.773035
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6120387   1.2024284   2.161184
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 0.9765886   0.5333358   1.788227
6-24 months                   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba      GAMBIA       0                    1                 1.2199887   0.9520129   1.563395
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3693064   0.9604919   1.952125
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4738994   1.1243899   1.932052
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9311741   0.5174452   1.675704


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0085817   -0.0207892   0.0379526
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.0338420    0.0148691   0.0528150
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0124814   -0.0080631   0.0330259
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0039245    0.0017227   0.0061264
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0005965   -0.0068094   0.0056164
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.0112212   -0.0068085   0.0292510
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.0123450    0.0019824   0.0227076
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0023376   -0.0066948   0.0113701
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0022227    0.0007139   0.0037316
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0010228   -0.0270880   0.0250423
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.0157888   -0.0032603   0.0348380
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0169472   -0.0036336   0.0375280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0031087    0.0006795   0.0055380
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0006093   -0.0055412   0.0043225


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0634371   -0.1803657   0.2568829
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA       1                    NA                 0.2159489    0.0865189   0.3270402
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0618499   -0.0453822   0.1580824
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1026336    0.0444931   0.1572363
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0138221   -0.1684374   0.1203335
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                 0.2615950   -0.2734458   0.5718374
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA       1                    NA                 0.2879635    0.0089561   0.4884223
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0781642   -0.2761142   0.3340868
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1211705    0.0352883   0.1994071
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                -0.0098349   -0.2942866   0.2121014
6-24 months                   ki1101329-Keneba      GAMBIA       1                    NA                 0.1259489   -0.0394192   0.2650075
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0866020   -0.0242291   0.1854401
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0938266    0.0191865   0.1627865
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0142140   -0.1356244   0.0942163
