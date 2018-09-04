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
![](/tmp/4cddfc25-bd24-4eaa-bcdf-1c7d439efc60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4cddfc25-bd24-4eaa-bcdf-1c7d439efc60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4cddfc25-bd24-4eaa-bcdf-1c7d439efc60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4cddfc25-bd24-4eaa-bcdf-1c7d439efc60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5105185   0.4174033   0.6036337
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5679135   0.4816866   0.6541404
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2486188   0.1855009   0.3117367
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    NA                0.3333333   0.1550928   0.5115739
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                0.6500408   0.5722911   0.7277905
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    NA                0.5659993   0.4714795   0.6605191
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                0.8510352   0.7863442   0.9157261
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    NA                0.8813682   0.8270506   0.9356858
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6608108   0.5921119   0.7295096
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6226287   0.5750423   0.6702150
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                0.4288550   0.3484424   0.5092675
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    NA                0.4134099   0.2439349   0.5828850
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2767903   0.2639264   0.2896543
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2484436   0.2401160   0.2567712
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4673805   0.4341413   0.5006198
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4200953   0.3985375   0.4416530
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2178505   0.1380637   0.2976372
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1911807   0.1149186   0.2674428
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                0.4208560   0.3412639   0.5004482
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    NA                0.3019296   0.2162066   0.3876525
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                0.5723323   0.4962238   0.6484407
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    NA                0.6633842   0.5939674   0.7328011
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1931704   0.1246013   0.2617396
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1803246   0.1417592   0.2188900
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1600246   0.1497214   0.1703278
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1238899   0.1179405   0.1298393
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0997945   0.0809093   0.1186798
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0859213   0.0728672   0.0989754
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.3615166   0.2508033   0.4722298
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4817802   0.3776544   0.5859060
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                0.1964286   0.1361962   0.2566610
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    NA                0.3076923   0.1298269   0.4855577
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                0.4025974   0.2926857   0.5125091
6-24 months                  ki0047075b-MAL-ED     PERU         1                    NA                0.3802817   0.2669788   0.4935846
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                0.6506935   0.5239521   0.7774348
6-24 months                  ki1000109-EE          PAKISTAN     1                    NA                0.6818724   0.5518682   0.8118767
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6096019   0.5162268   0.7029770
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5496155   0.4943720   0.6048589
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                0.4642225   0.3799801   0.5484648
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    NA                0.4464319   0.2700998   0.6227641
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2191842   0.2023629   0.2360055
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2156612   0.2056090   0.2257133
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4091680   0.3730301   0.4453059
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3669117   0.3452811   0.3885422


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2596154   0.1998903   0.3193405
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         NA                   NA                0.6134454   0.5514489   0.6754419
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED     PERU         NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months                  ki1000109-EE          PAKISTAN     NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1124248   0.8961018   1.3809693
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        1                    0                 1.3407407   0.7417773   2.4233495
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         1                    0                 0.8707136   0.7128143   1.0635900
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     1                    0                 1.0356425   0.9398017   1.1412571
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9422193   0.8291488   1.0707092
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       1                    0                 0.9639855   0.6151068   1.5107424
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8975876   0.8542858   0.9430844
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8988293   0.8272129   0.9766459
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.8775777   0.5162716   1.4917392
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         1                    0                 0.7174177   0.5173964   0.9947658
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     1                    0                 1.1590893   0.9979098   1.3463020
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9335001   0.6187831   1.4082841
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7741928   0.7205334   0.8318483
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8609819   0.6814499   1.0878127
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.3326641   0.9242661   1.9215177
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     NEPAL        1                    0                 1.5664336   0.8141948   3.0136694
6-24 months                  ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED     PERU         1                    0                 0.9445706   0.6305687   1.4149349
6-24 months                  ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE          PAKISTAN     1                    0                 1.0479165   0.7978752   1.3763167
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9015974   0.7536516   1.0785859
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5      MALAWI       1                    0                 0.9616768   0.6237677   1.4826388
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9839265   0.9063806   1.0681070
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8967262   0.8102480   0.9924343


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0298855   -0.0319006    0.0916716
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0109966   -0.0138528    0.0358460
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0365954   -0.0884209    0.0152302
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0164347   -0.0289811    0.0618505
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0161002   -0.0767067    0.0445064
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0059978   -0.0388419    0.0268463
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0199374   -0.0305551   -0.0093198
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0400428   -0.0691399   -0.0109458
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0107797   -0.0657863    0.0442268
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.0511081   -0.0999564   -0.0022599
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.0300774   -0.0182152    0.0783699
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0044344   -0.0532344    0.0621031
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0268273   -0.0353446   -0.0183100
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0068821   -0.0238963    0.0101321
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0670549   -0.0163004    0.1504102
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0149116   -0.0108176    0.0406409
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0107055   -0.0864546    0.0650436
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0297189   -0.0568181    0.1162559
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0453701   -0.1263263    0.0355860
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0074323   -0.0420074    0.0271428
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0031834   -0.0177505    0.0113836
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0392239   -0.0703429   -0.0081049


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0553022   -0.0664967    0.1631911
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0423573   -0.0581256    0.1332980
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         0                    NA                -0.0596555   -0.1483199    0.0221629
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     0                    NA                 0.0189456   -0.0349260    0.0700129
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0249727   -0.1236893    0.0650716
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0141840   -0.0949498    0.0606244
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0776220   -0.1199839   -0.0368624
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0937030   -0.1646856   -0.0270464
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0520583   -0.3543297    0.1827495
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         0                    NA                -0.1382243   -0.2798087   -0.0123032
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     0                    NA                 0.0499284   -0.0336564    0.1267543
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0224406   -0.3178854    0.2748820
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2014102   -0.2675841   -0.1386910
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0740707   -0.2761355    0.0959989
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1564613   -0.0626222    0.3303759
6-24 months                  ki0047075b-MAL-ED     NEPAL        0                    NA                 0.0705575   -0.0586476    0.1839935
6-24 months                  ki0047075b-MAL-ED     PERU         0                    NA                -0.0273175   -0.2400189    0.1488991
6-24 months                  ki1000109-EE          PAKISTAN     0                    NA                 0.0436778   -0.0924576    0.1628488
6-24 months                  ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0804104   -0.2342678    0.0542678
6-24 months                  ki1148112-LCNI-5      MALAWI       0                    NA                -0.0162708   -0.0949163    0.0567258
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0147381   -0.0845196    0.0505533
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1060266   -0.1940399   -0.0245008
