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

**Outcome Variable:** ever_co

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

agecat        studyid                 country                        impsan    ever_co   n_cell       n
------------  ----------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      171     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       33     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       32     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        6     242
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      204     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        2     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-24 months   ki0047075b-MAL-ED       INDIA                          1               0       93     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1               1       15     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               0       89     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0               1       36     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               0      214     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1               1       21     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     236
0-24 months   ki0047075b-MAL-ED       PERU                           1               0       60     263
0-24 months   ki0047075b-MAL-ED       PERU                           1               1        5     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               0      192     263
0-24 months   ki0047075b-MAL-ED       PERU                           0               1        6     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      227     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       19     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      218     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       23     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      196     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       46     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      291     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       91     624
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      581     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1       85     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       27     698
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        5     698
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      595     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1       60     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       82     747
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       10     747
0-24 months   ki1114097-CONTENT       PERU                           1               0      197     215
0-24 months   ki1114097-CONTENT       PERU                           1               1        4     215
0-24 months   ki1114097-CONTENT       PERU                           0               0       14     215
0-24 months   ki1114097-CONTENT       PERU                           0               1        0     215
0-24 months   ki1135781-COHORTS       GUATEMALA                      1               0       76     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      1               1        6     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      0               0      677     875
0-24 months   ki1135781-COHORTS       GUATEMALA                      0               1      116     875
0-24 months   ki1135781-COHORTS       INDIA                          1               0     1908    5372
0-24 months   ki1135781-COHORTS       INDIA                          1               1      106    5372
0-24 months   ki1135781-COHORTS       INDIA                          0               0     2937    5372
0-24 months   ki1135781-COHORTS       INDIA                          0               1      421    5372
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      168    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       11    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      778    1191
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      234    1191
0-24 months   ki1148112-LCNI-5        MALAWI                         1               0        3     813
0-24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     813
0-24 months   ki1148112-LCNI-5        MALAWI                         0               0      768     813
0-24 months   ki1148112-LCNI-5        MALAWI                         0               1       42     813
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    17256   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     1486   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     7261   26898
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      895   26898
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3557    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      631    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      993    5426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      245    5426
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      196     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1        8     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       37     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        1     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      206     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        0     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     210
0-6 months    ki0047075b-MAL-ED       INDIA                          1               0      102     233
0-6 months    ki0047075b-MAL-ED       INDIA                          1               1        6     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               0      115     233
0-6 months    ki0047075b-MAL-ED       INDIA                          0               1       10     233
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               0      228     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1               1        7     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
0-6 months    ki0047075b-MAL-ED       PERU                           1               0       65     263
0-6 months    ki0047075b-MAL-ED       PERU                           1               1        0     263
0-6 months    ki0047075b-MAL-ED       PERU                           0               0      197     263
0-6 months    ki0047075b-MAL-ED       PERU                           0               1        1     263
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        4     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      243     250
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        3     250
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      237     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        4     241
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      222     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       20     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      355     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       25     622
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      637     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1       29     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       31     698
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        1     698
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      641     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1       14     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       89     747
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1        3     747
0-6 months    ki1114097-CONTENT       PERU                           1               0      201     215
0-6 months    ki1114097-CONTENT       PERU                           1               1        0     215
0-6 months    ki1114097-CONTENT       PERU                           0               0       14     215
0-6 months    ki1114097-CONTENT       PERU                           0               1        0     215
0-6 months    ki1135781-COHORTS       GUATEMALA                      1               0       67     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      1               1        1     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      0               0      587     667
0-6 months    ki1135781-COHORTS       GUATEMALA                      0               1       12     667
0-6 months    ki1135781-COHORTS       INDIA                          1               0     1893    5167
0-6 months    ki1135781-COHORTS       INDIA                          1               1       26    5167
0-6 months    ki1135781-COHORTS       INDIA                          0               0     3133    5167
0-6 months    ki1135781-COHORTS       INDIA                          0               1      115    5167
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      179    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1               1        0    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      989    1191
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0               1       23    1191
0-6 months    ki1148112-LCNI-5        MALAWI                         1               0        0     269
0-6 months    ki1148112-LCNI-5        MALAWI                         1               1        0     269
0-6 months    ki1148112-LCNI-5        MALAWI                         0               0      269     269
0-6 months    ki1148112-LCNI-5        MALAWI                         0               1        0     269
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0    18015   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1      652   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     7722   26791
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1      402   26791
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     3840    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1       91    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0     1105    5079
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1       43    5079
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0      171     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       30     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       33     239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1        5     239
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      201     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        2     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        4     207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     207
6-24 months   ki0047075b-MAL-ED       INDIA                          1               0       95     233
6-24 months   ki0047075b-MAL-ED       INDIA                          1               1       13     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0               0       93     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0               1       32     233
6-24 months   ki0047075b-MAL-ED       NEPAL                          1               0      218     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          1               1       16     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     235
6-24 months   ki0047075b-MAL-ED       PERU                           1               0       60     263
6-24 months   ki0047075b-MAL-ED       PERU                           1               1        5     263
6-24 months   ki0047075b-MAL-ED       PERU                           0               0      192     263
6-24 months   ki0047075b-MAL-ED       PERU                           0               1        6     263
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      228     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       18     250
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      216     237
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     237
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0      173     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       35     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      255     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1       79     542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      513     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1       70     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       24     612
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        5     612
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      578     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1       52     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       79     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       10     719
6-24 months   ki1114097-CONTENT       PERU                           1               0      197     215
6-24 months   ki1114097-CONTENT       PERU                           1               1        4     215
6-24 months   ki1114097-CONTENT       PERU                           0               0       14     215
6-24 months   ki1114097-CONTENT       PERU                           0               1        0     215
6-24 months   ki1135781-COHORTS       GUATEMALA                      1               0       75     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      1               1        5     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      0               0      668     857
6-24 months   ki1135781-COHORTS       GUATEMALA                      0               1      109     857
6-24 months   ki1135781-COHORTS       INDIA                          1               0     1811    5023
6-24 months   ki1135781-COHORTS       INDIA                          1               1       92    5023
6-24 months   ki1135781-COHORTS       INDIA                          0               0     2745    5023
6-24 months   ki1135781-COHORTS       INDIA                          0               1      375    5023
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1               0      136    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       11    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      739    1113
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      227    1113
6-24 months   ki1148112-LCNI-5        MALAWI                         1               0        3     801
6-24 months   ki1148112-LCNI-5        MALAWI                         1               1        0     801
6-24 months   ki1148112-LCNI-5        MALAWI                         0               0      756     801
6-24 months   ki1148112-LCNI-5        MALAWI                         0               1       42     801
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0    11438   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1      925   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     4331   17268
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1      574   17268
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     3608    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1      578    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0     1013    5422
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      223    5422


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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/d43c7a4f-1bed-47d9-b84e-0887d2012add/9a410223-237c-46a7-b6ac-3c50b3e191fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d43c7a4f-1bed-47d9-b84e-0887d2012add/9a410223-237c-46a7-b6ac-3c50b3e191fd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d43c7a4f-1bed-47d9-b84e-0887d2012add/9a410223-237c-46a7-b6ac-3c50b3e191fd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d43c7a4f-1bed-47d9-b84e-0887d2012add/9a410223-237c-46a7-b6ac-3c50b3e191fd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1617647   0.1111290   0.2124004
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1578947   0.0417171   0.2740724
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1480999   0.0834416   0.2127582
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2862955   0.2070498   0.3655413
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
0-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1856377   0.1363747   0.2349007
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2360574   0.1932112   0.2789037
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1276276   0.1022678   0.1529874
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1562500   0.0303571   0.2821429
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0914202   0.0693045   0.1135360
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0988781   0.0339717   0.1637846
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0731707   0.0167735   0.1295680
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1462799   0.1216700   0.1708899
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0654019   0.0532835   0.0775202
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1174089   0.1064639   0.1283539
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0687803   0.0309900   0.1065706
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2284793   0.2026084   0.2543502
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0822841   0.0776407   0.0869275
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1081896   0.1002795   0.1160997
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1526948   0.1400653   0.1653243
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1887214   0.1643562   0.2130865
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.0555556   0.0122621   0.0988490
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.0800000   0.0323387   0.1276613
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0843685   0.0497448   0.1189923
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0672073   0.0422354   0.0921792
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0131885   0.0081022   0.0182748
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0348577   0.0285963   0.0411192
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0366831   0.0334634   0.0399028
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0487845   0.0434308   0.0541382
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0232108   0.0178402   0.0285815
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0347751   0.0216597   0.0478904
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1492537   0.0998883   0.1986192
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238766   0.2392813
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.1198686   0.0587969   0.1809404
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.2473780   0.1710419   0.3237141
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1703094   0.1186388   0.2219800
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2366936   0.1912569   0.2821304
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1200686   0.0936623   0.1464749
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1724138   0.0348206   0.3100069
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0824031   0.0608729   0.1039334
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0992589   0.0312890   0.1672289
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0625000   0.0094259   0.1155741
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1402831   0.1158504   0.1647158
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0605953   0.0486387   0.0725518
6-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.1114924   0.1004778   0.1225070
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0806931   0.0346989   0.1266873
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2322818   0.2056095   0.2589541
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0789475   0.0735462   0.0843488
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1106717   0.0999951   0.1213483
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1399343   0.1278746   0.1519940
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1723309   0.1494021   0.1952597


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2188841   0.1656771   0.2720911
0-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1289398   0.1040599   0.1538198
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0937082   0.0727959   0.1146204
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1394286   0.1164638   0.1623933
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0981013   0.0901463   0.1060562
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2057095   0.1827432   0.2286758
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0885196   0.0846439   0.0923953
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.0686695   0.0361280   0.1012111
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0272886   0.0228458   0.0317313
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0393416   0.0368565   0.0418267
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1931330   0.1423366   0.2439295
6-24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1225490   0.0965478   0.1485502
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0862309   0.0656987   0.1067631
6-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1330222   0.1102724   0.1557720
6-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.0929723   0.0849408   0.1010038
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2138365   0.1897378   0.2379351
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0868080   0.0821493   0.0914667
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.9760766   0.4387519   2.171445
0-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.9331243   1.1575577   3.228323
0-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.2716031   0.9229111   1.752037
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2242647   0.5339174   2.807221
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.0815783   0.5372895   2.177246
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.9991593   0.9082974   4.400142
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.7951923   1.4599958   2.207346
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 3.3218699   1.8964970   5.818527
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3148298   1.2061187   1.433339
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2359385   1.0607523   1.440057
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.4400000   0.5399472   3.840376
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.7965920   0.4584598   1.384110
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 2.6430390   1.7269915   4.044985
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.3298908   1.1535075   1.533245
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.4982265   0.9634718   2.329785
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8815789   0.3646285   2.131434
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.0637430   1.1437705   3.723680
6-24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.3897859   0.9717714   1.987613
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.4359606   0.6275349   3.285845
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.2045530   0.5788035   2.506806
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 2.2445302   0.9433052   5.340706
6-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       INDIA         0                    1                 1.8399520   1.4770494   2.292018
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 2.8785827   1.6104626   5.145253
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.4018392   1.2514000   1.570364
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2315125   1.0502687   1.444033


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0006077   -0.0205087   0.0192933
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0707842    0.0153664   0.1262020
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0339136   -0.0061264   0.0739536
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0013122   -0.0045921   0.0072165
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0022879   -0.0060169   0.0105927
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0662578    0.0104736   0.1220421
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0326994    0.0215533   0.0438455
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1369292    0.0974331   0.1764252
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0062355    0.0036444   0.0088266
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0087501    0.0024711   0.0150292
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0131140   -0.0214650   0.0476929
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0120212   -0.0380474   0.0140049
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0141001    0.0089830   0.0192172
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0026585    0.0006812   0.0046358
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0031723   -0.0002938   0.0066385
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0028102   -0.0216654   0.0160450
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0732644    0.0202763   0.1262526
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0400227   -0.0026473   0.0826927
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0024804   -0.0042168   0.0091776
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0038277   -0.0047474   0.0124028
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0705222    0.0175268   0.1235175
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0323770    0.0213302   0.0434239
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1331434    0.0863267   0.1799600
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0078605    0.0047238   0.0109971
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0077971    0.0018251   0.0137691


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0037707   -0.1351730   0.1124210
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.3233867    0.0321641   0.5269802
0-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1544678   -0.0483049   0.3180184
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0101768   -0.0366587   0.0548963
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0244156   -0.0682468   0.1090402
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.4752099   -0.1111802   0.7521513
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3333231    0.2130252   0.4352321
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6656434    0.4290198   0.8042062
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0704417    0.0405648   0.0993882
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0541988    0.0145262   0.0922743
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1909722   -0.4941878   0.5619520
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1661602   -0.5853151   0.1421707
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.5167021    0.3153742   0.6588255
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0675744    0.0156165   0.1167898
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.1202409   -0.0150200   0.2374771
6-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0191898   -0.1563308   0.1016863
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.3793469    0.0541857   0.5927210
6-24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1902833   -0.0388180   0.3688585
6-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0202401   -0.0358324   0.0732773
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0443894   -0.0599843   0.1384857
6-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.5301535   -0.0763444   0.7949023
6-24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.3482439    0.2222554   0.4538233
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6226410    0.3424673   0.7834331
6-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0905499    0.0537593   0.1259101
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0527791    0.0113649   0.0924585
