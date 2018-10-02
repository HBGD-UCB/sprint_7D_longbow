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

**Outcome Variable:** wasted

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

agecat      studyid                 country                        impsan    wasted   n_cell       n
----------  ----------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              0       32     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     0              1        4     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              0      152     222
Birth       ki0047075b-MAL-ED       BANGLADESH                     1              1       34     222
Birth       ki0047075b-MAL-ED       BRAZIL                         0              0        3     167
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1        1     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1              0      158     167
Birth       ki0047075b-MAL-ED       BRAZIL                         1              1        5     167
Birth       ki0047075b-MAL-ED       INDIA                          0              0       86     188
Birth       ki0047075b-MAL-ED       INDIA                          0              1       12     188
Birth       ki0047075b-MAL-ED       INDIA                          1              0       72     188
Birth       ki0047075b-MAL-ED       INDIA                          1              1       18     188
Birth       ki0047075b-MAL-ED       NEPAL                          0              0        1     166
Birth       ki0047075b-MAL-ED       NEPAL                          0              1        0     166
Birth       ki0047075b-MAL-ED       NEPAL                          1              0      145     166
Birth       ki0047075b-MAL-ED       NEPAL                          1              1       20     166
Birth       ki0047075b-MAL-ED       PERU                           0              0      179     243
Birth       ki0047075b-MAL-ED       PERU                           0              1        4     243
Birth       ki0047075b-MAL-ED       PERU                           1              0       60     243
Birth       ki0047075b-MAL-ED       PERU                           1              1        0     243
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      196     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0              1       13     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        2     211
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     211
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      107     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        2     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     109
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     109
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              0       15      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0              1        4      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              0        6      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              1        3      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              0        2      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              1        0      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              0       18      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1              1        3      23
Birth       ki1114097-CONTENT       PERU                           0              0        1       2
Birth       ki1114097-CONTENT       PERU                           0              1        0       2
Birth       ki1114097-CONTENT       PERU                           1              0        1       2
Birth       ki1114097-CONTENT       PERU                           1              1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      0              0      312     449
Birth       ki1135781-COHORTS       GUATEMALA                      0              1       94     449
Birth       ki1135781-COHORTS       GUATEMALA                      1              0       28     449
Birth       ki1135781-COHORTS       GUATEMALA                      1              1       15     449
Birth       ki1135781-COHORTS       INDIA                          0              0     2276    4461
Birth       ki1135781-COHORTS       INDIA                          0              1      500    4461
Birth       ki1135781-COHORTS       INDIA                          1              0     1409    4461
Birth       ki1135781-COHORTS       INDIA                          1              1      276    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    0              0      814    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0              1      135    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1              0      145    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    1              1       32    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              0     8960   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0              1      970   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              0    19408   31378
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1              1     2040   31378
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              0      334    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0              1       26    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              0      960    1366
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1              1       46    1366
6 months    ki0047075b-MAL-ED       BANGLADESH                     0              0       38     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0              1        0     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1              0      194     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1              1        8     240
6 months    ki0047075b-MAL-ED       BRAZIL                         0              0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1              0      204     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1              1        1     209
6 months    ki0047075b-MAL-ED       INDIA                          0              0      117     233
6 months    ki0047075b-MAL-ED       INDIA                          0              1        8     233
6 months    ki0047075b-MAL-ED       INDIA                          1              0       98     233
6 months    ki0047075b-MAL-ED       INDIA                          1              1       10     233
6 months    ki0047075b-MAL-ED       NEPAL                          0              0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          1              0      231     236
6 months    ki0047075b-MAL-ED       NEPAL                          1              1        4     236
6 months    ki0047075b-MAL-ED       PERU                           0              0      198     263
6 months    ki0047075b-MAL-ED       PERU                           0              1        0     263
6 months    ki0047075b-MAL-ED       PERU                           1              0       65     263
6 months    ki0047075b-MAL-ED       PERU                           1              1        0     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      233     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0              1        7     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      237     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              0      308     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0              1       23     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              0      194     536
6 months    ki1017093-NIH-Birth     BANGLADESH                     1              1       11     536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0       25     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              1        1     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              0      531     580
6 months    ki1017093b-PROVIDE      BANGLADESH                     1              1       23     580
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0              0       84     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0              1        5     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1              0      599     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1              1       16     704
6 months    ki1114097-CONTENT       PERU                           0              0       14     215
6 months    ki1114097-CONTENT       PERU                           0              1        0     215
6 months    ki1114097-CONTENT       PERU                           1              0      201     215
6 months    ki1114097-CONTENT       PERU                           1              1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      0              0      571     658
6 months    ki1135781-COHORTS       GUATEMALA                      0              1       20     658
6 months    ki1135781-COHORTS       GUATEMALA                      1              0       66     658
6 months    ki1135781-COHORTS       GUATEMALA                      1              1        1     658
6 months    ki1135781-COHORTS       INDIA                          0              0     2614    4964
6 months    ki1135781-COHORTS       INDIA                          0              1      471    4964
6 months    ki1135781-COHORTS       INDIA                          1              0     1697    4964
6 months    ki1135781-COHORTS       INDIA                          1              1      182    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    0              0      884    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0              1       56    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1              0      140    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1              1        3    1083
6 months    ki1148112-LCNI-5        MALAWI                         0              0      795     812
6 months    ki1148112-LCNI-5        MALAWI                         0              1       14     812
6 months    ki1148112-LCNI-5        MALAWI                         1              0        3     812
6 months    ki1148112-LCNI-5        MALAWI                         1              1        0     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0              0     8546   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0              1      960   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1              0    22120   33501
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1              1     1875   33501
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0              0     1960    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0              1      177    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1              0     6953    9445
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1              1      355    9445
24 months   ki0047075b-MAL-ED       BANGLADESH                     0              0       26     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0              1        5     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1              0      165     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1              1       16     212
24 months   ki0047075b-MAL-ED       BRAZIL                         0              0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              1        0     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1              0      163     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1              1        3     169
24 months   ki0047075b-MAL-ED       INDIA                          0              0      105     225
24 months   ki0047075b-MAL-ED       INDIA                          0              1       16     225
24 months   ki0047075b-MAL-ED       INDIA                          1              0       93     225
24 months   ki0047075b-MAL-ED       INDIA                          1              1       11     225
24 months   ki0047075b-MAL-ED       NEPAL                          0              0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          1              0      222     228
24 months   ki0047075b-MAL-ED       NEPAL                          1              1        5     228
24 months   ki0047075b-MAL-ED       PERU                           0              0      147     196
24 months   ki0047075b-MAL-ED       PERU                           0              1        2     196
24 months   ki0047075b-MAL-ED       PERU                           1              0       46     196
24 months   ki0047075b-MAL-ED       PERU                           1              1        1     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0              0      230     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0              1        1     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              1        0     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      203     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        4     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     0              0      220     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0              1       38     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1              0      155     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     1              1       15     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       20     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              1        4     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              0      492     577
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              1       61     577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0              0       66     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0              1        4     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1              0      392     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1              1       41     503
24 months   ki1114097-CONTENT       PERU                           0              0       13     164
24 months   ki1114097-CONTENT       PERU                           0              1        0     164
24 months   ki1114097-CONTENT       PERU                           1              0      151     164
24 months   ki1114097-CONTENT       PERU                           1              1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      0              0      783     903
24 months   ki1135781-COHORTS       GUATEMALA                      0              1       43     903
24 months   ki1135781-COHORTS       GUATEMALA                      1              0       75     903
24 months   ki1135781-COHORTS       GUATEMALA                      1              1        2     903
24 months   ki1135781-COHORTS       INDIA                          0              0     2002    3724
24 months   ki1135781-COHORTS       INDIA                          0              1      265    3724
24 months   ki1135781-COHORTS       INDIA                          1              0     1366    3724
24 months   ki1135781-COHORTS       INDIA                          1              1       91    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    0              0      798     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0              1       71     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1              0      118     993
24 months   ki1135781-COHORTS       PHILIPPINES                    1              1        6     993
24 months   ki1148112-LCNI-5        MALAWI                         0              0      544     556
24 months   ki1148112-LCNI-5        MALAWI                         0              1       10     556
24 months   ki1148112-LCNI-5        MALAWI                         1              0        2     556
24 months   ki1148112-LCNI-5        MALAWI                         1              1        0     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0              0     3830   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0              1     1177   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1              0     9576   17148
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1              1     2565   17148
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0              0     1597    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0              1      467    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1              0     5826    9237
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1              1     1347    9237


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b0199c34-76ec-4e56-a35a-4df0b7a7a79f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0199c34-76ec-4e56-a35a-4df0b7a7a79f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0199c34-76ec-4e56-a35a-4df0b7a7a79f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0199c34-76ec-4e56-a35a-4df0b7a7a79f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1224463   0.0573729   0.1875196
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.2000044   0.1171443   0.2828645
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.2312330   0.1902292   0.2722368
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.3372260   0.2117463   0.4627057
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1765850   0.1630415   0.1901284
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1708484   0.1537093   0.1879874
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.1414494   0.1194296   0.1634692
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1707736   0.1226477   0.2188996
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1050452   0.0966071   0.1134833
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0960481   0.0898578   0.1022384
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0660196   0.0289190   0.1031201
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0458687   0.0249804   0.0667570
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0698607   0.0424859   0.0972356
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0546865   0.0238719   0.0855011
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1501467   0.1381360   0.1621575
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1081708   0.0946547   0.1216868
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0987150   0.0900251   0.1074049
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0789499   0.0733734   0.0845263
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0981688   0.0787833   0.1175543
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0491824   0.0393353   0.0590295
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1307366   0.0717726   0.1897007
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1068050   0.0496067   0.1640033
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1488394   0.1058838   0.1917950
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0939323   0.0512841   0.1365804
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1150847   0.1026271   0.1275423
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0753644   0.0625171   0.0882116
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2569097   0.2414662   0.2723531
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2150332   0.2038304   0.2262361
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2220603   0.1959065   0.2482140
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1881859   0.1727214   0.2036503


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                0.1595745   0.1070866   0.2120623
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2427617   0.2030594   0.2824640
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1739520   0.1628271   0.1850770
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1483126   0.1275443   0.1690809
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0959271   0.0907227   0.1011315
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0772532   0.0428971   0.1116093
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0298295   0.0172543   0.0424048
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1315471   0.1221436   0.1409506
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0846243   0.0798159   0.0894328
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0563261   0.0473846   0.0652676
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0955961   0.0861511   0.1050412
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0775428   0.0608996   0.0941860
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2182179   0.2083049   0.2281309
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1963841   0.1829372   0.2098310


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       INDIA         1                    0                 1.6334057   0.8326207   3.2043573
Birth       ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       GUATEMALA     1                    0                 1.4583816   0.9657424   2.2023233
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.9675136   0.8535820   1.0966521
Birth       ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   1                    0                 1.2073128   0.8754768   1.6649262
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.9143503   0.8270021   1.0109243
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.6947739   0.3379496   1.4283514
6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA         1                    0                 1.4467593   0.5910108   3.5415805
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7827925   0.3942220   1.5543632
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.4630894   0.1738081   1.2338427
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.7204337   0.6214453   0.8351898
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7997758   0.7166237   0.8925763
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.5009985   0.3785226   0.6631032
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.5480663   0.2159592   1.3908957
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.8169475   0.4134021   1.6144169
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6310981   0.3687035   1.0802304
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.6548601   0.5355592   0.8007364
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5922308   0.2628888   1.3341660
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8369994   0.7762958   0.9024497
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8474540   0.7316190   0.9816288


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.0371282   -0.0136138    0.0878702
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0115287   -0.0031570    0.0262144
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0026329   -0.0108251    0.0055593
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0068633   -0.0026844    0.0164109
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0091181   -0.0163515   -0.0018847
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0133109   -0.0433975    0.0167757
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.0132532   -0.0190801    0.0455865
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0064279   -0.0221984    0.0093426
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0263502   -0.0696000    0.0168995
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0185996   -0.0253462   -0.0118530
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0140907   -0.0216526   -0.0065287
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0418427   -0.0588997   -0.0247857
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0622337   -0.1786024    0.0541350
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0107366   -0.0475003    0.0260270
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0250076   -0.0491415   -0.0008738
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0194886   -0.0261883   -0.0127889
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0041603   -0.0094436    0.0011230
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0386918   -0.0515128   -0.0258708
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0256762   -0.0497353   -0.0016170


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.2326701   -0.1513908    0.4886227
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0474897   -0.0147124    0.1058789
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0151360   -0.0633920    0.0309302
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0462756   -0.0200130    0.1082562
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0950525   -0.1739022   -0.0214990
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2525378   -0.9735445    0.2050593
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.1715556   -0.3630443    0.4964799
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1013338   -0.3782847    0.1199669
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.8833601   -2.9753519    0.1077406
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.1413911   -0.1940296   -0.0910732
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1665083   -0.2605860   -0.0794517
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.7428651   -1.0979794   -0.4478592
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.6282642   -2.3133126    0.1998206
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0894719   -0.4412012    0.1764168
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.2019483   -0.4099498   -0.0246321
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.2038635   -0.2755343   -0.1362198
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0536518   -0.1231776    0.0115704
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1773081   -0.2389220   -0.1187584
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1307446   -0.2616616   -0.0134123
