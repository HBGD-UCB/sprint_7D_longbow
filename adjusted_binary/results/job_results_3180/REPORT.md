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
![](/tmp/137230fc-7de6-44c3-ab3a-b3b549cd5f84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/137230fc-7de6-44c3-ab3a-b3b549cd5f84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/137230fc-7de6-44c3-ab3a-b3b549cd5f84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/137230fc-7de6-44c3-ab3a-b3b549cd5f84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0315094   0.0253255   0.0376934
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0245224   0.0174646   0.0315803
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1221696   0.1143743   0.1299649
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0955725   0.0900216   0.1011234
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0883097   0.0468246   0.1297948
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0719919   0.0467448   0.0972389
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0722883   0.0444065   0.1001702
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0536595   0.0227837   0.0845354
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0595586   0.0514594   0.0676577
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0297042   0.0222473   0.0371610
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0708736   0.0637436   0.0780037
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0549832   0.0507137   0.0592527
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0645508   0.0516053   0.0774964
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0531300   0.0454780   0.0607820
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1570248   0.0920546   0.2219950
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2433246   0.1913680   0.2952812
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1751556   0.1225955   0.2277157
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2083333   0.0457147   0.3709520
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.0797101   0.0570963   0.1023240
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0714286   0.0110372   0.1318199
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0669746   0.0434058   0.0905434
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.4363004   0.4025404   0.4700603
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1784434   0.1114013   0.2454854
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2483882   0.2317590   0.2650175
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1413702   0.1249316   0.1578088
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3796296   0.3472541   0.4120051
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0714286   0.0264375   0.1164196
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1975237   0.1833283   0.2117190
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1423377   0.1327967   0.1518788
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1173696   0.0971443   0.1375950
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0825960   0.0721559   0.0930361


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
Birth       ki1135781-COHORTS       INDIA         1                    0                 0.7782570   0.5496342   1.1019764
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7822937   0.7194857   0.8505846
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8152200   0.4538989   1.4641666
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7422989   0.3713110   1.4839517
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.5209756   0.1982366   1.3691498
6 months    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         1                    0                 0.4987386   0.3750768   0.6631714
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7757924   0.6866246   0.8765399
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8230726   0.6459054   1.0488353
24 months   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA         1                    0                 0.4898785   0.2234156   1.0741461
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.7198433   0.5036209   1.0288976
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.3826087   0.1667483   0.8779063
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 0.9376443   0.3752451   2.3429402
24 months   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       GUATEMALA     1                    0                 0.4089920   0.2787440   0.6001008
24 months   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       INDIA         1                    0                 0.5691501   0.4992427   0.6488465
24 months   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.1881533   0.0996472   0.3552702
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7206110   0.6570070   0.7903725
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.7037255   0.5687115   0.8707924


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0019868   -0.0054725    0.0014989
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0179944   -0.0243628   -0.0116261
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0104508   -0.0460935    0.0251918
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0071114   -0.0230113    0.0087884
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0235093   -0.0669270    0.0199083
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.0108762   -0.0149465   -0.0068059
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0102269   -0.0158903   -0.0045635
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0088364   -0.0201592    0.0024864
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0370248   -0.0756518    0.0016022
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0265414   -0.0550063    0.0019235
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1232639   -0.2806204    0.0340926
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0038341   -0.0596401    0.0519718
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0054968   -0.0155296    0.0045361
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.0414090   -0.0499539   -0.0328641
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0392256   -0.0487518   -0.0296994
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0417640   -0.0529188   -0.0306093
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0253524   -0.0427474   -0.0079574


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.0672984   -0.1916010    0.0440376
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1727324   -0.2362252   -0.1125007
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1342280   -0.7016581    0.2439885
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1091095   -0.3793166    0.1081641
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.7195896   -2.6639645    0.1929538
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.2234118   -0.3067298   -0.1454062
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1686311   -0.2654780   -0.0791958
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1586015   -0.3831007    0.0294580
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -0.3085399   -0.6579610   -0.0327606
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.1224329   -0.2597222   -0.0001060
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -1.4489796   -4.1647651   -0.1612340
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0567227   -1.3077912    0.5161335
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0127594   -0.0363583    0.0103022
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.2000636   -0.2419546   -0.1595856
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1152324   -0.1438468   -0.0873339
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2681314   -0.3434180   -0.1970640
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.2755175   -0.4800722   -0.0992334
