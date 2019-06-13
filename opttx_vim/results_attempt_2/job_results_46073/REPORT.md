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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        safeh20    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0      185     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       57     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    0      134     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    1        7     141
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0      144     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    1       87     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0        1     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    1        0     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0      187     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    1       45     233
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0       11     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    1        0     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0      228     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    1       20     259
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       29     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        9     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      182     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       34     254
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      149     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       21     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       70     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        9     249
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       60     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       40     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0      418     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1      178     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0        2     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    1        0     598
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      563     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1      122     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0     685
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      646     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      108     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0     754
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    0       52      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    1        2      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    0        3      57
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    1        0      57
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0      627     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    1       44     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0      132     814
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    1       11     814
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10723   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2259   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       13   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2   12997
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1036    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      382    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    1418
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    1418
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      223     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       18     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    0      137     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    1        4     141
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0      194     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    1       36     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    0        1     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    1        0     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    0      215     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    1       15     231
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    0       11     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    1        0     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    0      243     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    1        5     259
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       36     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      206     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        9     253
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      165     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        5     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       76     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        3     249
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       89      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0      532     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       46     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0        2     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    1        0     580
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      645     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       36     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0        0     681
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1        0     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      729     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       20     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0     749
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    0       53      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    1        1      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    0        3      57
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    1        0      57
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    0      210     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    0       55     265
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11844   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      964   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       14   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1   12823
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1243    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       31    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    1274
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    1274
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0      196     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    1       44     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    0      136     140
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    1        4     140
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0      171     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    1       64     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0        1     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    1        0     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0      195     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    1       36     232
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0       11     259
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    1        0     259
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0      231     259
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    1       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       30     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      188     254
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       28     254
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0      147     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       20     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       71     244
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     244
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       63     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       40     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0      380     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1      159     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0        2     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    1        0     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      514     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       99     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0     613
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0     613
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      634     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       96     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0     730
6-24 months                   ki1114097-CONTENT          PERU                           1                    0       53      57
6-24 months                   ki1114097-CONTENT          PERU                           1                    1        1      57
6-24 months                   ki1114097-CONTENT          PERU                           0                    0        3      57
6-24 months                   ki1114097-CONTENT          PERU                           0                    1        0      57
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0      614     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    1       50     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0      128     805
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    1       13     805
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7135    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1408    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        5    8549
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    8549
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1062    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      368    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    1430
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    1430


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/7b71f711-10af-4c7c-97ac-aae79492a522/1949dfde-b7fd-4bc4-a26c-3740d0571983/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b71f711-10af-4c7c-97ac-aae79492a522/1949dfde-b7fd-4bc4-a26c-3740d0571983/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.1581799   0.1093566   0.2070033
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1409224   0.0675266   0.2143182
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         optimal              NA                0.0770085   0.0478973   0.1061197
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                0.1293830   0.0844912   0.1742747
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0781179   0.0172858   0.1389501
6-24 months                   ki1148112-LCNI-5    MALAWI                         optimal              NA                0.0907874   0.0588761   0.1226987


### Parameter: E(Y)


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.1692913   0.1230820   0.2155007
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         observed             NA                0.0675676   0.0503139   0.0848212
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             NA                0.1417323   0.0987555   0.1847090
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1065574   0.0677629   0.1453519
6-24 months                   ki1148112-LCNI-5    MALAWI                         observed             NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             optimal           1.0702454   0.9330159   1.227659
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8549523   0.5680608   1.286734
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         observed             optimal           0.8774041   0.6705905   1.148000
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   observed             optimal           1.0954477   0.9334699   1.285532
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3640576   0.6908374   2.693330
6-24 months                   ki1148112-LCNI-5    MALAWI                         observed             optimal           0.8620234   0.6700946   1.108925


### Parameter: PAR


agecat                        studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.0111114   -0.0107274   0.0329502
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0204405   -0.0782380   0.0373570
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.0094409   -0.0303761   0.0114942
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.0123493   -0.0085811   0.0332797
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0284394   -0.0254778   0.0823566
6-24 months                   ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.0125265   -0.0356794   0.0106263


### Parameter: PAF


agecat                        studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.0656348   -0.0717931   0.1854415
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1696559   -0.7603749   0.2228388
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.1397257   -0.4912230   0.1289199
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   optimal              NA                 0.0871312   -0.0712718   0.2221120
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2668931   -0.4475186   0.6287124
6-24 months                   ki1148112-LCNI-5    MALAWI                         optimal              NA                -0.1600613   -0.4923267   0.0982255
