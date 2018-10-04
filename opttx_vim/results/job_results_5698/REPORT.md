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
![](/tmp/ca84d539-6ab3-419d-ab65-a1e19be0bbb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca84d539-6ab3-419d-ab65-a1e19be0bbb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3676521   0.2783047   0.4569995
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2539395   0.1903614   0.3175176
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5695929   0.4804966   0.6586891
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8409921   0.7729667   0.9090175
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5842986   0.5333013   0.6352958
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4695175   0.3219490   0.6170859
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2358419   0.2262192   0.2454647
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4031408   0.3812431   0.4250384
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1327572   0.0724680   0.1930465
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.3263723   0.2442217   0.4085229
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5176705   0.4440366   0.5913043
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1777189   0.1403897   0.2150481
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1255257   0.1186372   0.1324141
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0778121   0.0657045   0.0899197
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3511329   0.2421818   0.4600841
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2091781   0.1108507   0.3075056
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                0.3895575   0.2820742   0.4970408
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.6562979   0.5248328   0.7877629
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4672169   0.3897623   0.5446716
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.4455300   0.2704780   0.6205819
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2007046   0.1899174   0.2114919
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3654183   0.3429187   0.3879179


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5322727   0.4644548   0.6000907
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             NA                0.2606090   0.2012346   0.3199835
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.5953672   0.5346438   0.6560907
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8696883   0.8274066   0.9119699
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6447547   0.6016470   0.6878624
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4193699   0.3459672   0.4927726
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2717797   0.2625661   0.2809932
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4287937   0.4081477   0.4494397
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2126922   0.1572886   0.2680959
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3595326   0.3001110   0.4189542
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6041867   0.5429353   0.6654381
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1990054   0.1630723   0.2349385
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1391499   0.1324751   0.1458246
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0942601   0.0822207   0.1062996
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4191470   0.3421535   0.4961404
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             NA                0.2102697   0.1529287   0.2676106
6-24 months                  ki0047075b-MAL-ED     PERU         observed             NA                0.3840526   0.3052613   0.4628439
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6736223   0.5788391   0.7684055
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5599635   0.5099152   0.6100118
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4591225   0.3821780   0.5360670
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2133537   0.2029541   0.2237534
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3706444   0.3496116   0.3916772


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.6907213   0.5813071   0.8207294
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              observed          0.9744080   0.8825658   1.0758075
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              observed          0.9567084   0.8552350   1.0702216
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              observed          0.9670040   0.9134112   1.0237413
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.9062339   0.8629001   0.9517439
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              observed          1.1195784   0.8437205   1.4856291
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.8677688   0.8506494   0.8852327
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9401742   0.9169383   0.9639989
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.6241754   0.4341591   0.8973550
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              observed          0.9077683   0.7564897   1.0892987
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              observed          0.8568055   0.7808271   0.9401770
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.8930355   0.8040562   0.9918616
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.9020898   0.8810718   0.9236092
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.8255037   0.7633619   0.8927042
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.8377323   0.6624295   1.0594264
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              observed          0.9948089   0.6518970   1.5180999
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              observed          1.0143339   0.8272456   1.2437336
6-24 months                  ki1000109-EE          PAKISTAN     optimal              observed          0.9742817   0.8500769   1.1166339
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.8343703   0.7352212   0.9468904
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              observed          0.9703946   0.6799213   1.3849626
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.9407130   0.9202634   0.9616170
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9858999   0.9598227   1.0126856
