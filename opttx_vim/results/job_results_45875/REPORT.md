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

**Intervention Variable:** exclfeed36

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
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
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
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat                       studyid                    country                        exclfeed36    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       24     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       29     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       82     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       13     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        1     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      161     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       27     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       92     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       11     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        4     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      145     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       51     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0        5     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1        9     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       97     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1      141     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      137     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      177     214
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        5       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        0        0       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        1        0       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        0        1       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        1        2       3
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       15     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      122     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       17     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1       91     245
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        0       92     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        1       67     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      248     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        1      170     577
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        0      285    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        1      286    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        0      544    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        1      683    1798
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      143     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      243     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       25     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       63     474
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     8046   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2831   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1738   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      786   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1488    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1081    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      370    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      307    3246
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       43     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      122     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       34     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       14     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      169     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       19     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      154     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       44     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       14     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      183     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0        9     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1        5     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0      152     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       86     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       79     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      148     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        4       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        2       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        0        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        1        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        0        3       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        1        0       3
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       46     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1       91     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0       50     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1       58     245
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      131     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        1       28     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      346     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        1       72     577
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        0      431    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        1      140    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        0      890    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        1      337    1798
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      317     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       69     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       63     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       25     474
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9499   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1378   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2053   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      471   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2340    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      605    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72    3246
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       23     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       19     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       69     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       48     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        8     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       89     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       62     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       11     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        3     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      143     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       38     195
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       85     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       55     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      112     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        3       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       4
6-24 months                  ki1000108-IRC              INDIA                          1                        0        0       3
6-24 months                  ki1000108-IRC              INDIA                          1                        1        0       3
6-24 months                  ki1000108-IRC              INDIA                          0                        0        1       3
6-24 months                  ki1000108-IRC              INDIA                          0                        1        2       3
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       14      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       31      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       17      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       33      95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        0       83     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        1       39     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        0      236     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        1       98     456
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        0      253    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        1      146    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        0      524    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        1      346    1269
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      142     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      174     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       25     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38     379
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5474    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1455    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1112    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      319    8360
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1484    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      853    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      367    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      236    2940


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9fc91ecb-df29-4e27-a70d-a447fae80319/944ad91f-8202-4f79-b975-bfa6fd30fde0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fc91ecb-df29-4e27-a70d-a447fae80319/944ad91f-8202-4f79-b975-bfa6fd30fde0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.5341437   0.4100819   0.6582055
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.6757380   0.6157246   0.7357514
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8309331   0.7596967   0.9021696
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.4081323   0.3391470   0.4771177
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       optimal              NA                0.5046531   0.4652260   0.5440801
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6291202   0.5808642   0.6773762
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.2987513   0.1887156   0.4087869
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2704728   0.2579908   0.2829549
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4172889   0.3901114   0.4444663
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.2013342   0.1206815   0.2819868
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.5824159   0.3921569   0.7726750
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5244238   0.4325493   0.6162983
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1541084   0.0996096   0.2086072
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       optimal              NA                0.2485772   0.2141267   0.2830277
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1939309   0.1404033   0.2474585
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1334822   0.1250222   0.1419422
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0931178   0.0777826   0.1084530
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3878216   0.2692596   0.5063837
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.7844089   0.6709701   0.8978477
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.2890596   0.2187721   0.3593471
6-24 months                  ki1101329-Keneba      GAMBIA       optimal              NA                0.3775751   0.3345582   0.4205920
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5573860   0.4829325   0.6318396
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.2843371   0.1721738   0.3965003
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2117665   0.1939471   0.2295859
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3674820   0.3360974   0.3988667


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.4107452   0.3705685   0.4509220
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       observed             NA                0.5389321   0.5158847   0.5619796
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1733102   0.1423987   0.2042217
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       observed             NA                0.2652948   0.2448823   0.2857072
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba      GAMBIA       observed             NA                0.3877069   0.3608893   0.4145245
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.9943027   0.8275010   1.1947271
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             optimal           0.8808712   0.8326494   0.9318856
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             optimal           1.0462788   0.9864977   1.1096827
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.0064022   0.8810073   1.1496446
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       observed             optimal           1.0679260   1.0025411   1.1375753
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0261467   0.9941564   1.0591664
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             optimal           1.4154154   1.0301646   1.9447387
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           0.9979015   0.9680936   1.0286273
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0247175   0.9840618   1.0670529
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0456561   0.7846250   1.3935277
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             optimal           0.6200227   0.4483285   0.8574698
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             optimal           1.1596790   1.0229815   1.3146430
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.1245993   0.8406772   1.5044106
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       observed             optimal           1.0672532   0.9525791   1.1957320
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0225923   0.8447438   1.2378841
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0336567   0.9930291   1.0759464
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.9958298   0.8988600   1.1032608
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0865398   0.8575826   1.3766240
6-24 months                  ki1000109-EE          PAKISTAN     observed             optimal           0.8588432   0.7530731   0.9794689
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   observed             optimal           1.0393656   0.8614194   1.2540707
6-24 months                  ki1101329-Keneba      GAMBIA       observed             optimal           1.0268338   0.9364556   1.1259345
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0035536   0.9125169   1.1036725
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             optimal           1.6065093   1.1345972   2.2747034
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0020516   0.9381936   1.0702561
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0079626   0.9499545   1.0695129


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0030432   -0.1011620    0.0950756
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                -0.0804999   -0.1152166   -0.0457831
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0384546   -0.0099685    0.0868778
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0026129   -0.0516856    0.0569114
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0342791    0.0024380    0.0661202
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0164494   -0.0033964    0.0362952
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.1241059    0.0276553    0.2205565
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0005676   -0.0087703    0.0076352
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0103143   -0.0065517    0.0271804
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0091921   -0.0485405    0.0669248
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                -0.2213048   -0.4048811   -0.0377285
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0837395    0.0190417    0.1484373
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0192018   -0.0254871    0.0638907
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0167176   -0.0115406    0.0449758
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0043813   -0.0326016    0.0413642
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0044926   -0.0008604    0.0098455
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0003883   -0.0099278    0.0091512
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0335620   -0.0581262    0.1252502
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.1107247   -0.2080249   -0.0134244
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0113790   -0.0427978    0.0655558
6-24 months                  ki1101329-Keneba      GAMBIA       optimal              NA                 0.0101318   -0.0246786    0.0449422
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0019807   -0.0510165    0.0549779
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                 0.1724531    0.0708910    0.2740151
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0004345   -0.0135089    0.0143779
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0029261   -0.0188423    0.0246945


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0057299   -0.2084578    0.1629888
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                -0.1352398   -0.2009857   -0.0730930
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                 0.0442318   -0.0136871    0.0988415
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0063614   -0.1350643    0.1301660
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       optimal              NA                 0.0636056    0.0025347    0.1209373
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0254805   -0.0058779    0.0558613
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                 0.2934936    0.0292813    0.4857921
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0021029   -0.0329580    0.0278306
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0241213   -0.0161963    0.0628393
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0436626   -0.2744941    0.2823967
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                -0.6128441   -1.2305073   -0.1662218
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.1376924    0.0224652    0.2393372
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.1107944   -0.1895172    0.3352878
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       optimal              NA                 0.0630152   -0.0497816    0.1636922
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0220931   -0.1837909    0.1921699
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0325608   -0.0070199    0.0705857
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0041876   -0.1125203    0.0935960
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0796471   -0.1660685    0.2735852
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.1643569   -0.3278924   -0.0209615
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   optimal              NA                 0.0378746   -0.1608747    0.2025968
6-24 months                  ki1101329-Keneba      GAMBIA       optimal              NA                 0.0261325   -0.0678563    0.1118488
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0035410   -0.0958702    0.0939341
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                 0.3775324    0.1186299    0.5603822
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0020474   -0.0658781    0.0656442
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0078997   -0.0526820    0.0649949
