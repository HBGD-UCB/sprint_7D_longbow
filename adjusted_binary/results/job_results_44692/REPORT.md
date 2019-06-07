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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        safeh20    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       44    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       77    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        3     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       14     17
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       67    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      106    173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       19     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       72     91
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       27     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       14     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       10     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       50     76
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       29     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     45
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       58     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     62
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      202    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1      218    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      128    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      178    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    306
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      117    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      194    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    311
0-24 months   ki1114097-CONTENT          PERU                           1                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           1                    1        2      2
0-24 months   ki1114097-CONTENT          PERU                           0                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           0                    1        0      2
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       52     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       13     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        4     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2199   3828
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1626   3828
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        2   3828
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1   3828
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      415    567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      152    567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    567
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    567
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       12     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       47     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       10     11
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       22     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       56     78
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       33     41
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        3     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       17     26
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        9     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       18     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     18
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       64    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1      158    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       39    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      144    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       21    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      177    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    198
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           1                    1        1      1
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           0                    1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      791   2419
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1626   2419
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        1   2419
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1   2419
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0       65    147
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       82    147
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    147
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    147
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       32     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       30     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        2      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        4      6
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       50     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       39     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       17     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        7     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       33     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       20     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     33
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       40     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     44
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      138    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       60    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        0    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       89    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       34    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       96    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       17    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    113
6-24 months   ki1114097-CONTENT          PERU                           1                    0        0      1
6-24 months   ki1114097-CONTENT          PERU                           1                    1        1      1
6-24 months   ki1114097-CONTENT          PERU                           0                    0        0      1
6-24 months   ki1114097-CONTENT          PERU                           0                    1        0      1
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       49     74
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     74
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       12     74
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        4     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1408   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        1   1409
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   1409
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      350    420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       70    420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    420


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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


ALL STRATA DROPPED. JOB FINISHED
















