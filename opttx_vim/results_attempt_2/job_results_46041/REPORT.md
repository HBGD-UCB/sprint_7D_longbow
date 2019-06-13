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
![](/tmp/79728503-dbd4-46ac-94df-218c8ab20f73/ee7ba926-499c-4b77-a3d2-9159873c6994/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79728503-dbd4-46ac-94df-218c8ab20f73/ee7ba926-499c-4b77-a3d2-9159873c6994/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.4954187   0.3975841   0.5932533
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2540639   0.1904161   0.3177118
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5718054   0.4817367   0.6618740
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8395991   0.7693044   0.9098939
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6302960   0.5821833   0.6784088
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4332826   0.2604897   0.6060755
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2653571   0.2530853   0.2776289
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4134918   0.3905796   0.4364040
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1879508   0.1151216   0.2607800
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.3317157   0.2462871   0.4171442
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5332970   0.4418310   0.6247630
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1907776   0.1416074   0.2399479
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1300727   0.1230349   0.1371106
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0870479   0.0734947   0.1006011
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3532825   0.2419472   0.4646178
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                0.1987122   0.1377484   0.2596759
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                0.3874902   0.2761561   0.4988244
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.6625153   0.5275704   0.7974601
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5524816   0.4977283   0.6072348
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.4624141   0.2687905   0.6560378
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2177173   0.2002255   0.2352090
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3649539   0.3358138   0.3940941


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


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0720235   0.9299962   1.235741
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             optimal           1.0259760   0.9291627   1.132877
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             optimal           1.0409803   0.9290857   1.166351
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             optimal           1.0354796   0.9768032   1.097681
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0242324   0.9924949   1.056985
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.9759384   0.6801567   1.400347
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0171396   0.9868044   1.048407
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0341274   1.0066485   1.062356
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1201140   0.8507616   1.474744
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             optimal           1.0886163   0.9004827   1.316056
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             optimal           1.1403839   1.0091337   1.288705
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0394942   0.8746106   1.235462
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0607508   1.0326854   1.089579
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0652699   0.9964062   1.138893
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1927667   0.9389645   1.515172
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             optimal           1.0580952   0.9276700   1.206857
6-24 months                  ki0047075b-MAL-ED     PERU         observed             optimal           1.0218919   0.8332755   1.253203
6-24 months                  ki1000109-EE          PAKISTAN     observed             optimal           1.0168584   0.8842297   1.169381
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0124623   0.9732022   1.053306
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             optimal           0.9878377   0.6788311   1.437505
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           0.9746630   0.9152209   1.037966
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0149450   0.9612478   1.071642


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0356818   -0.0345627   0.1059263
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0065996   -0.0185921   0.0317912
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0234327   -0.0414835   0.0883490
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0297886   -0.0188927   0.0784700
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0152736   -0.0045008   0.0350480
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0104255   -0.1668628   0.1460118
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0045481   -0.0034836   0.0125798
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0141114    0.0029583   0.0252645
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0225755   -0.0292474   0.0743984
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.0293954   -0.0334757   0.0922666
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0748663    0.0105519   0.1391807
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0075346   -0.0253608   0.0404300
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0079020    0.0043741   0.0114300
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0056816   -0.0000578   0.0114211
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0681011   -0.0161015   0.1523037
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0115442   -0.0146786   0.0377670
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                 0.0084829   -0.0705737   0.0875395
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                 0.0111689   -0.0813487   0.1036866
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0068852   -0.0149515   0.0287218
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0056240   -0.1791461   0.1678981
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0055163   -0.0192232   0.0081906
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0054542   -0.0143763   0.0252848


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0671846   -0.0752732   0.1907689
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0253184   -0.0762378   0.1172915
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0393670   -0.0763270   0.1426251
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0342639   -0.0237477   0.0889883
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0236591   -0.0075619   0.0539127
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0246548   -0.4702494   0.2858915
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0168508   -0.0133721   0.0461724
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0330011    0.0066046   0.0586962
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1072337   -0.1754175   0.3219161
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.0814027   -0.1105155   0.2401537
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1231023    0.0090510   0.2240270
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0379936   -0.1433659   0.1905861
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0572715    0.0316509   0.0822143
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0612708   -0.0036068   0.1219544
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1616131   -0.0650030   0.3400088
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0549054   -0.0779695   0.1714017
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                 0.0214229   -0.2000832   0.2020445
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                 0.0165789   -0.1309279   0.1448464
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0123089   -0.0275357   0.0506084
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0123120   -0.4731206   0.3043504
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0259956   -0.0926324   0.0365771
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0147249   -0.0403145   0.0668524
