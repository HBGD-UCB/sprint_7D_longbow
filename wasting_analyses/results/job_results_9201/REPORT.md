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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        impsan    wast_rec90d   n_cell       n
------------  ----------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0       10     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1       11     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       34     121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       66     121
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        1      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        6      23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1       16      23
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       40     170
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       64     170
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       25     170
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       41     170
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       19      92
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       73      92
0-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3      32
0-24 months   ki0047075b-MAL-ED       PERU                           0                   1       20      32
0-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3      32
0-24 months   ki0047075b-MAL-ED       PERU                           1                   1        6      32
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0       11      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       63      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1      76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1      76
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       36      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      44
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0      136     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1      138     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       66     421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       81     421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        5     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        9     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0      123     306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1      169     306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       18     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       23     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       96     307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      170     307
0-24 months   ki1114097-CONTENT       PERU                           0                   0        0       9
0-24 months   ki1114097-CONTENT       PERU                           0                   1        0       9
0-24 months   ki1114097-CONTENT       PERU                           1                   0        2       9
0-24 months   ki1114097-CONTENT       PERU                           1                   1        7       9
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      154     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1       86     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0       10     264
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1       14     264
0-24 months   ki1135781-COHORTS       INDIA                          0                   0     1050    1962
0-24 months   ki1135781-COHORTS       INDIA                          0                   1      282    1962
0-24 months   ki1135781-COHORTS       INDIA                          1                   0      452    1962
0-24 months   ki1135781-COHORTS       INDIA                          1                   1      178    1962
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      242     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      361     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       22     683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       58     683
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       65      77
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12      77
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0      77
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0      77
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     2923   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1932   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     5805   15122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     4462   15122
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      811    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      282    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     2177    4045
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      775    4045
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   0        1      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   1        7      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   0       11      59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   1       40      59
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   0        0      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   1        1      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   0        1      14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   1       12      14
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   0       11      77
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   1       31      77
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   0       11      77
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   1       24      77
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   0        0      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   1        0      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   0        8      42
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   1       34      42
0-6 months    ki0047075b-MAL-ED       PERU                           0                   0        0       9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   1        8       9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   0        0       9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   1        1       9
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        3      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       23      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        0      26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0      26
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       11      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      12
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   0       42     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   1       97     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   0       22     223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   1       62     223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   0        1     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   1        6     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   0       38     183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   1      138     183
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0        4     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       22     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       16     196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      154     196
0-6 months    ki1114097-CONTENT       PERU                           0                   0        0       4
0-6 months    ki1114097-CONTENT       PERU                           0                   1        0       4
0-6 months    ki1114097-CONTENT       PERU                           1                   0        0       4
0-6 months    ki1114097-CONTENT       PERU                           1                   1        4       4
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   0       30     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   1       80     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   0        1     125
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   1       14     125
0-6 months    ki1135781-COHORTS       INDIA                          0                   0      561    1290
0-6 months    ki1135781-COHORTS       INDIA                          0                   1      282    1290
0-6 months    ki1135781-COHORTS       INDIA                          1                   0      269    1290
0-6 months    ki1135781-COHORTS       INDIA                          1                   1      178    1290
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   0       58     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   1      173     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   0        8     280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   1       41     280
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   0        4       4
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   1        0       4
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   0        0       4
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   1        0       4
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1108    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1932    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   0     1962    9464
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     4462    9464
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   0      140    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   1      146    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      344    1096
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      466    1096
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0        9      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1        4      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       23      62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       26      62
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        0       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        5       9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1        4       9
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       29      93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       33      93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       14      93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       17      93
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       11      50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       39      50
6-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3      23
6-24 months   ki0047075b-MAL-ED       PERU                           0                   1       12      23
6-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3      23
6-24 months   ki0047075b-MAL-ED       PERU                           1                   1        5      23
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        8      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       40      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1      50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1      50
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        7      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0      32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0      32
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0       94     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1       41     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       44     198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       19     198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        4     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        3     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0       85     123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1       31     123
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       14     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        1     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       80     111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16     111
6-24 months   ki1114097-CONTENT       PERU                           0                   0        0       5
6-24 months   ki1114097-CONTENT       PERU                           0                   1        0       5
6-24 months   ki1114097-CONTENT       PERU                           1                   0        2       5
6-24 months   ki1114097-CONTENT       PERU                           1                   1        3       5
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      124     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1        6     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0        9     139
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1        0     139
6-24 months   ki1135781-COHORTS       INDIA                          0                   0      489     672
6-24 months   ki1135781-COHORTS       INDIA                          0                   1        0     672
6-24 months   ki1135781-COHORTS       INDIA                          1                   0      183     672
6-24 months   ki1135781-COHORTS       INDIA                          1                   1        0     672
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      184     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      188     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       14     403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       17     403
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       61      73
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12      73
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0      73
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0      73
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1815    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1        0    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     3843    5658
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1        0    5658
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      671    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      136    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     1833    2949
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      309    2949


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ac391b4d-6763-431f-9287-22d112b18360/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac391b4d-6763-431f-9287-22d112b18360/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac391b4d-6763-431f-9287-22d112b18360/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac391b4d-6763-431f-9287-22d112b18360/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5238095   0.3303014   0.7173177
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6600000   0.5642467   0.7557533
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6153846   0.5116273   0.7191420
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6212121   0.4912415   0.7511827
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5036496   0.4414527   0.5658466
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5510204   0.4645738   0.6374670
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.6428571   0.3621822   0.9235321
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.5787671   0.5206376   0.6368967
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.5609756   0.4015592   0.7203920
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6390977   0.5818061   0.6963894
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3583333   0.2956074   0.4210592
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5833333   0.3683989   0.7982678
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2117117   0.1902035   0.2332199
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2825397   0.2459315   0.3191479
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5986733   0.5582519   0.6390947
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7250000   0.6113567   0.8386433
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3979403   0.3787562   0.4171243
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4345963   0.4209604   0.4482322
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2580055   0.2220297   0.2939813
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2625339   0.2396068   0.2854610
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.7380952   0.5974754   0.8787151
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.6857143   0.5305267   0.8409019
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6978417   0.6216977   0.7739857
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7380952   0.6434348   0.8327557
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3345196   0.3026570   0.3663822
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3982103   0.3528118   0.4436088
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6355263   0.6113185   0.6597341
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6945828   0.6786587   0.7105069
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5104895   0.4284825   0.5924965
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5753086   0.5271245   0.6234928
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5322581   0.3882846   0.6762315
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5483871   0.3554241   0.7413501
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3037037   0.2246718   0.3827357
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.3015873   0.1861854   0.4169892
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5053763   0.4516690   0.5590836
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5483871   0.3670161   0.7297581
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1685254   0.1347254   0.2023254
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1442577   0.1236211   0.1648943


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.6176471   0.5365376   0.6987565
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.6286645   0.5746609   0.6826681
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4228277   0.4116994   0.4339560
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2613103   0.2419607   0.2806599
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.7142857   0.6098683   0.8187031
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.6756128   0.6622741   0.6889516
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5376344   0.4216441   0.6536248
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1508986   0.1332882   0.1685090


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.2600000   0.8472149   1.873905
0-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0094697   0.7716305   1.320618
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0940550   0.8959643   1.335942
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9003044   0.5752332   1.409077
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.1392612   0.8454022   1.535265
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 1.6279070   1.0825921   2.447904
0-24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         1                    0                 1.3345491   1.1319671   1.573386
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.2110111   1.0209783   1.436414
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0921144   1.0310686   1.156774
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.0175515   0.8631625   1.199555
0-6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         1                    0                 0.9290323   0.6910984   1.248883
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 1.0576829   0.8937715   1.251654
0-6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         1                    0                 1.1903946   1.0260596   1.381050
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    0                 1.1172585   0.9620873   1.297457
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 1.0929253   1.0454001   1.142611
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 1.1269745   0.9402312   1.350808
6-24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         1                    0                 1.0303030   0.6616741   1.604301
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.9930314   0.6253409   1.576918
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 1.0851064   0.7666660   1.535813
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8559998   0.6690449   1.095196


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1125541   -0.0664151   0.2915233
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0022624   -0.0623051   0.0668299
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0165404   -0.0209030   0.0539838
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0611578   -0.3347113   0.2123957
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0676889   -0.0796949   0.2150727
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0204545   -0.0017450   0.0426541
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0227429    0.0090172   0.0364687
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0147967   -0.0000027   0.0295961
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0248874    0.0089055   0.0408693
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0033048   -0.0278295   0.0344390
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0238095   -0.1193383   0.0717192
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0151628   -0.0306737   0.0609992
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0220696    0.0027796   0.0413596
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0153680   -0.0063811   0.0371170
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0400865    0.0204025   0.0597706
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0479047   -0.0224307   0.1182400
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0053763   -0.0748525   0.0856052
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0006734   -0.0451526   0.0438058
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0033085   -0.0113101   0.0179271
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0176268   -0.0464309   0.0111773


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1768707   -0.1575016   0.4146515
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0036630   -0.1065581   0.1029053
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0317968   -0.0429151   0.1011566
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1051364   -0.6911138   0.2777975
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1076709   -0.1612716   0.3143282
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0540000   -0.0062535   0.1106456
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                 0.0970035    0.0372666   0.1530338
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0241197   -0.0002816   0.0479256
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0588594    0.0203103   0.0958917
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0126469   -0.1139474   0.1248545
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0333333   -0.1762859   0.0922464
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                 0.0212660   -0.0452626   0.0835602
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                 0.0618908    0.0061968   0.1144636
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0201076   -0.0088778   0.0482603
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                 0.0593336    0.0296709   0.0880895
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                 0.0857900   -0.0495042   0.2036431
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                 0.0100000   -0.1511904   0.1486204
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0022222   -0.1602965   0.1343166
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0065041   -0.0226684   0.0348444
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1168122   -0.3255142   0.0590298
