---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       89     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       92     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      164     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1       12     211
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       15     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1        4     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0      130     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       81     230
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       26     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      165     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       41     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0      110     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      142     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       14     270
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      216     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       30     248
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      129     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1       92     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       83     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       73     377
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       30      44
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       14      44
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      182     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      230     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       71     555
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       72     555
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8394   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1620   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2266   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      639   12919
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      692    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      274    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      176    1205
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       63    1205
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      116     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0      103     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       35     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      169     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        7     211
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0      177     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       33     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       29     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      189     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1       15     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0      112     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        2     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      153     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        3     270
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      232     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       12     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      238     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        8     248
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      187     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       34     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0      114     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       38     373
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       36      36
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0      36
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      343     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      112     535
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       24     535
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9282   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      661   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2563   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      305   12811
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      932    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       24    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      219    1181
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        6    1181
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0       93     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       97     234
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1       13     234
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       35     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      166     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0       14     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        4     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0      154     231
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       59     231
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       26     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        3     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      173     234
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       32     234
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0      109     267
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        3     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      143     267
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        3     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      208     246
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       35     246
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      214     242
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     242
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      148     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1       71     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0      103     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       53     375
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       32      46
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1       14      46
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      203     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       66     557
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5600    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1041    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1477    8481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      363    8481
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      711    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      261    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      182    1213
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       59    1213


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
![](/tmp/13af8662-93a7-4d3b-a034-43ac24965f18/9800bb81-d987-4275-8876-05bc7a3f8636/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13af8662-93a7-4d3b-a034-43ac24965f18/9800bb81-d987-4275-8876-05bc7a3f8636/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1870579   0.1142359   0.2598798
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                0.4221003   0.3568581   0.4873424
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5047691   0.4224595   0.5870788
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1171485   0.0393900   0.1949069
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1652130   0.1562213   0.1742046
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2490782   0.1872551   0.3109013
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1068512   0.0506702   0.1630323
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                0.1568728   0.1091864   0.2045591
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1472313   0.1110018   0.1834609
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.0654492   0.0598194   0.0710790
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0386564   0.0112737   0.0660391
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1172854   0.0559150   0.1786558
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                0.3863635   0.3194058   0.4533212
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4624096   0.3800819   0.5447372
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                0.1832833   0.1100600   0.2565066
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1630854   0.1523498   0.1738210
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.2351390   0.1753083   0.2949698


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2394958   0.1851615   0.2938300
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5441441   0.5026713   0.5856170
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1748587   0.1670392   0.1826783
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2796680   0.2495651   0.3097710
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.0759494   0.0421505   0.1097482
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1495327   0.1192863   0.1797792
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.0754039   0.0700928   0.0807151
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0254022   0.0142626   0.0365418
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.1880342   0.1378627   0.2382057
6-24 months                   ki1000109-EE          PAKISTAN     observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.4829443   0.4414080   0.5244807
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             NA                0.0968992   0.0607324   0.1330660
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1655465   0.1563445   0.1747485
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.2638087   0.2344742   0.2931433


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.2803301   0.9491587   1.7270507
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     observed             optimal           1.0368763   0.9382019   1.1459287
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0780060   0.9366655   1.2406743
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.7874701   0.4741700   1.3077781
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0583839   1.0256258   1.0921883
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1228123   0.8987814   1.4026853
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.7107955   0.5315788   0.9504333
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     observed             optimal           1.2304843   0.9917912   1.5266234
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0156309   0.8809398   1.1709157
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.1520996   1.1018485   1.2046424
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.6571280   0.3897761   1.1078596
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.6032190   1.0429001   2.4645804
6-24 months                   ki1000109-EE          PAKISTAN     observed             optimal           0.8558434   0.7541751   0.9712173
6-24 months                   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0444081   0.8955179   1.2180531
6-24 months                   ki1148112-LCNI-5      MALAWI       observed             optimal           0.5286855   0.3806879   0.7342194
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0150909   0.9771486   1.0545064
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.1219266   0.8920557   1.4110321


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0524379   -0.0038904    0.1087663
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0155655   -0.0266240    0.0577550
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0393750   -0.0314856    0.1102356
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0248976   -0.0860880    0.0362929
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0096458    0.0044296    0.0148620
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0305899   -0.0249069    0.0860867
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0309019   -0.0645624    0.0027586
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0361567    0.0017270    0.0705865
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0023014   -0.0186562    0.0232589
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0099548    0.0070021    0.0129075
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0132542   -0.0347070    0.0081986
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0707488    0.0182792    0.1232184
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.0556968   -0.1037239   -0.0076698
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0205347   -0.0505643    0.0916338
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0863841   -0.1436243   -0.0291438
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0024611   -0.0037598    0.0086820
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0286697   -0.0253474    0.0826868


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.2189514   -0.0535646    0.4209782
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0355648   -0.0658686    0.1273454
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0723613   -0.0676170    0.1939867
0-24 months (no birth wast)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.2698895   -1.1089482    0.2353443
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0551633    0.0249856    0.0844069
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1093792   -0.1126176    0.2870817
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.4068745   -0.8811887   -0.0521517
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1873118   -0.0082768    0.3449596
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0153904   -0.1351514    0.1459676
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.1320195    0.0924342    0.1698781
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.5217736   -1.5655755    0.0973585
6-24 months                   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.3762549    0.0411354    0.5942514
6-24 months                   ki1000109-EE          PAKISTAN     optimal              NA                -0.1684380   -0.3259520   -0.0296357
6-24 months                   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0425199   -0.1166723    0.1790178
6-24 months                   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.8914835   -1.6268240   -0.3619908
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0148665   -0.0233858    0.0516890
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.1086761   -0.1210063    0.2912989
