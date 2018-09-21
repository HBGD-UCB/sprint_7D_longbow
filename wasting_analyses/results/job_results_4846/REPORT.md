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
* safeh20
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
* delta_safeh20

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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     9748   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1      182   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    21122   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1      326   31378
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      358    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1        2    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      998    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1        8    1366
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
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     9354   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1      152   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    23689   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      306   33501
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     2111    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       26    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     7269    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       39    9445
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
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     4786   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      221   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    11699   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      442   17148
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1996    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1       68    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     6989    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      184    9237


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







# Results Detail

## Results Plots
![](/tmp/041fa0b9-18a9-457f-b2b9-24cfb81d9d9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/041fa0b9-18a9-457f-b2b9-24cfb81d9d9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/041fa0b9-18a9-457f-b2b9-24cfb81d9d9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/041fa0b9-18a9-457f-b2b9-24cfb81d9d9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       ki1135781-COHORTS   GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       ki1135781-COHORTS   INDIA         0                    NA                0.0469550   0.0394496   0.0544604
Birth       ki1135781-COHORTS   INDIA         1                    NA                0.0511430   0.0412522   0.0610337
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       ki1135781-COHORTS   PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0186274   0.0146885   0.0225664
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0154214   0.0126880   0.0181548
6 months    ki1135781-COHORTS   INDIA         0                    NA                0.0375301   0.0309785   0.0440817
6 months    ki1135781-COHORTS   INDIA         1                    NA                0.0184133   0.0125082   0.0243184
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0174972   0.0140214   0.0209730
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0128277   0.0103847   0.0152707
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0103369   0.0045167   0.0161570
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0053684   0.0019460   0.0087908
24 months   ki1135781-COHORTS   INDIA         0                    NA                0.0132438   0.0085205   0.0179671
24 months   ki1135781-COHORTS   INDIA         1                    NA                0.0080923   0.0033041   0.0128804
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                0.0433683   0.0358189   0.0509176
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    NA                0.0365063   0.0312677   0.0417449
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                0.0302358   0.0196525   0.0408190
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    NA                0.0258630   0.0199781   0.0317479


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161897   0.0138244   0.0185550
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0136712   0.0115942   0.0157483
6 months    kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0068819   0.0035739   0.0101900
24 months   ki1135781-COHORTS   INDIA         NA                   NA                0.0110097   0.0076578   0.0143615
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0386634   0.0343339   0.0429929
24 months   kiGH5241-JiVitA-4   BANGLADESH    NA                   NA                0.0272816   0.0219894   0.0325738


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   GUATEMALA     1                    0                 2.0232558   0.8869142   4.6155132
Birth       ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   INDIA         1                    0                 1.0891920   0.8490053   1.3973284
Birth       ki1135781-COHORTS   PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS   PHILIPPINES   1                    0                 1.0723164   0.4838357   2.3765558
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.8278862   0.6356976   1.0781786
6 months    ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS   INDIA         1                    0                 0.4906262   0.3405489   0.7068414
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.7331275   0.5625988   0.9553450
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4   BANGLADESH    1                    0                 0.5193433   0.2201183   1.2253295
24 months   ki1135781-COHORTS   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS   INDIA         1                    0                 0.6110225   0.3062216   1.2192101
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    1                    0                 0.8417755   0.6698703   1.0577958
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4   BANGLADESH    1                    0                 0.8553772   0.5629803   1.2996373


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                 0.0067583   -0.0036281    0.0171447
Birth       ki1135781-COHORTS   INDIA         0                    NA                 0.0010163   -0.0036688    0.0057014
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                 0.0004193   -0.0044744    0.0053129
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0024377   -0.0056141    0.0007386
6 months    ki1135781-COHORTS   INDIA         0                    NA                -0.0067082   -0.0100259   -0.0033906
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0038260   -0.0068398   -0.0008122
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.0034549   -0.0086828    0.0017729
24 months   ki1135781-COHORTS   INDIA         0                    NA                -0.0022342   -0.0048022    0.0003339
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.0047049   -0.0112200    0.0018102
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.0029542   -0.0124245    0.0065161


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS   GUATEMALA     0                    NA                 0.0892495   -0.0557491    0.2143337
Birth       ki1135781-COHORTS   INDIA         0                    NA                 0.0211863   -0.0813017    0.1139604
Birth       ki1135781-COHORTS   PHILIPPINES   0                    NA                 0.0112399   -0.1290129    0.1340696
Birth       kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.1505741   -0.3662396    0.0310479
6 months    ki1135781-COHORTS   INDIA         0                    NA                -0.2176445   -0.3257338   -0.1183678
6 months    kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.2798564   -0.5304516   -0.0702935
6 months    kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.5020261   -1.6028358    0.1332214
24 months   ki1135781-COHORTS   INDIA         0                    NA                -0.2029263   -0.4506086    0.0024659
24 months   kiGH5241-JiVitA-3   BANGLADESH    0                    NA                -0.1216877   -0.3053230    0.0361134
24 months   kiGH5241-JiVitA-4   BANGLADESH    0                    NA                -0.1082850   -0.5184242    0.1910721
