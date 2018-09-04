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

**Outcome Variable:** sstunted

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

agecat      studyid                 country                        impsan    sstunted   n_cell       n
----------  ----------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                0       36     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                1        1     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                0      192     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                1        5     234
Birth       ki0047075b-MAL-ED       BRAZIL                         0                0        4     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0                1        0     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1                0      163     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1                1        7     174
Birth       ki0047075b-MAL-ED       INDIA                          0                0       97     190
Birth       ki0047075b-MAL-ED       INDIA                          0                1        1     190
Birth       ki0047075b-MAL-ED       INDIA                          1                0       87     190
Birth       ki0047075b-MAL-ED       INDIA                          1                1        5     190
Birth       ki0047075b-MAL-ED       NEPAL                          0                0        1     171
Birth       ki0047075b-MAL-ED       NEPAL                          0                1        0     171
Birth       ki0047075b-MAL-ED       NEPAL                          1                0      164     171
Birth       ki0047075b-MAL-ED       NEPAL                          1                1        6     171
Birth       ki0047075b-MAL-ED       PERU                           0                0      183     250
Birth       ki0047075b-MAL-ED       PERU                           0                1        5     250
Birth       ki0047075b-MAL-ED       PERU                           1                0       60     250
Birth       ki0047075b-MAL-ED       PERU                           1                1        2     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      210     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        1     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      108     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1        5     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                0       19      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                0        9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                1        0      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                0        2      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                0       24      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                1        1      27
Birth       ki1114097-CONTENT       PERU                           0                0        1       2
Birth       ki1114097-CONTENT       PERU                           0                1        0       2
Birth       ki1114097-CONTENT       PERU                           1                0        1       2
Birth       ki1114097-CONTENT       PERU                           1                1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      0                0      440     491
Birth       ki1135781-COHORTS       GUATEMALA                      0                1        6     491
Birth       ki1135781-COHORTS       GUATEMALA                      1                0       45     491
Birth       ki1135781-COHORTS       GUATEMALA                      1                1        0     491
Birth       ki1135781-COHORTS       INDIA                          0                0     2912    4776
Birth       ki1135781-COHORTS       INDIA                          0                1       97    4776
Birth       ki1135781-COHORTS       INDIA                          1                0     1723    4776
Birth       ki1135781-COHORTS       INDIA                          1                1       44    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    0                0      994    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0                1       19    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1                0      178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1                1        0    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                0    11210   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                1     1600   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                0    23892   39184
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                1     2482   39184
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                0      392    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                1       40    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                0     1124    1644
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                1       88    1644
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                0       37     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                0      195     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED       BRAZIL                         0                0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1                0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          0                0      122     233
6 months    ki0047075b-MAL-ED       INDIA                          0                1        3     233
6 months    ki0047075b-MAL-ED       INDIA                          1                0      102     233
6 months    ki0047075b-MAL-ED       INDIA                          1                1        6     233
6 months    ki0047075b-MAL-ED       NEPAL                          0                0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED       NEPAL                          1                0      234     236
6 months    ki0047075b-MAL-ED       NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED       PERU                           0                0      189     263
6 months    ki0047075b-MAL-ED       PERU                           0                1        9     263
6 months    ki0047075b-MAL-ED       PERU                           1                0       62     263
6 months    ki0047075b-MAL-ED       PERU                           1                1        3     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      234     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        6     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      224     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       14     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                1       24     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                0      194     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                1       11     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                0       25     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                1        1     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                0      542     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                1       13     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                0       84     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                0      597     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                1       18     704
6 months    ki1114097-CONTENT       PERU                           0                0       14     215
6 months    ki1114097-CONTENT       PERU                           0                1        0     215
6 months    ki1114097-CONTENT       PERU                           1                0      197     215
6 months    ki1114097-CONTENT       PERU                           1                1        4     215
6 months    ki1135781-COHORTS       GUATEMALA                      0                0      503     658
6 months    ki1135781-COHORTS       GUATEMALA                      0                1       88     658
6 months    ki1135781-COHORTS       GUATEMALA                      1                0       63     658
6 months    ki1135781-COHORTS       GUATEMALA                      1                1        4     658
6 months    ki1135781-COHORTS       INDIA                          0                0     2900    4971
6 months    ki1135781-COHORTS       INDIA                          0                1      190    4971
6 months    ki1135781-COHORTS       INDIA                          1                0     1829    4971
6 months    ki1135781-COHORTS       INDIA                          1                1       52    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    0                0      882    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0                1       58    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1                0      141    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1                1        2    1083
6 months    ki1148112-LCNI-5        MALAWI                         0                0      745     812
6 months    ki1148112-LCNI-5        MALAWI                         0                1       64     812
6 months    ki1148112-LCNI-5        MALAWI                         1                0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1                1        1     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                0     8757   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                1      757   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                0    22763   33555
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                1     1278   33555
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                0     1988    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                1      145    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                0     6927    9441
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                1      381    9441
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                0       28     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                1        3     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                0      158     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                1       23     212
24 months   ki0047075b-MAL-ED       BRAZIL                         0                0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1                0      165     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED       INDIA                          0                0      102     225
24 months   ki0047075b-MAL-ED       INDIA                          0                1       19     225
24 months   ki0047075b-MAL-ED       INDIA                          1                0       96     225
24 months   ki0047075b-MAL-ED       INDIA                          1                1        8     225
24 months   ki0047075b-MAL-ED       NEPAL                          0                0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED       NEPAL                          1                0      220     228
24 months   ki0047075b-MAL-ED       NEPAL                          1                1        7     228
24 months   ki0047075b-MAL-ED       PERU                           0                0      138     196
24 months   ki0047075b-MAL-ED       PERU                           0                1       11     196
24 months   ki0047075b-MAL-ED       PERU                           1                0       43     196
24 months   ki0047075b-MAL-ED       PERU                           1                1        4     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      205     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                1       26     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      140     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       67     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                0      194     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                1       65     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                0      142     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                1       28     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                0       19     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                1        5     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                0      508     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                1       44     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                0       65     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                0      404     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                1       29     503
24 months   ki1114097-CONTENT       PERU                           0                0       13     164
24 months   ki1114097-CONTENT       PERU                           0                1        0     164
24 months   ki1114097-CONTENT       PERU                           1                0      148     164
24 months   ki1114097-CONTENT       PERU                           1                1        3     164
24 months   ki1135781-COHORTS       GUATEMALA                      0                0      458     896
24 months   ki1135781-COHORTS       GUATEMALA                      0                1      361     896
24 months   ki1135781-COHORTS       GUATEMALA                      1                0       52     896
24 months   ki1135781-COHORTS       GUATEMALA                      1                1       25     896
24 months   ki1135781-COHORTS       INDIA                          0                0     1674    3754
24 months   ki1135781-COHORTS       INDIA                          0                1      609    3754
24 months   ki1135781-COHORTS       INDIA                          1                0     1303    3754
24 months   ki1135781-COHORTS       INDIA                          1                1      168    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    0                0      536     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0                1      328     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1                0      117     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1                1        9     990
24 months   ki1148112-LCNI-5        MALAWI                         0                0      505     572
24 months   ki1148112-LCNI-5        MALAWI                         0                1       65     572
24 months   ki1148112-LCNI-5        MALAWI                         1                0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1                1        1     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                0     3952   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                1     1061   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                0    10574   17206
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                1     1619   17206
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                0     1805    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                1      269    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                0     6612    9270
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                1      584    9270


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2af8df5d-909a-4422-bdc2-2b09453ac94b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2af8df5d-909a-4422-bdc2-2b09453ac94b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2af8df5d-909a-4422-bdc2-2b09453ac94b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2af8df5d-909a-4422-bdc2-2b09453ac94b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0322366   0.0259250   0.0385483
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0249010   0.0176348   0.0321672
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1249024   0.1167821   0.1330227
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0941078   0.0885213   0.0996944
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0925926   0.0499058   0.1352793
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0726073   0.0470715   0.0981430
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0722892   0.0444070   0.1001713
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0536585   0.0227827   0.0845344
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0614887   0.0530178   0.0699596
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0276449   0.0202349   0.0350549
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0795670   0.0715508   0.0875831
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0531592   0.0489279   0.0573904
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0679794   0.0538128   0.0821459
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0521346   0.0443540   0.0599153
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1570248   0.0920546   0.2219950
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2509653   0.1981009   0.3038296
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1647059   0.1088840   0.2205278
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2083333   0.0457147   0.3709520
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.0797101   0.0570963   0.1023240
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0714286   0.0110372   0.1318199
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0669746   0.0434058   0.0905434
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.4407814   0.4067601   0.4748028
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.3246753   0.2200285   0.4293222
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2667543   0.2486103   0.2848983
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1142080   0.0979520   0.1304640
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3796296   0.3472541   0.4120051
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0714286   0.0264375   0.1164196
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2116497   0.1946042   0.2286952
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1327811   0.1232181   0.1423442
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1297011   0.1081477   0.1512545
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0811562   0.0707852   0.0915272


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0295226   0.0247216   0.0343236
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1041752   0.0994998   0.1088506
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0326705   0.0195292   0.0458117
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0486824   0.0426994   0.0546654
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0606467   0.0567903   0.0645031
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0557144   0.0488132   0.0626157
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0675944   0.0456333   0.0895555
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4308036   0.3983616   0.4632455
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2069792   0.1940174   0.2199410
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3404040   0.3108725   0.3699356
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1557596   0.1470134   0.1645058
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0920173   0.0825478   0.1014867


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.7724432   0.5435686   1.0976876
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7534508   0.6907097   0.8218911
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7841584   0.4397029   1.3984542
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7422764   0.3712948   1.4839268
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.5209756   0.1982366   1.3691498
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.4495929   0.3326099   0.6077203
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.6681063   0.5884451   0.7585518
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7669186   0.5956621   0.9874125
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.4898785   0.2234156   1.0741461
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.6562896   0.4403445   0.9781343
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.3826087   0.1667483   0.8779063
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.9376443   0.3752451   2.3429402
24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.7365903   0.5287981   1.0260348
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.4281394   0.3656569   0.5012989
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.1881533   0.0996472   0.3552702
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.6273626   0.5646181   0.6970797
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.6257173   0.5075475   0.7714000


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0027140   -0.0062763    0.0008483
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0207272   -0.0273004   -0.0141541
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0147337   -0.0513459    0.0218785
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0071122   -0.0230123    0.0087878
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0235093   -0.0669270    0.0199083
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0128063   -0.0170893   -0.0085233
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0189203   -0.0253595   -0.0124810
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0122649   -0.0246387    0.0001088
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0370248   -0.0756518    0.0016022
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0341820   -0.0649089   -0.0034552
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1232639   -0.2806204    0.0340926
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0038341   -0.0596401    0.0519718
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0099779   -0.0196716   -0.0002841
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0597750   -0.0696137   -0.0499364
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0392256   -0.0487518   -0.0296994
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0558901   -0.0694714   -0.0423088
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0376838   -0.0562513   -0.0191163


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0919299   -0.2185443    0.0215285
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1989653   -0.2642824   -0.1370227
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1892361   -0.7705068    0.2011991
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1091222   -0.3793326    0.1081542
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.7195896   -2.6639645    0.1929538
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.2630587   -0.3484676   -0.1830593
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.3119750   -0.4211352   -0.2111996
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2201393   -0.4657393   -0.0156921
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.3085399   -0.6579610   -0.0327606
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1576784   -0.3073025   -0.0251792
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -1.4489796   -4.1647651   -0.1612340
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0567227   -1.3077912    0.5161335
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0231611   -0.0459498   -0.0008689
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.2887973   -0.3360376   -0.2432274
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1152324   -0.1438468   -0.0873339
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.3588227   -0.4486806   -0.2745385
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.4095297   -0.6273814   -0.2208410
