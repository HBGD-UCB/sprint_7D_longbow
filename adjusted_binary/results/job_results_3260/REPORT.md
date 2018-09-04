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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        safeh20    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       94     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     1      109     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     0      115     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     1       16     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     0       91     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     1      105     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     0      153     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     1       53     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     0       84     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     1      135     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1      114     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       16     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       11     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       50     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       24     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      125     210
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       72     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      185     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      211     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      319     530
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      395     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      237     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      396     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      257     653
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     0        3      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     1        0      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     0       45      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     1        7      55
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     0       53     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     1       39     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     0      243     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     1      186     521
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       35   36854
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       12   36854
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    27467   36854
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     9340   36854
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        2    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     4381    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     3143    7526
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      161     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     1       42     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     0      123     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     1        8     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     0      155     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     1       41     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     0      194     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     1       12     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     0      141     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     1       78     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      132     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       63     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       24     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       11     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       43     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      105     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       44     210
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      254     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        3     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      409     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     1      121     530
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      531     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1      101     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      529     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      124     653
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     0        3      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     1        0      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     0       47      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     1        5      55
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     0       34     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     0      140     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       38   36810
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        8   36810
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    31944   36810
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4820   36810
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        2    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     6676    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      624    7302
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     0       92     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     1       67     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     0      114     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     1        8     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     0        0     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     1        0     122
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     0       91     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     1       64     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     0        0     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     1        0     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     0      152     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     1       41     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     0        0     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     1        0     193
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     0       84     146
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     1       57     146
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     0        5     146
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     1        0     146
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       51     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        5     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       10     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       22     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       81     145
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       59     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      184     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     0      147     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     1      198     345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      319     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      136     455
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      373     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      133     506
6-24 months                  ki1114097-CONTENT          PERU                           0                     0        3      50
6-24 months                  ki1114097-CONTENT          PERU                           0                     1        0      50
6-24 months                  ki1114097-CONTENT          PERU                           1                     0       45      50
6-24 months                  ki1114097-CONTENT          PERU                           1                     1        2      50
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     0       50     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     1       69     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     0      234     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     1      357     710
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0       13   20983
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1        4   20983
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0    16417   20983
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4549   20983
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0        2    6984
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    6984
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     4373    6984
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1     2609    6984


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e119be98-047f-4450-a157-0a9a2a939bfe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e119be98-047f-4450-a157-0a9a2a939bfe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e119be98-047f-4450-a157-0a9a2a939bfe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e119be98-047f-4450-a157-0a9a2a939bfe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid             country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                0.6164384    0.5518969   0.6809798
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000    0.1894236   0.8105764
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.5827714    0.5145344   0.6510083
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.4467668    0.3209658   0.5725678
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8240480    0.7317363   0.9163597
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8371891    0.7789784   0.8953999
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4172215    0.3180344   0.5164087
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4350155    0.3883311   0.4816998
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.0589853   -0.0083758   0.1263464
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2537594    0.2459553   0.2615635
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                0.3561644    0.2926036   0.4197251
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000    0.1894236   0.8105764
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3218135    0.2573405   0.3862865
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3100575    0.1883296   0.4317854
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3267046    0.2263677   0.4270415
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2902612    0.2194943   0.3610281
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.1739130    0.0105713   0.3372547
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.1311065    0.1254723   0.1367407
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3863636    0.3030317   0.4696955
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2083333    0.0453326   0.3713340
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8380107    0.7447448   0.9312765
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7932070    0.7195635   0.8668505
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                0.5773941    0.4921783   0.6626100
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    NA                0.6045828    0.5655868   0.6435789


### Parameter: E(Y)


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           NA                   NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.5652174   0.5010116   0.6294232
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8333333   0.7828081   0.8838586
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2537581   0.2459561   0.2615600
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           NA                   NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3217391   0.2612356   0.3822427
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2952381   0.2333963   0.3570799
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.1311600   0.1255297   0.1367903
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1148112-LCNI-5    MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    0                 0.8111111   0.4320278    1.522821
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.7666245   0.5678748    1.034935
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0159470   0.8927934    1.156089
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0426487   0.8048922    1.350636
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 4.3020799   1.3750758   13.459542
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    0                 1.4038462   0.7356030    2.679141
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.9634695   0.6249031    1.485468
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8884515   0.6117924    1.290219
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 0.7538625   0.2943971    1.930415
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.5392157   0.2394940    1.214033
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9465357   0.8236852    1.087709
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    0                 1.0470886   0.8936070    1.226932


### Parameter: PAR


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0050846   -0.0192768   0.0091076
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0175540   -0.0438523   0.0087444
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092853   -0.0663377   0.0849083
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0146403   -0.0749044   0.1041850
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.1947728    0.1275980   0.2619475
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                 0.0062810   -0.0080785   0.0206406
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0000744   -0.0246419   0.0244931
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0314665   -0.1134568   0.0505238
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.0427530   -0.2059956   0.1204895
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0273893   -0.0573137   0.0025352
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0587003   -0.1362024   0.0188018
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0226059   -0.0540678   0.0992795


### Parameter: PAF


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0083170   -0.0318361   0.0146660
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0310570   -0.0789620   0.0147211
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0111424   -0.0839265   0.0978730
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0339004   -0.1974141   0.2205300
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.7675531    0.2732674   0.9256514
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                 0.0173296   -0.0231121   0.0561727
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0002312   -0.0795817   0.0732869
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1065801   -0.4247469   0.1405353
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.3259609   -2.3900247   0.4813689
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0762987   -0.1633154   0.0042091
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0753234   -0.1810404   0.0209307
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0376764   -0.0990476   0.1573917
