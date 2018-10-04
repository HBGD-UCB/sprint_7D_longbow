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

agecat                       studyid                    country                        predfeed6    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       45     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       61     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      135     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       24     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       28     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       84     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       97     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        4     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        9     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      136     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       47     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       88     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       45     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       58     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      125     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      173     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     210
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       34     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      194     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       32     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      238     498
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       74    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      174    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      282    1002
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      472    1002
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     4964   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     2106   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    21984   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     7208   36262
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      730    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      620    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3116    6716
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     2250    6716
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       70     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       87     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      142     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       30     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       11     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        2     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      169     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       26     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       78     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       57     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       72     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       31     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      146     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0      102     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      126     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       96     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1      174     498
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      190    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       58    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      614    1002
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1      140    1002
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     5778   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1292   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    25654   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3538   36262
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0     1200    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      150    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     4892    6716
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      474    6716
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       42     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       27     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       84     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       56     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        4     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        7     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      135     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       18     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8     194
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       46     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       31     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       44     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       27     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      111     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     144
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       34     194
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       68     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       28     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       64     194
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       72     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      116     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      274     794
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      332     794
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2844   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      824   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13482   20824
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3674   20824
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      726    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      472    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     3106    6082
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1778    6082


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
![](/tmp/eefb221a-a7d1-4a0a-a32d-5c67c9639caf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eefb221a-a7d1-4a0a-a32d-5c67c9639caf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3855935   0.2931771   0.4780100
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2473953   0.1842774   0.3105133
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5707804   0.4762680   0.6652929
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8207428   0.7522315   0.8892541
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6288849   0.5803244   0.6774454
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4113686   0.2362038   0.5865333
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2322796   0.2236782   0.2408811
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3820819   0.3605223   0.4036416
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.1775026   0.1042659   0.2507393
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.2989511   0.2132219   0.3846803
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5458215   0.4675643   0.6240787
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.1846473   0.1457200   0.2235747
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1173671   0.1114511   0.1232830
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0859191   0.0732495   0.0985888
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3633387   0.2525224   0.4741551
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                0.1966242   0.1363918   0.2568567
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                0.3927763   0.2847646   0.5007880
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.6811856   0.5859657   0.7764055
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.4549089   0.3887055   0.5211123
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.4377969   0.2644865   0.6111073
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1959412   0.1847829   0.2070996
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3637732   0.3420661   0.3854803


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5369015   0.4673090   0.6064940
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             NA                0.2593420   0.1996169   0.3190670
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.6119460   0.5499495   0.6739426
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8687411   0.8265416   0.9109405
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6454228   0.6034724   0.6873733
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4238335   0.3504308   0.4972362
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2581633   0.2502345   0.2660921
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4301719   0.4100925   0.4502514
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2068142   0.1502305   0.2633979
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3683928   0.3069340   0.4298516
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6030417   0.5421321   0.6639514
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1981702   0.1632678   0.2330727
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1342207   0.1285280   0.1399133
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0942000   0.0822171   0.1061829
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4292975   0.3508832   0.5077117
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             NA                0.2116874   0.1540897   0.2692851
6-24 months                  ki0047075b-MAL-ED     PERU         observed             NA                0.3942340   0.3153184   0.4731496
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6829871   0.5897060   0.7762681
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5639814   0.5151434   0.6128193
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4595766   0.3826322   0.5365211
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2168336   0.2073769   0.2262904
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3708771   0.3504504   0.3913038


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.7181830   0.6063122   0.8506949
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              observed          0.9539349   0.8628568   1.0546268
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              observed          0.9327300   0.8278093   1.0509489
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              observed          0.9447497   0.8942838   0.9980633
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.9743766   0.9390916   1.0109873
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              observed          0.9705900   0.6599319   1.4274881
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.8997391   0.8831144   0.9166767
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.8882074   0.8622993   0.9148940
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.8582706   0.6274323   1.1740364
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              observed          0.8115009   0.6545316   1.0061144
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              observed          0.9051140   0.8234904   0.9948280
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.9317612   0.8326026   1.0427291
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.8744336   0.8552181   0.8940808
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9120927   0.8543632   0.9737230
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              observed          0.8463565   0.6724816   1.0651882
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              observed          0.9288425   0.8155884   1.0578233
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              observed          0.9963024   0.8147921   1.2182475
6-24 months                  ki1000109-EE          PAKISTAN     optimal              observed          0.9973623   0.9038615   1.1005354
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              observed          0.8066027   0.7259487   0.8962175
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              observed          0.9526092   0.6655858   1.3634068
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          0.9036478   0.8725621   0.9358408
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          0.9808457   0.9551435   1.0072395
