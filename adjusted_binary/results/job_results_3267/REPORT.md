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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat                       studyid                    country                        predfeed36    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       50     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       47     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       48     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       64     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      145     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       24     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       29     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       90     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1       98     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      135     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       46     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       21     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        9     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       53     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1       85     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0       49     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1       65     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      136     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      176     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     214
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       34     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1      182     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       30     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      244     490
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       50     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1      126     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      286     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      486     948
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3450   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1     1564   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    16118   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     5670   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      724    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      608    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2992    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     2168    6492
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       23     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       91     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       21     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      152     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       17     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       31     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        2     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      147     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       41     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0       11     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        3     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      168     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       29     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0       85     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       53     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0       76     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1       38     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       78     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      147     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0      100     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1      116     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       92     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1      182     490
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0      126     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       50     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      634     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1      138     948
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     4076   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      938   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0    19028   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2760   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0     1188    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1      144    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     4702    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      458    6492
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       45     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       24     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       47     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       43     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      131     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        7     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       28     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        2     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       57     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        7     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      133     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       33     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       21     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        8     195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       42     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       32     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0       48     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1       27     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      111     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     145
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       34     190
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       66     190
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       28     190
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       62     190
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       50     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       76     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      284     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      348     758
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2204   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      634   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0    10968   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2914   16720
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      720    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      466    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2982    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1712    5880


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
![](/tmp/ccf6c014-a6d1-4e5a-bb8f-077a36d39fc9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ccf6c014-a6d1-4e5a-bb8f-077a36d39fc9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ccf6c014-a6d1-4e5a-bb8f-077a36d39fc9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ccf6c014-a6d1-4e5a-bb8f-077a36d39fc9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4927734   0.4025330   0.5830137
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5657967   0.4813720   0.6502215
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2541436   0.1905655   0.3177218
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.3000000   0.1356277   0.4643723
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6155378   0.5380383   0.6930372
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.5709059   0.4840270   0.6577849
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8417808   0.7743321   0.9092294
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8909868   0.8390608   0.9429129
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7034154   0.6168194   0.7900114
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6317248   0.5842374   0.6792121
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4289744   0.3485663   0.5093826
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4131800   0.2444793   0.5818807
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2878598   0.2724026   0.3033170
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2611803   0.2515852   0.2707754
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4729792   0.4392086   0.5067497
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4212639   0.3989553   0.4435725
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2333872   0.1515678   0.3152066
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1861592   0.1158787   0.2564397
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3856933   0.3076420   0.4637446
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3312347   0.2495881   0.4128813
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.6736715   0.5987810   0.7485619
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.7481513   0.6822580   0.8140446
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2890790   0.1981830   0.3799750
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1776756   0.1398079   0.2155433
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1600836   0.1478604   0.1723069
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1288697   0.1220351   0.1357043
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0944065   0.0756621   0.1131509
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0857471   0.0726275   0.0988668
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3532559   0.2438633   0.4626485
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4736497   0.3721629   0.5751364
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.1987952   0.1379277   0.2596626
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.2758621   0.1127740   0.4389501
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.4324324   0.3191761   0.5456887
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.3600000   0.2510014   0.4689986
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6414374   0.5127769   0.7700979
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6702881   0.5380290   0.8025472
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6039042   0.5033766   0.7044318
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5534292   0.4995146   0.6073437
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4644135   0.3801882   0.5486388
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4458341   0.2708074   0.6208607
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2113046   0.1919872   0.2306220
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2104700   0.1993863   0.2215537
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4199601   0.3829553   0.4569649
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3673029   0.3448500   0.3897558


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1481885   0.9257696   1.4240442
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    0                 1.1804348   0.6463370   2.1558821
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    0                 0.9274913   0.7682841   1.1196900
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    0                 1.0584548   0.9596087   1.1674826
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8980821   0.7801004   1.0339073
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    0                 0.9631809   0.6155180   1.5072143
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9073177   0.8571060   0.9604709
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8906606   0.8187508   0.9688860
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7976410   0.4802357   1.3248309
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    0                 0.8588035   0.6347696   1.1619072
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    0                 1.1105581   0.9710807   1.2700688
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6146264   0.4220005   0.8951781
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8050150   0.7408468   0.8747412
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9082758   0.7154650   1.1530472
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.3408119   0.9285745   1.9360607
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    0                 1.3876698   0.7130882   2.7004059
6-24 months                  ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU         1                    0                 0.8325000   0.5578557   1.2423575
6-24 months                  ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     1                    0                 1.0449782   0.7883887   1.3850774
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9164188   0.7602716   1.1046360
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    0                 0.9599937   0.6240504   1.4767844
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9960504   0.9026414   1.0991259
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8746138   0.7895303   0.9688664


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0383271   -0.0220606    0.0987148
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0065199   -0.0186314    0.0316711
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0202997   -0.0705969    0.0299975
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0276070   -0.0194209    0.0746349
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0578458   -0.1361028    0.0204113
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0061173   -0.0389698    0.0267352
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0179546   -0.0307478   -0.0051613
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0453760   -0.0749901   -0.0157619
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0228609   -0.0796228    0.0339011
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0245822   -0.0729566    0.0237922
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                -0.0655082   -0.1154107   -0.0156057
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0907668   -0.1699858   -0.0115478
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0221088   -0.0321540   -0.0120637
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0016770   -0.0184591    0.0151051
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0681278   -0.0147358    0.1509914
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0114612   -0.0147130    0.0376355
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0364593   -0.1157950    0.0428764
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0322468   -0.0559015    0.1203951
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0445374   -0.1352451    0.0461702
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0076234   -0.0422106    0.0269638
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0008964   -0.0161032    0.0178959
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0495519   -0.0814901   -0.0176138


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0721654   -0.0490893    0.1794055
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0250126   -0.0763546    0.1168333
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0341035   -0.1223589    0.0472121
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0317545   -0.0241268    0.0845867
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0896042   -0.2184692    0.0256320
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0144666   -0.0952556    0.0603632
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0665218   -0.1151435   -0.0200200
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1061170   -0.1785097   -0.0381712
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1085891   -0.4134199    0.1304992
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0680737   -0.2108396    0.0578592
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                -0.1077148   -0.1948474   -0.0269362
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4576962   -0.9152583   -0.1094474
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1602383   -0.2355714   -0.0894983
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0180848   -0.2166871    0.1480993
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1616764   -0.0603308    0.3372007
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0545107   -0.0780401    0.1707637
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0920751   -0.3124222    0.0912771
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0478664   -0.0925019    0.1701996
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0796212   -0.2553465    0.0715058
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0166891   -0.0953671    0.0563377
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0042242   -0.0791821    0.0811842
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1337766   -0.2242888   -0.0499560
