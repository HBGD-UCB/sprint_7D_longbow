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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
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

agecat                        studyid                    country                        predfeed6    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       92     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       89     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      164     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      130     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       81     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       15     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      165     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       41     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       26     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      142     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       14     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0      110     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      216     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0      166     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1      146     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      258     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1      184     754
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      142    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1      144    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      364    1110
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      460    1110
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     8832   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2402   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    34472   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     6558   52264
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1410    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      606    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5506    9384
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1862    9384
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      103     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      116     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      169     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      177     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      189     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      153     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0      112     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      232     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      238     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      228     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       76     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      374     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       68     746
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      224    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       48    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      686    1070
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1      112    1070
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     9968   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1136   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    38114   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2624   51842
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1858    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       68    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0     7096    9206
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      184    9206
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       13     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       93     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      166     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      154     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       59     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       14     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        4     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      173     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       32     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       26     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        3     234
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      143     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0      109     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      208     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      214     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      206     750
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1      106     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      296     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1      142     750
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       56     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      154    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1      132    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      422    1114
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      406    1114
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     5750   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1380   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    22900   34288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4258   34288
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1448    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      578    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     5640    9422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1     1756    9422


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/404308ea-29ad-4c35-8856-509d3820fa64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/404308ea-29ad-4c35-8856-509d3820fa64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/404308ea-29ad-4c35-8856-509d3820fa64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/404308ea-29ad-4c35-8856-509d3820fa64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1839921   0.1133281   0.2546561
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2866973   0.2108003   0.3625943
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.4044197   0.3360304   0.4728091
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.3903773   0.3300134   0.4507412
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5034965   0.4214744   0.5855186
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5582524   0.5102577   0.6062471
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2142598   0.2035839   0.2249358
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1614009   0.1559134   0.1668884
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2769334   0.2507021   0.3031646
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2557296   0.2394008   0.2720583
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0803571   0.0299051   0.1308092
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0720000   0.0265900   0.1174100
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                0.2868004   0.2325060   0.3410949
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    NA                0.1617586   0.1197053   0.2038118
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1582285   0.0982718   0.2181851
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1385104   0.1047708   0.1722500
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1040641   0.0963418   0.1117865
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0644456   0.0606291   0.0682621
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0501032   0.0381973   0.0620091
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0255852   0.0198976   0.0312728
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1191570   0.0595150   0.1787990
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2441036   0.1705284   0.3176788
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.2815309   0.2150795   0.3479823
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.2947052   0.2361194   0.3532909
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4233089   0.3486772   0.4979407
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4857450   0.4381507   0.5333392
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1830353   0.1706557   0.1954149
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1594416   0.1529791   0.1659040
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2758913   0.2494028   0.3023797
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2415458   0.2253443   0.2577474


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1714373   0.1660817   0.1767929
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2630009   0.2480666   0.2779351
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0759494   0.0421505   0.1097482
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0725281   0.0688266   0.0762296
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0273735   0.0221056   0.0326413
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1644307   0.1582894   0.1705720
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2477181   0.2329462   0.2624900


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5582041   0.9866238   2.4609176
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    0                 0.9652775   0.7721184   1.2067588
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1087513   0.9222260   1.3330025
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       1                    0                 1.1914894   0.4701640   3.0194719
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7532952   0.7127975   0.7960939
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9234336   0.8257836   1.0326308
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.8960000   0.3679747   2.1817153
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     1                    0                 0.5640108   0.4155219   0.7655631
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8753825   0.5603747   1.3674681
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6192873   0.5666512   0.6768127
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5106503   0.3667125   0.7110848
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.0485881   1.1502286   3.6485905
6-24 months                   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN     1                    0                 1.0467951   0.7699709   1.4231448
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1474952   0.9383090   1.4033173
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5      MALAWI       1                    0                 1.1833333   0.4680466   2.9917487
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8710974   0.8082191   0.9388674
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8755109   0.7814410   0.9809051


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0555037    0.0009515    0.1100558
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                 0.0332460   -0.0177094    0.0842015
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0406476   -0.0299270    0.1112223
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029652   -0.0136863    0.0196167
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0428225   -0.0514967   -0.0341483
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0139325   -0.0370924    0.0092273
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0044078   -0.0402126    0.0313970
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.0937710   -0.1310939   -0.0564480
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0086957   -0.0589623    0.0415708
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0315361   -0.0379036   -0.0251686
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0227298   -0.0331125   -0.0123470
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0688772    0.0178623    0.1198921
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.0491358   -0.0011368    0.0994083
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0596354   -0.0048625    0.1241333
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0030025   -0.0144614    0.0204665
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0186046   -0.0289779   -0.0082313
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0281732   -0.0512166   -0.0051298


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2317522   -0.0303948    0.4272053
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                 0.0759622   -0.0476461    0.1849863
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0747001   -0.0647019    0.1958501
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0321429   -0.1658997    0.1965454
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2497852   -0.3011670   -0.2004324
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0529752   -0.1452146    0.0318350
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0580357   -0.6510846    0.3219975
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     0                    NA                -0.4857857   -0.7225732   -0.2815473
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0581528   -0.4533077    0.2295593
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4348118   -0.5256314   -0.3493987
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.8303579   -1.2813592   -0.4685149
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3663015    0.0466786    0.5787635
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                 0.1485961   -0.0176059    0.2876528
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1234830   -0.0205435    0.2471835
6-24 months                   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0309859   -0.1667375    0.1952018
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1131455   -0.1779249   -0.0519286
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1137308   -0.2115298   -0.0238264
