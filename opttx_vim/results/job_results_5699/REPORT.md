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
![](/tmp/ce763485-2ca7-43e5-b177-8efe2ae903ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ce763485-2ca7-43e5-b177-8efe2ae903ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.5105324   0.3824486   0.6386163
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5919944   0.5294424   0.6545465
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.7996801   0.7288897   0.8704704
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.3908088   0.3188369   0.4627808
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       optimal              NA                0.5005918   0.4670958   0.5340878
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6028928   0.5543934   0.6513922
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4224821   0.2503729   0.5945912
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2480702   0.2385671   0.2575733
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4197463   0.3971743   0.4423183
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1711590   0.1062353   0.2360827
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.3505612   0.2287457   0.4723767
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5350050   0.4534522   0.6165579
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.1522454   0.0967962   0.2076946
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       optimal              NA                0.2136569   0.1860700   0.2412438
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1774215   0.1394850   0.2153579
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1147006   0.1076153   0.1217859
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0874541   0.0740776   0.1008306
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3527163   0.2583995   0.4470331
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.6546701   0.5267164   0.7826238
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   optimal              NA                0.2932764   0.2144745   0.3720784
6-24 months                  ki1101329-Keneba      GAMBIA       optimal              NA                0.3296113   0.2918885   0.3673341
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5530399   0.4981716   0.6079082
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.4412322   0.2613304   0.6211339
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2010318   0.1899067   0.2121569
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3537787   0.3311463   0.3764112


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5304223   0.4626043   0.5982402
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.5956234   0.5349000   0.6563469
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8702392   0.8279575   0.9125208
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.4110201   0.3708434   0.4511968
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       observed             NA                0.5388257   0.5157782   0.5618731
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6464093   0.6033016   0.6895170
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4244197   0.3510170   0.4978224
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2711925   0.2619789   0.2804060
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4275830   0.4069370   0.4482289
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2116186   0.1562149   0.2670222
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3610179   0.3015963   0.4204395
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6063245   0.5450732   0.6675759
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.1728522   0.1419407   0.2037638
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       observed             NA                0.2682011   0.2477886   0.2886135
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1981015   0.1621684   0.2340346
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1394548   0.1327800   0.1461295
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0930311   0.0809917   0.1050706
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4198919   0.3428985   0.4968853
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6743596   0.5795764   0.7691428
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   observed             NA                0.3004820   0.2583577   0.3426064
6-24 months                  ki1101329-Keneba      GAMBIA       observed             NA                0.3899296   0.3631120   0.4167472
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5597206   0.5096723   0.6097689
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4572197   0.3802753   0.5341642
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2132803   0.2028807   0.2236800
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3714091   0.3503763   0.3924419


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.9625019   0.7802211   1.1873684
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              observed          0.9939072   0.9698953   1.0185136
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              observed          0.9189199   0.8677660   0.9730892
0-24 months (no birth st.)   ki1017093b-PROVIDE    BANGLADESH   optimal              observed          0.9508266   0.8166214   1.1070874
0-24 months (no birth st.)   ki1101329-Keneba      GAMBIA       optimal              observed          0.9290422   0.8817093   0.9789162
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.9326796   0.8985323   0.9681247
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              observed          0.9954346   0.6876843   1.4409083
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.9147386   0.9002780   0.9294314
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9816722   0.9597695   1.0040747
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.8088088   0.6241286   1.0481361
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              observed          0.9710356   0.7013112   1.3444960
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              observed          0.8823740   0.7960689   0.9780359
0-6 months (no birth st.)    ki1017093b-PROVIDE    BANGLADESH   optimal              observed          0.8807835   0.6510849   1.1915184
0-6 months (no birth st.)    ki1101329-Keneba      GAMBIA       optimal              observed          0.7966295   0.7177446   0.8841843
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.8956088   0.8058143   0.9954095
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.8224933   0.7936455   0.8523897
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9400522   0.8814963   1.0024977
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.8400169   0.7050195   1.0008638
6-24 months                  ki1000109-EE          PAKISTAN     optimal              observed          0.9708027   0.8497760   1.1090662
6-24 months                  ki1017093b-PROVIDE    BANGLADESH   optimal              observed          0.9760199   0.7793528   1.2223151
6-24 months                  ki1101329-Keneba      GAMBIA       optimal              observed          0.8453098   0.7705413   0.9273333
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.9880642   0.9494516   1.0282472
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              observed          0.9650330   0.6668931   1.3964589
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.9425706   0.9207055   0.9649550
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9525311   0.9246738   0.9812276
