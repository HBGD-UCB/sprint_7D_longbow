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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1fedcc4a-f7f1-41c2-a75e-c606f0cc1a69/4f20a569-1142-44fe-90c9-0d43a02105ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1fedcc4a-f7f1-41c2-a75e-c606f0cc1a69/4f20a569-1142-44fe-90c9-0d43a02105ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1fedcc4a-f7f1-41c2-a75e-c606f0cc1a69/4f20a569-1142-44fe-90c9-0d43a02105ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1fedcc4a-f7f1-41c2-a75e-c606f0cc1a69/4f20a569-1142-44fe-90c9-0d43a02105ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2368421   0.1014013   0.3722829
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1574074   0.1087444   0.2060704
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1235294   0.0739671   0.1730917
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1139241   0.0437217   0.1841264
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         1                    NA                0.0655738   0.0468328   0.0843147
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         0                    NA                0.0769231   0.0332218   0.1206244
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2105263   0.0806485   0.3404041
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.1296296   0.0847466   0.1745126
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1197605   0.0704160   0.1691050
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0779221   0.0179280   0.1379162
6-24 months                   ki1148112-LCNI-5    MALAWI                         1                    NA                0.0753012   0.0552179   0.0953845
6-24 months                   ki1148112-LCNI-5    MALAWI                         0                    NA                0.0921986   0.0444164   0.1399808


### Parameter: E(Y)


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1692913   0.1230820   0.2155007
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.0675676   0.0503139   0.0848212
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.1417323   0.0987555   0.1847090
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1065574   0.0677629   0.1453519
6-24 months                   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat                        studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.6646091   0.3469294   1.273185
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9222423   0.4420762   1.923946
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         0                    1                 1.1730769   0.6210621   2.215736
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 0.6157407   0.3035012   1.249210
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 0.6506494   0.2717086   1.558083
6-24 months                   ki1148112-LCNI-5    MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1148112-LCNI-5    MALAWI                         0                    1                 1.2243972   0.6835845   2.193070


### Parameter: PAR


agecat                        studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0675508   -0.1899873   0.0548857
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0030475   -0.0303176   0.0242226
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0019938   -0.0063649   0.0103525
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.0687940   -0.1857045   0.0481164
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0132031   -0.0378385   0.0114323
6-24 months                   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0029597   -0.0061297   0.0120490


### Parameter: PAF


agecat                        studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.3990208   -1.3401173   0.1636064
0-24 months (no birth wast)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0252941   -0.2784208   0.1777136
0-24 months (no birth wast)   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0295082   -0.1022069   0.1454832
6-24 months                   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4853801   -1.5766080   0.1436982
6-24 months                   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1239060   -0.3766171   0.0824138
6-24 months                   ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0378179   -0.0852968   0.1469667
