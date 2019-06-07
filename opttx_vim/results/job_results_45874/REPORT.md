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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       48     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       64     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       50     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       47     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       29     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      145     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       24     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1       10     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       90     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1       98     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       21     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        9     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      135     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       46     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0       49     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1       65     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       53     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1       85     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      136     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      176     214
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       15     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      122     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       17     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1       91     245
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      143     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      243     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       25     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       63     474
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     8059   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2835   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1725   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      782   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1496    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1084    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      362    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      304    3246
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       91     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       21     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       23     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       31     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        2     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      152     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       17     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0       11     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        3     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      147     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       41     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       29     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      168     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0       76     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1       38     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0       85     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       53     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        1     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       78     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      147     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       46     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1       91     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0       50     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1       58     245
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      317     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       69     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       63     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       25     474
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9514   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1380   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2038   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      469   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2351    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      594    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72    3246
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       47     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       43     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       45     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       24     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       28     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      131     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        7     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        7     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       57     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       21     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        8     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      133     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       33     195
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0       48     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1       27     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       42     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       32     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      111     145
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       14      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       31      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       17      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       33      95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      142     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      174     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       25     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38     379
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5484    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1457    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1102    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      317    8360
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1491    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      856    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      360    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      233    2940


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
![](/tmp/2dcd976f-4966-45e6-a81b-a185d7bd8659/ee14c10e-d739-4a1d-884d-83e4f7995566/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2dcd976f-4966-45e6-a81b-a185d7bd8659/ee14c10e-d739-4a1d-884d-83e4f7995566/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.4755151   0.3779034   0.5731267
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2542200   0.1905641   0.3178760
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5603485   0.4681806   0.6525163
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8375292   0.7658707   0.9091877
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6305983   0.5825095   0.6786871
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4698025   0.2966417   0.6429632
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2678654   0.2557423   0.2799885
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4189484   0.3954511   0.4424457
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1886900   0.1157537   0.2616263
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.3321015   0.2467702   0.4174329
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5288628   0.4369434   0.6207822
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1820038   0.1384794   0.2255283
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1343334   0.1262764   0.1423903
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0877666   0.0731599   0.1023733
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3573656   0.2446912   0.4700400
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2493457   0.1478085   0.3508829
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                0.4198601   0.3111772   0.5285430
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.7385038   0.6009882   0.8760195
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5523429   0.4974648   0.6072209
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.5113008   0.3361469   0.6864547
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2281167   0.2137024   0.2425309
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3732047   0.3466830   0.3997263


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED     PERU         observed             NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1168951   0.9612485   1.2977442
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             optimal           1.0253460   0.9286066   1.1321634
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             optimal           1.0622641   0.9482864   1.1899412
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             optimal           1.0380388   0.9790765   1.1005519
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0237415   0.9921872   1.0562993
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.9000743   0.6442659   1.2574524
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0076151   0.9779504   1.0381796
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0206583   0.9933546   1.0487125
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1157259   0.8463707   1.4708025
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             optimal           1.0873515   0.8989818   1.3151915
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             optimal           1.1499452   1.0152201   1.3025491
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0896047   0.9390391   1.2643120
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0271073   0.9854470   1.0705287
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0565471   0.9558296   1.1678775
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1791389   0.9279351   1.4983468
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             optimal           0.8432326   0.6212288   1.1445724
6-24 months                  ki0047075b-MAL-ED     PERU         observed             optimal           0.9431074   0.7797587   1.1406753
6-24 months                  ki1000109-EE          PAKISTAN     observed             optimal           0.9122284   0.7978376   1.0430202
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0127166   0.9729095   1.0541523
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             optimal           0.8933882   0.6547192   1.2190607
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           0.9302300   0.8910729   0.9711079
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.9925068   0.9479497   1.0391581


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0555854   -0.0155170    0.1266878
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0064435   -0.0187603    0.0316472
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0348896   -0.0282298    0.0980090
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0318586   -0.0167237    0.0804408
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0149713   -0.0047063    0.0346490
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0469453   -0.2038156    0.1099249
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0020398   -0.0059653    0.0100450
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0086548   -0.0027002    0.0200098
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0218363   -0.0304651    0.0741377
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.0290096   -0.0341390    0.0921582
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0793005    0.0143664    0.1442345
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0163084   -0.0107964    0.0434132
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0036414   -0.0019437    0.0092265
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0049629   -0.0038333    0.0137592
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0640181   -0.0212446    0.1492808
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                -0.0390893   -0.1158964    0.0377179
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                -0.0238870   -0.1033327    0.0555588
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.0648196   -0.1634447    0.0338054
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0070239   -0.0151117    0.0291595
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0545107   -0.2130263    0.1040049
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0159157   -0.0257092   -0.0061222
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0027965   -0.0199308    0.0143378


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1046608   -0.0403137    0.2294321
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0247195   -0.0768823    0.1167353
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0586146   -0.0545337    0.1596224
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0366448   -0.0213707    0.0913650
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0231909   -0.0078743    0.0532987
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1110194   -0.5521540    0.2047413
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0075576   -0.0225467    0.0367756
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0202402   -0.0066898    0.0464498
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1037225   -0.1815154    0.3200991
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.0803342   -0.1123695    0.2396544
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1303934    0.0149919    0.2322746
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0822360   -0.0649184    0.2090560
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0263918   -0.0147679    0.0658822
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0535207   -0.0462116    0.1437458
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1519235   -0.0776616    0.3325978
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                -0.1859124   -0.6097130    0.1263113
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                -0.0603247   -0.2824480    0.1233263
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.0962166   -0.2533879    0.0412458
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0125569   -0.0278448    0.0513705
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1193343   -0.5273723    0.1796963
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0750029   -0.1222427   -0.0297517
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0075498   -0.0549082    0.0376826
