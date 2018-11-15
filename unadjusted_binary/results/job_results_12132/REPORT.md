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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        exclfeed36    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        0       74     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                        1       82     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        0       24     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                        1       29     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        0      161     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                        1       27     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        0       13     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                        1        1     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        0       92     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                        1      106     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        0        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                        1        2     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        0      145     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                        1       51     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        0       11     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                        1        4     211
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        0       97     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                        1      141     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        0        5     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                        1        9     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      115     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1      137     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       36     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      177     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     214
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     214
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       6
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        5       6
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        0        1       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                        1        2       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        0        0       3
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                        1        0       3
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       17     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1       91     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       15     245
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      122     245
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       70      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        0      248     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                        1      170     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        0       92     577
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                        1       67     577
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        0      544    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                        1      683    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        0      285    1798
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                        1      286    1798
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       25     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1       63     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      143     474
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      243     474
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1738   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1      786   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0     8046   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2831   13401
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      370    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      307    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1488    3246
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1081    3246
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        0      122     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                        1       34     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        0       43     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                        1       10     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        0      169     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                        1       19     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        0       14     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        0      154     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                        1       44     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        0        4     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                        1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        0      183     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                        1       13     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        0       14     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                        1        1     211
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        0      152     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                        1       86     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        0        9     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                        1        5     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      173     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       79     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     252
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      148     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       65     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        1     214
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        0     214
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        4       6
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        2       6
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        0        3       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                        1        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        0        0       3
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                        1        0       3
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0       50     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1       58     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       46     245
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1       91     245
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      95
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        0      346     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                        1       72     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        0      131     577
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                        1       28     577
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        0      890    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                        1      337    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        0      431    1798
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                        1      140    1798
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0       63     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       25     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      317     474
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1       69     474
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2053   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      471   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0     9499   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1378   13401
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0      605    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1       72    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2340    3246
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      229    3246
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        0       69     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                        1       48     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        0       23     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                        1       19     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        0      147     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                        1        8     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        0       12     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                        1        1     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        0       89     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                        1       62     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        0        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                        1        2     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        0      143     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                        1       38     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        0       11     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                        1        3     195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        0       85     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                        1       55     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        0        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                        1        4     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      101     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1       58     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0        0     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      112     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        0     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        0        0       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                        1        0       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        0        1       4
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                        1        3       4
6-24 months                  ki1000108-IRC              INDIA                          0                        0        1       3
6-24 months                  ki1000108-IRC              INDIA                          0                        1        2       3
6-24 months                  ki1000108-IRC              INDIA                          1                        0        0       3
6-24 months                  ki1000108-IRC              INDIA                          1                        1        0       3
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       17      95
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       33      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       14      95
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       31      95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                        1       71      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        0      91
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        0      236     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                        1       98     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        0       83     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                        1       39     456
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        0      524    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         0                        1      346    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        0      253    1269
6-24 months                  ki1101329-Keneba           GAMBIA                         1                        1      146    1269
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       25     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       38     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      142     379
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      174     379
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     1112    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      319    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0     5474    8360
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     1455    8360
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      367    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      236    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1484    2940
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1      853    2940


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
![](/tmp/ee6f33a8-7e5f-45e9-bc70-2743e2e9808d/df9bc594-7d03-4657-9d87-ede811582cc7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee6f33a8-7e5f-45e9-bc70-2743e2e9808d/df9bc594-7d03-4657-9d87-ede811582cc7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee6f33a8-7e5f-45e9-bc70-2743e2e9808d/df9bc594-7d03-4657-9d87-ede811582cc7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee6f33a8-7e5f-45e9-bc70-2743e2e9808d/df9bc594-7d03-4657-9d87-ede811582cc7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5256410   0.4470948   0.6041873
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5471698   0.4128375   0.6815021
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.5924370   0.5298849   0.6549890
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6428571   0.3913643   0.8943500
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8425926   0.7737677   0.9114175
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8905109   0.8381170   0.9429049
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4066986   0.3595671   0.4538300
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.4213836   0.3445661   0.4982012
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                0.5566422   0.5288379   0.5844465
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                0.5008757   0.4598533   0.5418980
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7159091   0.6215849   0.8102333
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6295337   0.5813059   0.6777614
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4275862   0.3468301   0.5083423
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4000000   0.2241925   0.5758075
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3114105   0.2916159   0.3312050
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2602740   0.2504201   0.2701279
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4534712   0.4111631   0.4957793
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4207863   0.3977680   0.4438046
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2179487   0.1530073   0.2828902
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1886792   0.0830924   0.2942661
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3613445   0.3001916   0.4224974
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3571429   0.1056500   0.6086357
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5370370   0.4428048   0.6312693
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6642336   0.5849917   0.7434755
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1722488   0.1360191   0.2084785
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1761006   0.1168431   0.2353582
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                0.2746536   0.2496725   0.2996348
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                0.2451839   0.2098885   0.2804792
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2840909   0.1897667   0.3784151
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1787565   0.1404934   0.2170196
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1866086   0.1705888   0.2026283
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1266893   0.1196911   0.1336876
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1063516   0.0815389   0.1311642
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0891397   0.0753742   0.1029053
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4102564   0.3208467   0.4996661
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4523810   0.3013782   0.6033837
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6600000   0.5280005   0.7919995
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6888889   0.5529098   0.8248680
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2934132   0.2445283   0.3422980
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3196721   0.2368290   0.4025152
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                0.3977011   0.3651667   0.4302356
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                0.3659148   0.3186327   0.4131969
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6031746   0.4822060   0.7241432
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5506329   0.4957155   0.6055503
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4626866   0.3780033   0.5473698
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4285714   0.2447034   0.6124395
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2229210   0.1998447   0.2459974
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2099870   0.1986733   0.2213007
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3913765   0.3456923   0.4370606
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3649979   0.3419236   0.3880722


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.5952381   0.5345146   0.6559615
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8693878   0.8271061   0.9116694
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.4107452   0.3705685   0.4509220
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       NA                   NA                0.5389321   0.5158847   0.5619796
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6455696   0.6024620   0.6886773
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2699052   0.2606917   0.2791188
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4276032   0.4069572   0.4482492
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3611111   0.3016895   0.4205327
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6081633   0.5469119   0.6694146
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1733102   0.1423987   0.2042217
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       NA                   NA                0.2652948   0.2448823   0.2857072
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1983122   0.1623791   0.2342454
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1379748   0.1313000   0.1446495
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0927295   0.0806900   0.1047690
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6736842   0.5789010   0.7684674
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1101329-Keneba      GAMBIA       NA                   NA                0.3877069   0.3608893   0.4145245
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5593668   0.5093185   0.6094150
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2122010   0.2018013   0.2226006
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3704082   0.3493754   0.3914410


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0409572   0.7809347   1.3875576
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    0                 1.0851064   0.7235897   1.6272425
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    0                 1.0568701   0.9556589   1.1688004
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0361080   0.8348159   1.2859360
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    0                 0.8998162   0.8175068   0.9904127
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8793486   0.7550423   1.0241202
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    0                 0.9354839   0.5798008   1.5093634
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8357907   0.7794152   0.8962439
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9279229   0.8348330   1.0313929
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.8657048   0.4592296   1.6319611
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    0                 0.9883721   0.4790611   2.0391542
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    0                 1.2368487   1.0003860   1.5292045
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0223620   0.6874881   1.5203523
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    0                 0.8927022   0.7529296   1.0584219
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6292228   0.4238782   0.9340450
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6789043   0.6160195   0.7482085
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8381612   0.6331509   1.1095525
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1026786   0.7401518   1.6427711
6-24 months                  ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     1                    0                 1.0437710   0.7880751   1.3824291
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0894948   0.8006177   1.4826040
6-24 months                  ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba      GAMBIA       1                    0                 0.9200748   0.7895949   1.0721163
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9128914   0.7296998   1.1420733
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    0                 0.9262673   0.5809871   1.4767473
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9419794   0.8407700   1.0553720
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9326005   0.8191298   1.0617898


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0054595   -0.0340221    0.0449411
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                 0.0028011   -0.0116671    0.0172694
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0267952   -0.0216654    0.0752557
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0040467   -0.0207939    0.0288873
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0177101   -0.0334939   -0.0019263
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0703395   -0.1566631    0.0159842
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0047291   -0.0379310    0.0284728
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0415052   -0.0585850   -0.0244255
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0258680   -0.0632219    0.0114859
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0074224   -0.0389047    0.0240599
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0002334   -0.0146129    0.0141460
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.0711262    0.0018240    0.1404285
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0010614   -0.0180784    0.0202013
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0093589   -0.0231059    0.0043882
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0857787   -0.1687527   -0.0028046
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0486338   -0.0623218   -0.0349457
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0136220   -0.0361488    0.0089048
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0111272   -0.0353184    0.0575728
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0136842   -0.0761312    0.1034996
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0070254   -0.0187320    0.0327829
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                -0.0099943   -0.0280585    0.0080699
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0438078   -0.1545928    0.0669771
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0058964   -0.0409414    0.0291485
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0107201   -0.0314950    0.0100548
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0209683   -0.0608202    0.0188837


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0102795   -0.0669383    0.0819088
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                 0.0047059   -0.0199093    0.0287270
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0308207   -0.0268080    0.0852151
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0098520   -0.0525131    0.0685218
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0328614   -0.0626168   -0.0039392
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1089572   -0.2517475    0.0175446
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0111836   -0.0928430    0.0643740
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1537770   -0.2187871   -0.0922346
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0604953   -0.1516684    0.0234600
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0352564   -0.1959883    0.1038743
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0006464   -0.0412693    0.0383917
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.1169525   -0.0058813    0.2247864
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0061244   -0.1106785    0.1106439
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0352772   -0.0883950    0.0152483
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4325435   -0.9155865   -0.0713068
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3524831   -0.4545103   -0.2576126
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1469008   -0.4199895    0.0736682
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0264064   -0.0903461    0.1306573
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0203125   -0.1226113    0.1450402
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0233839   -0.0662136    0.1054522
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                -0.0257780   -0.0734554    0.0197819
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0783169   -0.2959847    0.1027925
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0129084   -0.0926320    0.0609982
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0505185   -0.1532075    0.0430264
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0566086   -0.1697995    0.0456299
