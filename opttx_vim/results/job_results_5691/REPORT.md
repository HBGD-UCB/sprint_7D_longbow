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
![](/tmp/f42ecba9-6766-4502-94b7-390a54fa3791/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f42ecba9-6766-4502-94b7-390a54fa3791/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           optimal              NA                0.5207005   0.2098697   0.8315313
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.4482891   0.3008223   0.5957559
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7483867   0.6635414   0.8332320
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         optimal              NA                0.4216681   0.3223693   0.5209668
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     optimal              NA                0.2393283   0.1580664   0.3205902
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           optimal              NA                0.3562673   0.2927065   0.4198281
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.2273327   0.1281884   0.3264770
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2117691   0.1351435   0.2883947
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     optimal              NA                0.1311058   0.1254717   0.1367400
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.2145373   0.0515205   0.3775540
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7081346   0.6268257   0.7894436
6-24 months                  ki1148112-LCNI-5    MALAWI                         optimal              NA                0.5775514   0.4907213   0.6643814


### Parameter: E(Y)


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           observed             NA                0.6118448   0.5485738   0.6751157
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.5647972   0.5005914   0.6290030
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8344668   0.7839416   0.8849921
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         observed             NA                0.4326165   0.3900424   0.4751906
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     observed             NA                0.2538069   0.2460049   0.2616088
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           observed             NA                0.3621573   0.2997608   0.4245539
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.3244141   0.2639105   0.3849176
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2935465   0.2317047   0.3553884
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     observed             NA                0.1311597   0.1255294   0.1367901
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.3598993   0.2843811   0.4354175
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7814529   0.7137179   0.8491879
6-24 months                  ki1148112-LCNI-5    MALAWI                         observed             NA                0.5996148   0.5635544   0.6356752


### Parameter: RR


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           optimal              observed          0.8510337   0.4748759   1.5251530
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          0.7937169   0.5869771   1.0732728
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8968442   0.8306334   0.9683327
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         optimal              observed          0.9746926   0.7879922   1.2056282
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          0.9429544   0.6716368   1.3238748
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           optimal              observed          0.9837363   0.9448710   1.0242001
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          0.7007485   0.4801299   1.0227410
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7214158   0.5494176   0.9472591
0-6 months (no birth st.)    kiGH5241-JiVitA-3   BANGLADESH                     optimal              observed          0.9995891   0.9979938   1.0011870
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              observed          0.5961035   0.2908566   1.2216994
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9061770   0.8454773   0.9712346
6-24 months                  ki1148112-LCNI-5    MALAWI                         optimal              observed          0.9632040   0.8409575   1.1032209
