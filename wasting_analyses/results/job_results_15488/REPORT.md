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

**Outcome Variable:** swasted

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

agecat      studyid                 country                        impsan    swasted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       35     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        1     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      179     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1        7     222
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        4     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0      163     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1        0     167
Birth       ki0047075b-MAL-ED       INDIA                          0               0       93     188
Birth       ki0047075b-MAL-ED       INDIA                          0               1        5     188
Birth       ki0047075b-MAL-ED       INDIA                          1               0       89     188
Birth       ki0047075b-MAL-ED       INDIA                          1               1        1     188
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1     166
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0     166
Birth       ki0047075b-MAL-ED       NEPAL                          1               0      161     166
Birth       ki0047075b-MAL-ED       NEPAL                          1               1        4     166
Birth       ki0047075b-MAL-ED       PERU                           0               0      183     243
Birth       ki0047075b-MAL-ED       PERU                           0               1        0     243
Birth       ki0047075b-MAL-ED       PERU                           1               0       60     243
Birth       ki0047075b-MAL-ED       PERU                           1               1        0     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      208     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        1     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      108     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        1     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0       18      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1        1      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0        8      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0        2      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0       20      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1        1      23
Birth       ki1114097-CONTENT       PERU                           0               0        1       2
Birth       ki1114097-CONTENT       PERU                           0               1        0       2
Birth       ki1114097-CONTENT       PERU                           1               0        1       2
Birth       ki1114097-CONTENT       PERU                           1               1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      378     449
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       28     449
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       37     449
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        6     449
Birth       ki1135781-COHORTS       INDIA                          0               0     2644    4461
Birth       ki1135781-COHORTS       INDIA                          0               1      132    4461
Birth       ki1135781-COHORTS       INDIA                          1               0     1603    4461
Birth       ki1135781-COHORTS       INDIA                          1               1       82    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      914    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       35    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      170    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        7    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     4874   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1       91   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    10561   15689
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1      163   15689
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      179     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1        1     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      499     683
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1        4     683
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       38     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        0     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      200     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        2     240
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          0               0      122     233
6 months    ki0047075b-MAL-ED       INDIA                          0               1        3     233
6 months    ki0047075b-MAL-ED       INDIA                          1               0      106     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1        2     233
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      235     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED       PERU                           0               0      198     263
6 months    ki0047075b-MAL-ED       PERU                           0               1        0     263
6 months    ki0047075b-MAL-ED       PERU                           1               0       65     263
6 months    ki0047075b-MAL-ED       PERU                           1               1        0     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      237     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        3     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      238     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      328     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1        3     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      203     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1        2     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       26     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      549     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        5     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       89     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1        0     704
6 months    ki1114097-CONTENT       PERU                           0               0       14     215
6 months    ki1114097-CONTENT       PERU                           0               1        0     215
6 months    ki1114097-CONTENT       PERU                           1               0      201     215
6 months    ki1114097-CONTENT       PERU                           1               1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      586     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               1        5     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       67     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               1        0     658
6 months    ki1135781-COHORTS       INDIA                          0               0     2966    4964
6 months    ki1135781-COHORTS       INDIA                          0               1      119    4964
6 months    ki1135781-COHORTS       INDIA                          1               0     1845    4964
6 months    ki1135781-COHORTS       INDIA                          1               1       34    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      930    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1       10    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1        0    1083
6 months    ki1148112-LCNI-5        MALAWI                         0               0      809     812
6 months    ki1148112-LCNI-5        MALAWI                         0               1        0     812
6 months    ki1148112-LCNI-5        MALAWI                         1               0        3     812
6 months    ki1148112-LCNI-5        MALAWI                         1               1        0     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     4682   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1       76   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    11862   16773
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      153   16773
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1080    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       13    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     3714    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       20    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       31     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        0     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      165     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED       INDIA                          0               0      120     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1        1     225
24 months   ki0047075b-MAL-ED       INDIA                          1               0      103     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1        1     225
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      227     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED       PERU                           0               0      148     196
24 months   ki0047075b-MAL-ED       PERU                           0               1        1     196
24 months   ki0047075b-MAL-ED       PERU                           1               0       47     196
24 months   ki0047075b-MAL-ED       PERU                           1               1        0     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      231     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        0     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      207     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      250     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1        8     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      168     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1        2     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       23     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        1     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      545     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        8     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       70     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1        0     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      429     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4     503
24 months   ki1114097-CONTENT       PERU                           0               0       13     164
24 months   ki1114097-CONTENT       PERU                           0               1        0     164
24 months   ki1114097-CONTENT       PERU                           1               0      151     164
24 months   ki1114097-CONTENT       PERU                           1               1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      822     903
24 months   ki1135781-COHORTS       GUATEMALA                      0               1        4     903
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       77     903
24 months   ki1135781-COHORTS       GUATEMALA                      1               1        0     903
24 months   ki1135781-COHORTS       INDIA                          0               0     2237    3724
24 months   ki1135781-COHORTS       INDIA                          0               1       30    3724
24 months   ki1135781-COHORTS       INDIA                          1               0     1446    3724
24 months   ki1135781-COHORTS       INDIA                          1               1       11    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      852     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1       17     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1        0     993
24 months   ki1148112-LCNI-5        MALAWI                         0               0      553     556
24 months   ki1148112-LCNI-5        MALAWI                         0               1        1     556
24 months   ki1148112-LCNI-5        MALAWI                         1               0        2     556
24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     2397    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      111    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     5864    8593
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      221    8593
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1024    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1       35    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3577    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1       94    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/2970f676-fa97-4eb7-83ec-1400c68c29a6/80461f50-6196-497c-bd16-a1d2d6e65391/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2970f676-fa97-4eb7-83ec-1400c68c29a6/80461f50-6196-497c-bd16-a1d2d6e65391/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2970f676-fa97-4eb7-83ec-1400c68c29a6/80461f50-6196-497c-bd16-a1d2d6e65391/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2970f676-fa97-4eb7-83ec-1400c68c29a6/80461f50-6196-497c-bd16-a1d2d6e65391/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       ki1135781-COHORTS   GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       ki1135781-COHORTS   INDIA         0                    NA                0.0475504   0.0396330   0.0554679
Birth       ki1135781-COHORTS   INDIA         1                    NA                0.0486647   0.0383900   0.0589394
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       ki1135781-COHORTS   PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0183283   0.0141899   0.0224667
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0151996   0.0124722   0.0179269
6 months    ki1135781-COHORTS   INDIA         0                    NA                0.0385737   0.0317775   0.0453700
6 months    ki1135781-COHORTS   INDIA         1                    NA                0.0180947   0.0120672   0.0241223
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0159731   0.0124638   0.0194824
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0127341   0.0102949   0.0151732
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0118939   0.0050435   0.0187442
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0053562   0.0020655   0.0086468
24 months   ki1135781-COHORTS   INDIA         0                    NA                0.0132333   0.0085287   0.0179379
24 months   ki1135781-COHORTS   INDIA         1                    NA                0.0075498   0.0031045   0.0119950
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0442584   0.0360203   0.0524964
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0363188   0.0311670   0.0414706
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0330500   0.0222752   0.0438249
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0256061   0.0196215   0.0315907


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161897   0.0138244   0.0185550
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0136529   0.0115802   0.0157256
6 months    kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0068365   0.0038719   0.0098012
24 months   ki1135781-COHORTS   INDIA         NA                   NA                0.0110097   0.0076578   0.0143615
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0386361   0.0343091   0.0429631
24 months   kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0272727   0.0220640   0.0324815


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   GUATEMALA     1                    0                 2.0232558   0.8869142   4.6155132
Birth       ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   INDIA         1                    0                 1.0234331   0.7821359   1.3391732
Birth       ki1135781-COHORTS   PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   PHILIPPINES   1                    0                 1.0723164   0.4838357   2.3765558
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.8292943   0.6290063   1.0933579
6 months    ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS   INDIA         1                    0                 0.4690945   0.3218127   0.6837817
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.7972206   0.6023375   1.0551571
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    0                 0.4503317   0.1928614   1.0515254
24 months   ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS   INDIA         1                    0                 0.5705102   0.2867846   1.1349348
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.8206089   0.6478386   1.0394550
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    0                 0.7747675   0.5171749   1.1606609


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                 0.0067583   -0.0036281    0.0171447
Birth       ki1135781-COHORTS   INDIA         0                    NA                 0.0004209   -0.0044787    0.0053204
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                 0.0004193   -0.0044744    0.0053129
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0021386   -0.0053934    0.0011162
6 months    ki1135781-COHORTS   INDIA         0                    NA                -0.0077518   -0.0112015   -0.0043022
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0023202   -0.0052708    0.0006303
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.0050573   -0.0109640    0.0008493
24 months   ki1135781-COHORTS   INDIA         0                    NA                -0.0022237   -0.0047576    0.0003102
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0056223   -0.0125728    0.0013282
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.0057773   -0.0154069    0.0038522


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                 0.0892495   -0.0557491    0.2143337
Birth       ki1135781-COHORTS   INDIA         0                    NA                 0.0087735   -0.0988024    0.1058173
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                 0.0112399   -0.1290129    0.1340696
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.1320971   -0.3517982    0.0518970
6 months    ki1135781-COHORTS   INDIA         0                    NA                -0.2515037   -0.3614705   -0.1504190
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.1699422   -0.4108758    0.0298474
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.7397488   -1.9071988   -0.0411142
24 months   ki1135781-COHORTS   INDIA         0                    NA                -0.2019753   -0.4458180    0.0007424
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.1455187   -0.3409096    0.0214008
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.2118351   -0.6268496    0.0973079
