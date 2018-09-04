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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        0       34     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                        1      182     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        0       30     490
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                        1      244     490
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        0       50     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                        1      126     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        0      286     948
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                        1      486     948
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                        1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                        1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        0     3476   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                        1     1572   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        0    16092   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                        1     5662   26802
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        0      740    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                        1      614    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2976    6492
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                        1     2162    6492
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        0      100     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                        1      116     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        0       92     490
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                        1      182     490
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        0      126     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                        1       50     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        0      634     948
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                        1      138     948
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                        1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                        1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        0     4106   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                        1      942   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        0    18998   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2756   26802
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        0     1210    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                        1      144    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        0     4680    6492
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                        1      458    6492
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                        0       34     190
6-24 months                  ki1000109-EE               PAKISTAN                       0                        1       66     190
6-24 months                  ki1000109-EE               PAKISTAN                       1                        0       28     190
6-24 months                  ki1000109-EE               PAKISTAN                       1                        1       62     190
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        0       50     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                        1       76     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        0      284     758
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                        1      348     758
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                        1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                        1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        0     2224   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                        1      638   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        0    10948   16720
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                        1     2910   16720
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        0      734    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                        1      472    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        0     2968    5880
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                        1     1706    5880


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
![](/tmp/7c8c2e36-3d48-447d-bb76-0784a78daff6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c8c2e36-3d48-447d-bb76-0784a78daff6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c8c2e36-3d48-447d-bb76-0784a78daff6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c8c2e36-3d48-447d-bb76-0784a78daff6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5377937   0.4615429   0.6140446
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5117556   0.3836570   0.6398542
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.5924370   0.5298849   0.6549890
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.6428571   0.3913643   0.8943500
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8418080   0.7740827   0.9095333
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8909559   0.8388713   0.9430404
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.4183176   0.3724881   0.4641471
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3912204   0.3199421   0.4624986
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                0.5486103   0.5226577   0.5745628
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    NA                0.4848328   0.4525330   0.5171326
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7042933   0.6205382   0.7880484
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6294136   0.5816275   0.6771997
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4243656   0.3439183   0.5048128
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4155372   0.2433403   0.5877340
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2903419   0.2742736   0.3064103
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2611486   0.2515324   0.2707647
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4602795   0.4242712   0.4962877
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4200238   0.3975054   0.4425421
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2149528   0.1507807   0.2791249
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.2050199   0.1036058   0.3064340
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3613445   0.3001916   0.4224974
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3571429   0.1056500   0.6086357
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.6128603   0.5254939   0.7002267
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.7058958   0.6331267   0.7786649
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1816670   0.1463987   0.2169353
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1541923   0.0995860   0.2087986
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                0.2722463   0.2486704   0.2958221
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    NA                0.2406167   0.2111152   0.2701182
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2401478   0.1481584   0.3321372
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1771222   0.1388975   0.2153470
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1606191   0.1476393   0.1735989
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1285868   0.1217245   0.1354491
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0845024   0.0641045   0.1049003
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0855870   0.0721566   0.0990174
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3915193   0.3045938   0.4784447
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3052036   0.1750485   0.4353586
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6409332   0.5110903   0.7707762
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6682962   0.5349200   0.8016724
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3023895   0.2541440   0.3506351
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2959089   0.2168569   0.3749610
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                0.3991167   0.3681136   0.4301199
6-24 months                  ki1101329-Keneba      GAMBIA       1                    NA                0.3723115   0.3326322   0.4119908
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5972661   0.4885418   0.7059904
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5513723   0.4969051   0.6058395
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4600149   0.3756900   0.5443399
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4413648   0.2611401   0.6215894
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2113522   0.1919413   0.2307631
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2101714   0.1991080   0.2212349
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4105758   0.3705137   0.4506378
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3658716   0.3431892   0.3885540


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9515834   0.7210991   1.2557372
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    0                 1.0851064   0.7235897   1.6272425
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    0                 1.0583837   0.9589921   1.1680763
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.9352233   0.7631467   1.1461003
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       1                    0                 0.8837472   0.8188571   0.9537795
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8936811   0.7765262   1.0285111
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    0                 0.9791962   0.6227919   1.5395596
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8994518   0.8479425   0.9540901
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9125407   0.8336387   0.9989106
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9537903   0.5415092   1.6799638
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    0                 0.9883721   0.4790611   2.0391542
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    0                 1.1518053   0.9757049   1.3596893
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8487635   0.5766382   1.2493094
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       1                    0                 0.8838201   0.7666667   1.0188757
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7375551   0.4753570   1.1443768
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8005701   0.7329584   0.8744186
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0128353   0.7620106   1.3462220
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7795365   0.4867050   1.2485535
6-24 months                  ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     1                    0                 1.0426925   0.7842588   1.3862868
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.9785688   0.7219498   1.3264038
6-24 months                  ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba      GAMBIA       1                    0                 0.9328386   0.8222812   1.0582606
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9231603   0.7519890   1.1332944
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    0                 0.9594574   0.6151972   1.4963633
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9944134   0.9003574   1.0982950
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8911182   0.7970930   0.9962347


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0066933   -0.0431997    0.0298131
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                 0.0028011   -0.0116671    0.0172694
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0275797   -0.0197588    0.0749183
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0075724   -0.0299115    0.0147667
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0096781   -0.0231339    0.0037776
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0587237   -0.1356166    0.0181692
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0015084   -0.0338597    0.0308429
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0204367   -0.0338651   -0.0070083
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0326763   -0.0640807   -0.0012718
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0044265   -0.0338398    0.0249868
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0002334   -0.0146129    0.0141460
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                -0.0046970   -0.0636367    0.0542426
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0083568   -0.0254960    0.0087825
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0069515   -0.0190386    0.0051356
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0418356   -0.1226085    0.0389374
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0226443   -0.0334207   -0.0118679
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0082271   -0.0104498    0.0269040
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0298644   -0.0139962    0.0737250
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0327510   -0.0562286    0.1217305
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0019509   -0.0262066    0.0223048
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                -0.0114099   -0.0275031    0.0046833
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0378993   -0.1371142    0.0613156
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0032248   -0.0373761    0.0309264
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0008488   -0.0162936    0.0179912
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0401676   -0.0747873   -0.0055479


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0126026   -0.0837877    0.0539069
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                 0.0047059   -0.0199093    0.0287270
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0317232   -0.0245375    0.0848943
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0184357   -0.0743460    0.0345650
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       0                    NA                -0.0179580   -0.0432953    0.0067640
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0909641   -0.2177602    0.0226296
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0035672   -0.0830629    0.0700936
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0757180   -0.1267856   -0.0269649
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0764172   -0.1528747   -0.0050303
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0210259   -0.1705180    0.1093739
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0006464   -0.0412693    0.0383917
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                -0.0077233   -0.1094059    0.0846396
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0482186   -0.1523858    0.0465327
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       0                    NA                -0.0262029   -0.0728669    0.0184314
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2109581   -0.6916725    0.1331541
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1641192   -0.2448745   -0.0886025
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0887217   -0.1346052    0.2680907
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0708722   -0.0395356    0.1695538
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0486148   -0.0932556    0.1720748
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0064935   -0.0905766    0.0711068
6-24 months                  ki1101329-Keneba      GAMBIA       0                    NA                -0.0294292   -0.0718796    0.0113401
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0677539   -0.2612087    0.0960271
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0070598   -0.0846728    0.0649998
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0039999   -0.0801357    0.0815818
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1084415   -0.2063441   -0.0184843
