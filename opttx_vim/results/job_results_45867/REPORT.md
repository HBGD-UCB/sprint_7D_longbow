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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       94     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                     1      109     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     0      115     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                     1       16     131
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     0       91     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                     1      105     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     0      153     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                     1       53     207
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     0       84     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                     1      135     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       16     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1      114     230
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       24     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1      125     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       11     210
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       50     210
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       72     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      185     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      211     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      319     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      395     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      237     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      396     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      257     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     0       45      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                     1        7      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     0        3      55
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                     1        0      55
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     0      243     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                     1      186     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     0       53     521
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         0                     1       39     521
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13753   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4672   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       18   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        6   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2268    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1606    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3875
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      161     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                     1       42     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     0        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     0      123     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                     1        8     131
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     0        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                     1        0     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     0      155     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                     1       41     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     0        0     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     0      194     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                     1       12     207
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     0        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                     1        5     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     0      141     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                     1       78     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       24     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       11     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      132     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       63     230
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0      105     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       44     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       43     210
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       18     210
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0      254     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        3     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      409     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                     1      121     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     530
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      531     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1      101     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     632
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      529     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      124     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     653
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     0       47      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                     1        5      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     0        3      55
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                     1        0      55
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     0      140     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                     1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     0       34     174
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         0                     1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15972   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2410   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       19   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        4   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3338    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      312    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     0       92     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                     1       67     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     0        0     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                     1        0     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     0      114     122
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                     1        8     122
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     0        0     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                     1        0     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     0       91     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                     1       64     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     0        0     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                     1        0     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     0      152     193
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                     1       41     193
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     0        5     146
6-24 months                  ki0047075b-MAL-ED          PERU                           1                     1        0     146
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     0       84     146
6-24 months                  ki0047075b-MAL-ED          PERU                           0                     1       57     146
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       19     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        5     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       81     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       51     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       22     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       81     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0       10     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32     145
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       59     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                     1      184     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     0        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     0      147     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                     1      198     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     0        0     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                     1        0     345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      319     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      136     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0        0     455
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     455
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      373     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      133     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        0     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     506
6-24 months                  ki1114097-CONTENT          PERU                           1                     0       45      50
6-24 months                  ki1114097-CONTENT          PERU                           1                     1        2      50
6-24 months                  ki1114097-CONTENT          PERU                           0                     0        3      50
6-24 months                  ki1114097-CONTENT          PERU                           0                     1        0      50
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     0      234     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                     1      357     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     0       50     710
6-24 months                  ki1148112-LCNI-5           MALAWI                         0                     1       69     710
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8228   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2284   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0        7   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1        2   10521
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2264    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1379    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3644


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
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/dac475df-2a17-48fc-a55b-068a2c58cb52/7d7dacd6-0844-47d1-b74a-f73d4a64a749/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dac475df-2a17-48fc-a55b-068a2c58cb52/7d7dacd6-0844-47d1-b74a-f73d4a64a749/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           optimal              NA                0.4891337   0.1298399   0.8484276
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.4760398   0.3032266   0.6488531
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8698032   0.7921013   0.9475051
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         optimal              NA                0.4064793   0.3222078   0.4907507
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     optimal              NA                0.3016130   0.2920112   0.3112149
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           optimal              NA                0.3564211   0.2928366   0.4200056
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.4427587   0.3091568   0.5763606
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3263093   0.2184207   0.4341980
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.1974178   0.0297342   0.3651014
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8650070   0.7647538   0.9652602
6-24 months                  ki1148112-LCNI-5    MALAWI                         optimal              NA                0.6217690   0.5477954   0.6957426


### Parameter: E(Y)


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           observed             NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.5652174   0.5010116   0.6294232
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8333333   0.7828081   0.8838586
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         observed             NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     observed             NA                0.2535639   0.2457706   0.2613571
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           observed             NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.3217391   0.2612356   0.3822427
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2952381   0.2333963   0.3570799
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1148112-LCNI-5    MALAWI                         observed             NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           observed             optimal           1.2498703   0.6086316   2.5667018
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             optimal           1.1873321   0.8498518   1.6588275
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9580711   0.8866088   1.0352935
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         observed             optimal           1.0624449   0.8909735   1.2669166
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     observed             optimal           0.8406927   0.8111254   0.8713378
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           observed             optimal           1.0169023   0.9765555   1.0589162
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   observed             optimal           0.7266692   0.5560005   0.9497261
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9047798   0.7166385   1.1423144
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   observed             optimal           1.8183481   0.8132560   4.0656199
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9009295   0.8103036   1.0016912
6-24 months                  ki1148112-LCNI-5    MALAWI                         observed             optimal           0.9649886   0.8681032   1.0726869


### Parameter: PAR


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           optimal              NA                 0.1222200   -0.2290394    0.4734793
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.0891775   -0.0693914    0.2477465
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0364699   -0.1035296    0.0305899
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         optimal              NA                 0.0253825   -0.0460423    0.0968074
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     optimal              NA                -0.0480492   -0.0581097   -0.0379886
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           optimal              NA                 0.0060243   -0.0084017    0.0204504
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                -0.1210196   -0.2381122   -0.0039270
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0310712   -0.1081518    0.0460093
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.1615565    0.0020592    0.3210538
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0856967   -0.1755191    0.0041258
6-24 months                  ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.0217690   -0.0875015    0.0439635


### Parameter: PAF


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           optimal              NA                 0.1999170   -0.6430300    0.6103949
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.1577757   -0.1766758    0.3971646
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0437638   -0.1278931    0.0340903
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         optimal              NA                 0.0587747   -0.1223679    0.2106821
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     optimal              NA                -0.1894953   -0.2328550   -0.1476605
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           optimal              NA                 0.0166214   -0.0240074    0.0556382
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                -0.3761419   -0.7985595   -0.0529352
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1052413   -0.3954036    0.1245842
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.4500503   -0.2296251    0.7540351
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1099647   -0.2341053    0.0016883
6-24 months                  ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.0362817   -0.1519367    0.0677615
