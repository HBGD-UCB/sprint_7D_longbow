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

unadjusted

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
![](/tmp/b7252aa4-cc7f-44c8-bf7d-cc14f38f1339/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b7252aa4-cc7f-44c8-bf7d-cc14f38f1339/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b7252aa4-cc7f-44c8-bf7d-cc14f38f1339/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b7252aa4-cc7f-44c8-bf7d-cc14f38f1339/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4845361   0.3848428   0.5842294
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5714286   0.4795587   0.6632984
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2541436   0.1905655   0.3177218
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.3000000   0.1356277   0.4643723
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6159420   0.5346327   0.6972513
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.5701754   0.4791194   0.6612315
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8425926   0.7737677   0.9114175
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8905109   0.8381170   0.9429049
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7159091   0.6215849   0.8102333
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6295337   0.5813059   0.6777614
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4275862   0.3468301   0.5083423
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4000000   0.2241925   0.5758075
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3119266   0.2921690   0.3316842
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2602350   0.2503900   0.2700800
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4564565   0.4137094   0.4992035
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4201550   0.3972099   0.4431002
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2371134   0.1522712   0.3219556
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1875000   0.1150409   0.2599591
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.3840580   0.3027487   0.4653673
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3333333   0.2466266   0.4200401
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5370370   0.4428048   0.6312693
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6642336   0.5849917   0.7434755
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2840909   0.1897667   0.3784151
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1787565   0.1404934   0.2170196
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1870762   0.1710872   0.2030652
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1266752   0.1196846   0.1336659
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1081081   0.0829256   0.1332906
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0887597   0.0750403   0.1024791
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3478261   0.2350917   0.4605605
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4777778   0.3742546   0.5813009
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.1987952   0.1379277   0.2596626
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.2758621   0.1127740   0.4389501
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.4324324   0.3191761   0.5456887
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.3600000   0.2510014   0.4689986
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6600000   0.5280005   0.7919995
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6888889   0.5529098   0.8248680
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6031746   0.4822060   0.7241432
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5506329   0.4957155   0.6055503
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4626866   0.3780033   0.5473698
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4285714   0.2447034   0.6124395
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2233968   0.2003406   0.2464529
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2099121   0.1986011   0.2212232
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3929174   0.3466371   0.4391977
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3647209   0.3417255   0.3877164


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
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1793313   0.9083124   1.5312158
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    0                 1.1804348   0.6463370   2.1558821
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    0                 0.9256966   0.7524629   1.1388125
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    0                 1.0568701   0.9556589   1.1688004
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8793486   0.7550423   1.0241202
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    0                 0.9354839   0.5798008   1.5093634
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8342828   0.7782509   0.8943488
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9204712   0.8279319   1.0233538
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7907609   0.4670023   1.3389715
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    0                 0.8679245   0.6206196   1.2137757
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    0                 1.2368487   1.0003860   1.5292045
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6292228   0.4238782   0.9340450
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6771318   0.6147357   0.7458611
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8210271   0.6202093   1.0868678
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.3736111   0.9301359   2.0285288
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    0                 1.3876698   0.7130882   2.7004059
6-24 months                  ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU         1                    0                 0.8325000   0.5578557   1.2423575
6-24 months                  ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     1                    0                 1.0437710   0.7880751   1.3824291
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9128914   0.7296998   1.1420733
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    0                 0.9262673   0.5809871   1.4767473
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9396381   0.8389276   1.0524387
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9282382   0.8146148   1.0577100


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0465644   -0.0263231    0.1194519
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0065199   -0.0186314    0.0316711
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0207039   -0.0760004    0.0345925
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0267952   -0.0216654    0.0752557
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0703395   -0.1566631    0.0159842
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0047291   -0.0379310    0.0284728
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0420214   -0.0590763   -0.0249664
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0288533   -0.0666484    0.0089419
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0265871   -0.0864718    0.0332977
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0229469   -0.0768105    0.0309167
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.0711262    0.0018240    0.1404285
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0857787   -0.1687527   -0.0028046
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0491014   -0.0627664   -0.0354364
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0153786   -0.0382614    0.0075042
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0735576   -0.0136579    0.1607731
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0114612   -0.0147130    0.0376355
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0364593   -0.1157950    0.0428764
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0136842   -0.0761312    0.1034996
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0438078   -0.1545928    0.0669771
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0058964   -0.0409414    0.0291485
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0111958   -0.0319870    0.0095954
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0225092   -0.0629294    0.0179110


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0876753   -0.0609884    0.2155086
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0250126   -0.0763546    0.1168333
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0347826   -0.1321297    0.0541940
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0308207   -0.0268080    0.0852151
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1089572   -0.2517475    0.0175446
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0111836   -0.0928430    0.0643740
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1556894   -0.2206127   -0.0942193
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0674767   -0.1597550    0.0174593
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1262887   -0.4488874    0.1244826
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0635452   -0.2237576    0.0756925
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.1169525   -0.0058813    0.2247864
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4325435   -0.9155865   -0.0713068
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3558724   -0.4577517   -0.2611132
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1658436   -0.4434865    0.0583970
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1745620   -0.0613110    0.3580129
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0545107   -0.0780401    0.1707637
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0920751   -0.3124222    0.0912771
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0203125   -0.1226113    0.1450402
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0783169   -0.2959847    0.1027925
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0129084   -0.0926320    0.0609982
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0527604   -0.1555388    0.0408765
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0607687   -0.1756150    0.0428583
