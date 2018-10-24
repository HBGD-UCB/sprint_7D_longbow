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

unadjusted

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
![](/tmp/6feb1dc4-2996-4bc3-9372-ea607d0b32cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6feb1dc4-2996-4bc3-9372-ea607d0b32cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6feb1dc4-2996-4bc3-9372-ea607d0b32cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6feb1dc4-2996-4bc3-9372-ea607d0b32cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1224490   0.0573751   0.1875229
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.2000000   0.1171400   0.2828600
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                0.2315271   0.1904514   0.2726027
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                0.3488372   0.2062258   0.4914486
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1801153   0.1658185   0.1944121
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1637982   0.1461254   0.1814711
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                0.1422550   0.1200208   0.1644892
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1807910   0.1240705   0.2375115
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0976838   0.0891701   0.1061975
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0951138   0.0889034   0.1013242
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0722222   0.0299878   0.1144566
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0457256   0.0248970   0.0665543
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0694864   0.0420675   0.0969054
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0536585   0.0227826   0.0845345
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.1526742   0.1399810   0.1653675
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0968600   0.0834855   0.1102346
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1009888   0.0922091   0.1097686
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0781413   0.0725306   0.0837520
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0828264   0.0636353   0.1020175
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0485769   0.0385925   0.0585613
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1322314   0.0717402   0.1927226
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1057692   0.0465309   0.1650076
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1472868   0.1039926   0.1905810
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0882353   0.0455484   0.1309221
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1168946   0.1036669   0.1301223
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0624571   0.0500302   0.0748840
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2350709   0.2176670   0.2524748
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2112676   0.2000571   0.2224781
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2262597   0.1982941   0.2542253
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1877875   0.1721888   0.2033863


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
Birth       ki0047075b-MAL-ED       INDIA         1                    0                 1.6333333   0.8325816   3.2042239
Birth       ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       GUATEMALA     1                    0                 1.5066799   0.9648850   2.3526992
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.9094077   0.7954015   1.0397546
Birth       ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   1                    0                 1.2708935   0.8951248   1.8044079
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.9736904   0.8769050   1.0811581
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.6331243   0.3024309   1.3254150
6 months    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA         1                    0                 1.4467593   0.5910108   3.5415805
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7722163   0.3843482   1.5515046
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.4630894   0.1738081   1.2338427
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.6344229   0.5399829   0.7453801
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7737615   0.6928479   0.8641244
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.5864906   0.4311119   0.7978700
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.5480663   0.2159592   1.3908957
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.7998798   0.3881166   1.6484937
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.5990712   0.3401194   1.0551774
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.5343028   0.4249909   0.6717309
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5922308   0.2628888   1.3341660
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8987399   0.8248168   0.9792883
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8299646   0.7128993   0.9662533


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.0371255   -0.0136168    0.0878677
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0112346   -0.0033333    0.0258025
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0061632   -0.0147525    0.0024261
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0060576   -0.0035541    0.0156693
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0017567   -0.0086820    0.0051686
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0195136   -0.0540802    0.0150530
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.0132532   -0.0190801    0.0455865
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0060536   -0.0218601    0.0097530
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0263502   -0.0696000    0.0168995
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0211271   -0.0281472   -0.0141069
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0163645   -0.0236864   -0.0090426
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0265003   -0.0431117   -0.0098889
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.0622337   -0.1786024    0.0541350
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0122314   -0.0514041    0.0269413
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0234550   -0.0477593    0.0008492
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0212984   -0.0284504   -0.0141465
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0041603   -0.0094436    0.0011230
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0168530   -0.0307165   -0.0029896
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0298756   -0.0552259   -0.0045252


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                 0.2326531   -0.1514091    0.4886081
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                 0.0462783   -0.0154613    0.1042642
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0354307   -0.0859736    0.0127599
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                 0.0408435   -0.0260228    0.1033521
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0183129   -0.0931726    0.0514205
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.3702160   -1.1962232    0.1451270
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                 0.1715556   -0.3630443    0.4964799
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0954327   -0.3731602    0.1261232
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.8833601   -2.9753519    0.1077406
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.1606047   -0.2143721   -0.1092179
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1933783   -0.2838031   -0.1093226
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.4704798   -0.8047279   -0.1981368
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.6282642   -2.3133126    0.1998206
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1019284   -0.4799855    0.1795554
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1894106   -0.3982084   -0.0117930
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.2227961   -0.2973540   -0.1525229
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0536518   -0.1231776    0.0115704
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0772303   -0.1426056   -0.0155955
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1521283   -0.2898962   -0.0290748
