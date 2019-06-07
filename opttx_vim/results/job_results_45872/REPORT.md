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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       45     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       61     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       46     198
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       28     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        4     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      135     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       24     191
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0        4     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        9     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       84     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       97     194
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      136     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0       45     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1       58     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0       47     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1       88     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       96     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      125     222
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       35     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      173     210
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      119     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       17     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1       97     249
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       70      95
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      141     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      236     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0       37     501
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1       87     501
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    10992   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3604   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2482   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1053   18131
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1558    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                       1     1125    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      365    3358
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      310    3358
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       87     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1       19     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0       70     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       22     198
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       30     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        2     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      142     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       17     191
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       11     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        2     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      140     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       41     194
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       26     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      169     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0       72     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1       31     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0       78     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       57     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        1     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      150     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       71     222
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      146     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       62     210
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       48     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       87     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       51     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1       63     249
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      95
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      307     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       70     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0       95     501
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       29     501
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    12827   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1769   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       0     2889   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      646   18131
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       0     2446    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      237    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      600    3358
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       75    3358
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       42     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       44     154
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       24     154
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       27     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      132     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0        4     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        7     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       84     151
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       56     151
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       18     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      135     194
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33     194
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0       44     148
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1       27     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       46     148
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       31     148
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       95     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       54     149
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31     144
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      111     144
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       14      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       32      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       17      97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       34      97
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       71      91
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      137     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      166     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0       36     397
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1       58     397
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       0     6741   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1837   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1422   10412
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                       1      412   10412
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1553    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                       1      889    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       0      363    3041
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                       1      236    3041


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
![](/tmp/b4fa1697-9fa8-44f9-bb70-a1735dab3e0a/56147dbe-8b86-4561-814c-fd452cb393f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b4fa1697-9fa8-44f9-bb70-a1735dab3e0a/56147dbe-8b86-4561-814c-fd452cb393f9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.5154256   0.4138479   0.6170033
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                0.2487232   0.1855355   0.3119109
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                0.5615665   0.4638220   0.6593110
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                0.8709011   0.8094913   0.9323109
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.6270897   0.5783666   0.6758129
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                0.4655210   0.2976991   0.6333429
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2567310   0.2469625   0.2664995
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.4191971   0.3968350   0.4415593
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.2124193   0.1324785   0.2923601
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                0.3001021   0.2132741   0.3869301
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                0.5464480   0.4562035   0.6366925
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.2080802   0.1547408   0.2614195
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.1297121   0.1225623   0.1368619
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.0956828   0.0799211   0.1114444
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                0.3684178   0.2541564   0.4826793
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                0.1970389   0.1366033   0.2574745
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                0.4957717   0.3859106   0.6056328
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                0.7869859   0.6705409   0.9034309
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                0.5493253   0.4933522   0.6052984
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                0.5004483   0.3259739   0.6749228
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                0.2238196   0.2078358   0.2398034
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                0.3662454   0.3440582   0.3884326


### Parameter: E(Y)


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.5404040   0.4708116   0.6099965
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             NA                0.2596154   0.1998903   0.3193405
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             NA                0.6134454   0.5514489   0.6754419
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             NA                0.6447106   0.6027601   0.6866610
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2568529   0.2489241   0.2647817
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.4273377   0.4072583   0.4474171
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.2070707   0.1504870   0.2636544
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             NA                0.1976048   0.1627023   0.2325072
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.1331973   0.1275046   0.1388899
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.0929124   0.0809295   0.1048954
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             NA                0.4285714   0.3501572   0.5069857
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED     PERU         observed             NA                0.3918919   0.3129763   0.4708075
6-24 months                  ki1000109-EE          PAKISTAN     observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             NA                0.5642317   0.5153938   0.6130696
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             NA                0.4567901   0.3798457   0.5337346
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             NA                0.2160008   0.2065441   0.2254575
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             NA                0.3699441   0.3495174   0.3903708


### Parameter: RR


agecat                       studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.0484617   0.9094115   1.2087729
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        observed             optimal           1.0437924   0.9448190   1.1531336
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         observed             optimal           1.0923824   0.9617877   1.2407098
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     observed             optimal           0.9960601   0.9454525   1.0493766
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0280994   0.9904903   1.0671366
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       observed             optimal           0.9083524   0.6591692   1.2517333
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0004748   0.9769502   1.0245659
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0194195   0.9932425   1.0462863
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   observed             optimal           0.9748205   0.7488880   1.2689147
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         observed             optimal           1.2320736   0.9907211   1.5322228
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     observed             optimal           1.1024098   0.9822738   1.2372389
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        observed             optimal           0.9496571   0.7838406   1.1505509
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           1.0268687   0.9914140   1.0635914
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           0.9710467   0.8707880   1.0828488
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   observed             optimal           1.1632755   0.9194422   1.4717727
6-24 months                  ki0047075b-MAL-ED     NEPAL        observed             optimal           1.0725811   0.9404751   1.2232438
6-24 months                  ki0047075b-MAL-ED     PERU         observed             optimal           0.7904684   0.6671490   0.9365829
6-24 months                  ki1000109-EE          PAKISTAN     observed             optimal           0.8645801   0.7636885   0.9788006
6-24 months                  ki1113344-GMS-Nepal   NEPAL        observed             optimal           1.0271359   0.9786365   1.0780388
6-24 months                  ki1148112-LCNI-5      MALAWI       observed             optimal           0.9127618   0.6625240   1.2575154
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   observed             optimal           0.9650663   0.9126094   1.0205385
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   observed             optimal           1.0100989   0.9825699   1.0383991


### Parameter: PAR


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0249784   -0.0482512    0.0982080
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0108922   -0.0139204    0.0357048
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0518789   -0.0190223    0.1227801
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0034312   -0.0488401    0.0419776
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0176208   -0.0056791    0.0409208
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0426639   -0.1919192    0.1065914
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0001219   -0.0059870    0.0062308
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0081406   -0.0027771    0.0190582
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0053486   -0.0613490    0.0506518
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.0696458    0.0045595    0.1347320
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0559616   -0.0064338    0.1183570
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0104754   -0.0503847    0.0294340
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0034852   -0.0010761    0.0080465
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0027703   -0.0131861    0.0076455
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0601536   -0.0262636    0.1465709
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0143013   -0.0117526    0.0403552
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                -0.1038798   -0.1843007   -0.0234590
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.1065735   -0.1999434   -0.0132037
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0149064   -0.0116104    0.0414233
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0436582   -0.2035320    0.1162156
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0078188   -0.0203367    0.0046990
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0036987   -0.0064330    0.0138303


### Parameter: PAF


agecat                       studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.0462217   -0.0996123    0.1727147
0-24 months (no birth st.)   ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0419551   -0.0584038    0.1327978
0-24 months (no birth st.)   ki0047075b-MAL-ED     PERU         optimal              NA                 0.0845697   -0.0397305    0.1940097
0-24 months (no birth st.)   ki1000109-EE          PAKISTAN     optimal              NA                -0.0039555   -0.0576946    0.0470533
0-24 months (no birth st.)   ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0273314   -0.0096010    0.0629128
0-24 months (no birth st.)   ki1148112-LCNI-5      MALAWI       optimal              NA                -0.1008943   -0.5170611    0.2011078
0-24 months (no birth st.)   kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0004746   -0.0235936    0.0239769
0-24 months (no birth st.)   kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0190495   -0.0068035    0.0442387
0-6 months (no birth st.)    ki0047075b-MAL-ED     BANGLADESH   optimal              NA                -0.0258299   -0.3353131    0.2119250
0-6 months (no birth st.)    ki0047075b-MAL-ED     PERU         optimal              NA                 0.1883602   -0.0093658    0.3473534
0-6 months (no birth st.)    ki1000109-EE          PAKISTAN     optimal              NA                 0.0928963   -0.0180461    0.1917486
0-6 months (no birth st.)    ki1113344-GMS-Nepal   NEPAL        optimal              NA                -0.0530117   -0.2757696    0.1308511
0-6 months (no birth st.)    kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                 0.0261657   -0.0086604    0.0597893
0-6 months (no birth st.)    kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                -0.0298166   -0.1483851    0.0765100
6-24 months                  ki0047075b-MAL-ED     BANGLADESH   optimal              NA                 0.1403584   -0.0876160    0.3205473
6-24 months                  ki0047075b-MAL-ED     NEPAL        optimal              NA                 0.0676696   -0.0632924    0.1825014
6-24 months                  ki0047075b-MAL-ED     PERU         optimal              NA                -0.2650726   -0.4989154   -0.0677112
6-24 months                  ki1000109-EE          PAKISTAN     optimal              NA                -0.1566308   -0.3094343   -0.0216586
6-24 months                  ki1113344-GMS-Nepal   NEPAL        optimal              NA                 0.0264190   -0.0218298    0.0723896
6-24 months                  ki1148112-LCNI-5      MALAWI       optimal              NA                -0.0955761   -0.5093793    0.2047811
6-24 months                  kiGH5241-JiVitA-3     BANGLADESH   optimal              NA                -0.0361982   -0.0957591    0.0201252
6-24 months                  kiGH5241-JiVitA-4     BANGLADESH   optimal              NA                 0.0099979   -0.0177393    0.0369792
