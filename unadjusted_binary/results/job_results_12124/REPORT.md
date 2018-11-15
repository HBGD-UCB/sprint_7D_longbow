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

unadjusted

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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0       18   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        6   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    13753   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4672   18449
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2268    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1606    3875
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       19   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        4   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    15972   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2410   18405
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3338    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      312    3651
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0        7   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1        2   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8228   10521
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2284   10521
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0        1    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2264    3644
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1379    3644


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
![](/tmp/69047a8b-76f4-4eef-9039-668a9740fa0f/4c2cf951-b7ba-4085-9f56-ec6d1e250f93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/69047a8b-76f4-4eef-9039-668a9740fa0f/4c2cf951-b7ba-4085-9f56-ec6d1e250f93/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/69047a8b-76f4-4eef-9039-668a9740fa0f/4c2cf951-b7ba-4085-9f56-ec6d1e250f93/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/69047a8b-76f4-4eef-9039-668a9740fa0f/4c2cf951-b7ba-4085-9f56-ec6d1e250f93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                0.6164384   0.5518969   0.6809798
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.5846154   0.5152988   0.6539320
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.4571429   0.2917453   0.6225404
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8196721   0.7229622   0.9163821
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8389262   0.7797610   0.8980913
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                0.4239130   0.3228357   0.5249904
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    NA                0.4335664   0.3866269   0.4805060
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                0.2500000   0.0888552   0.4111448
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                0.2535685   0.2457771   0.2613600
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                0.3561644   0.2926036   0.4197251
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    NA                0.5000000   0.1894236   0.8105764
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3230769   0.2572961   0.3888578
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.3142857   0.1601532   0.4684182
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2950820   0.1803564   0.4098076
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2953020   0.2218800   0.3687240
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                0.3863636   0.3030317   0.4696955
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                0.2083333   0.0453326   0.3713340
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7619048   0.6326484   0.8911611
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7864078   0.7069843   0.8658312
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                0.5798319   0.4910871   0.6685768
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    NA                0.6040609   0.5646047   0.6435171


### Parameter: E(Y)


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           NA                   NA                0.6113537   0.5480828   0.6746246
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.5652174   0.5010116   0.6294232
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8333333   0.7828081   0.8838586
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         NA                   NA                0.4318618   0.3892877   0.4744359
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                0.2535639   0.2457706   0.2613571
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           NA                   NA                0.3624454   0.3000489   0.4248420
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3217391   0.2612356   0.3822427
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2952381   0.2333963   0.3570799
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1148112-LCNI-5    MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat                       studyid             country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           1                    0                 0.8111111   0.4320278   1.522821
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.7819549   0.5343534   1.144287
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0234899   0.8920448   1.174304
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         1                    0                 1.0227721   0.7871394   1.328942
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     1                    0                 1.0142741   0.5326975   1.931212
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           1                    0                 1.4038462   0.7356030   2.679141
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.9727891   0.5720118   1.654369
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0007457   0.6308103   1.587628
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   1                    0                 0.5392157   0.2394940   1.214033
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0321602   0.8472311   1.257455
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1148112-LCNI-5    MALAWI                         1                    0                 1.0417862   0.8820812   1.230407


### Parameter: PAR


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0050846   -0.0192768   0.0091076
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0193980   -0.0473250   0.0085290
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136612   -0.0667880   0.0941104
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0079488   -0.0838173   0.0997148
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.0035639   -0.1572215   0.1643493
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                 0.0062810   -0.0080785   0.0206406
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0013378   -0.0268428   0.0241672
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001561   -0.0964870   0.0967993
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0273893   -0.0573137   0.0025352
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0174056   -0.0903746   0.1251858
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0201681   -0.0606774   0.1010136


### Parameter: PAF


agecat                       studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED   PERU                           0                    NA                -0.0083170   -0.0318361   0.0146660
0-24 months (no birth st.)   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0343195   -0.0851999   0.0141753
0-24 months (no birth st.)   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0163934   -0.0850919   0.1083872
0-24 months (no birth st.)   ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0184058   -0.2188409   0.2094726
0-24 months (no birth st.)   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                 0.0140552   -0.8757272   0.4817545
0-6 months (no birth st.)    ki0047075b-MAL-ED   PERU                           0                    NA                 0.0173296   -0.0231121   0.0561727
0-6 months (no birth st.)    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0041580   -0.0866431   0.0720658
0-6 months (no birth st.)    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005288   -0.3867793   0.2796672
6-24 months                  ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0762987   -0.1633154   0.0042091
6-24 months                  ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0223346   -0.1263204   0.1513697
6-24 months                  ki1148112-LCNI-5    MALAWI                         0                    NA                 0.0336134   -0.1110079   0.1594092
