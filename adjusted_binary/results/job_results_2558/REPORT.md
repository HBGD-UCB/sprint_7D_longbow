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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        perdiar6    ever_stunted   n_cell     n
------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     Q1                     0      216   265
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     Q1                     1       48   265
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     Q2                     0        1   265
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     Q2                     1        0   265
0-6 months    ki0047075b-MAL-ED       BRAZIL                         Q1                     0      208   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         Q1                     1       25   233
0-6 months    ki0047075b-MAL-ED       INDIA                          Q1                     0      209   251
0-6 months    ki0047075b-MAL-ED       INDIA                          Q1                     1       41   251
0-6 months    ki0047075b-MAL-ED       INDIA                          Q2                     0        0   251
0-6 months    ki0047075b-MAL-ED       INDIA                          Q2                     1        1   251
0-6 months    ki0047075b-MAL-ED       NEPAL                          Q1                     0      209   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          Q1                     1       27   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          Q2                     0        3   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          Q2                     1        1   240
0-6 months    ki0047075b-MAL-ED       PERU                           Q1                     0      261   303
0-6 months    ki0047075b-MAL-ED       PERU                           Q1                     1       37   303
0-6 months    ki0047075b-MAL-ED       PERU                           Q2                     0        5   303
0-6 months    ki0047075b-MAL-ED       PERU                           Q2                     1        0   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     0      270   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     1       33   303
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     0      219   262
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     1       43   262
0-6 months    ki1000109-ResPak        PAKISTAN                       Q1                     0      184   277
0-6 months    ki1000109-ResPak        PAKISTAN                       Q1                     1       71   277
0-6 months    ki1000109-ResPak        PAKISTAN                       Q2                     0       17   277
0-6 months    ki1000109-ResPak        PAKISTAN                       Q2                     1        5   277
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q1                     0      511   626
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q1                     1       96   626
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q2                     0       16   626
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q2                     1        2   626
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q3                     0        1   626
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     Q3                     1        0   626
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     Q1                     0      630   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     Q1                     1       65   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     Q2                     0        4   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     Q2                     1        1   700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     0      648   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     1      105   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     0        5   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     1        0   758
0-6 months    ki1114097-CMIN          BANGLADESH                     Q1                     0      161   277
0-6 months    ki1114097-CMIN          BANGLADESH                     Q1                     1      102   277
0-6 months    ki1114097-CMIN          BANGLADESH                     Q2                     0        7   277
0-6 months    ki1114097-CMIN          BANGLADESH                     Q2                     1        5   277
0-6 months    ki1114097-CMIN          BANGLADESH                     Q3                     0        0   277
0-6 months    ki1114097-CMIN          BANGLADESH                     Q3                     1        2   277
0-6 months    ki1114097-CMIN          BRAZIL                         Q1                     0      113   119
0-6 months    ki1114097-CMIN          BRAZIL                         Q1                     1        5   119
0-6 months    ki1114097-CMIN          BRAZIL                         Q2                     0        1   119
0-6 months    ki1114097-CMIN          BRAZIL                         Q2                     1        0   119
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q1                     0      675   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q1                     1      100   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q2                     0       39   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q2                     1        6   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q3                     0        6   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q3                     1        3   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q4                     0        4   833
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  Q4                     1        0   833
0-6 months    ki1114097-CMIN          PERU                           Q1                     0      598   699
0-6 months    ki1114097-CMIN          PERU                           Q1                     1       37   699
0-6 months    ki1114097-CMIN          PERU                           Q2                     0       52   699
0-6 months    ki1114097-CMIN          PERU                           Q2                     1        3   699
0-6 months    ki1114097-CMIN          PERU                           Q3                     0        8   699
0-6 months    ki1114097-CMIN          PERU                           Q3                     1        1   699
0-6 months    ki1114097-CONTENT       PERU                           Q1                     0      194   215
0-6 months    ki1114097-CONTENT       PERU                           Q1                     1       18   215
0-6 months    ki1114097-CONTENT       PERU                           Q2                     0        3   215
0-6 months    ki1114097-CONTENT       PERU                           Q2                     1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                     0      121   195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                     1       73   195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                     0        1   195
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                     1        0   195
6-24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                     0      195   203
6-24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                     1        8   203
6-24 months   ki0047075b-MAL-ED       INDIA                          Q1                     0      128   194
6-24 months   ki0047075b-MAL-ED       INDIA                          Q1                     1       65   194
6-24 months   ki0047075b-MAL-ED       INDIA                          Q2                     0        0   194
6-24 months   ki0047075b-MAL-ED       INDIA                          Q2                     1        1   194
6-24 months   ki0047075b-MAL-ED       NEPAL                          Q1                     0      185   224
6-24 months   ki0047075b-MAL-ED       NEPAL                          Q1                     1       35   224
6-24 months   ki0047075b-MAL-ED       NEPAL                          Q2                     0        3   224
6-24 months   ki0047075b-MAL-ED       NEPAL                          Q2                     1        1   224
6-24 months   ki0047075b-MAL-ED       PERU                           Q1                     0      151   229
6-24 months   ki0047075b-MAL-ED       PERU                           Q1                     1       74   229
6-24 months   ki0047075b-MAL-ED       PERU                           Q2                     0        3   229
6-24 months   ki0047075b-MAL-ED       PERU                           Q2                     1        1   229
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     0      165   224
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     1       59   224
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     0       71   187
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     1      116   187
6-24 months   ki1000109-ResPak        PAKISTAN                       Q1                     0      137   167
6-24 months   ki1000109-ResPak        PAKISTAN                       Q1                     1       15   167
6-24 months   ki1000109-ResPak        PAKISTAN                       Q2                     0       13   167
6-24 months   ki1000109-ResPak        PAKISTAN                       Q2                     1        2   167
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                     0      227   420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                     1      186   420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                     0        4   420
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                     1        3   420
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                     0      377   497
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                     1      118   497
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                     0        1   497
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                     1        1   497
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     0      501   620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     1      115   620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     0        2   620
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     1        2   620
6-24 months   ki1114097-CMIN          BANGLADESH                     Q1                     0       63   166
6-24 months   ki1114097-CMIN          BANGLADESH                     Q1                     1       94   166
6-24 months   ki1114097-CMIN          BANGLADESH                     Q2                     0        6   166
6-24 months   ki1114097-CMIN          BANGLADESH                     Q2                     1        3   166
6-24 months   ki1114097-CMIN          BRAZIL                         Q1                     0       90   104
6-24 months   ki1114097-CMIN          BRAZIL                         Q1                     1       13   104
6-24 months   ki1114097-CMIN          BRAZIL                         Q2                     0        0   104
6-24 months   ki1114097-CMIN          BRAZIL                         Q2                     1        1   104
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                     0      585   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                     1      147   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                     0       35   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                     1       11   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                     0        3   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                     1        1   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                     0        3   788
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                     1        3   788
6-24 months   ki1114097-CMIN          PERU                           Q1                     0      455   615
6-24 months   ki1114097-CMIN          PERU                           Q1                     1      109   615
6-24 months   ki1114097-CMIN          PERU                           Q2                     0       34   615
6-24 months   ki1114097-CMIN          PERU                           Q2                     1        9   615
6-24 months   ki1114097-CMIN          PERU                           Q3                     0        7   615
6-24 months   ki1114097-CMIN          PERU                           Q3                     1        1   615
6-24 months   ki1114097-CONTENT       PERU                           Q1                     0      180   200
6-24 months   ki1114097-CONTENT       PERU                           Q1                     1       17   200
6-24 months   ki1114097-CONTENT       PERU                           Q2                     0        1   200
6-24 months   ki1114097-CONTENT       PERU                           Q2                     1        2   200
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                     0      130   265
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q1                     1      134   265
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                     0        1   265
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     Q2                     1        0   265
0-24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                     0      197   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         Q1                     1       36   233
0-24 months   ki0047075b-MAL-ED       INDIA                          Q1                     0      125   251
0-24 months   ki0047075b-MAL-ED       INDIA                          Q1                     1      125   251
0-24 months   ki0047075b-MAL-ED       INDIA                          Q2                     0        0   251
0-24 months   ki0047075b-MAL-ED       INDIA                          Q2                     1        1   251
0-24 months   ki0047075b-MAL-ED       NEPAL                          Q1                     0      178   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          Q1                     1       58   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          Q2                     0        3   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          Q2                     1        1   240
0-24 months   ki0047075b-MAL-ED       PERU                           Q1                     0      163   303
0-24 months   ki0047075b-MAL-ED       PERU                           Q1                     1      135   303
0-24 months   ki0047075b-MAL-ED       PERU                           Q2                     0        4   303
0-24 months   ki0047075b-MAL-ED       PERU                           Q2                     1        1   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     0      183   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   Q1                     1      120   303
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     0       80   262
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   Q1                     1      182   262
0-24 months   ki1000109-ResPak        PAKISTAN                       Q1                     0      124   277
0-24 months   ki1000109-ResPak        PAKISTAN                       Q1                     1      131   277
0-24 months   ki1000109-ResPak        PAKISTAN                       Q2                     0       11   277
0-24 months   ki1000109-ResPak        PAKISTAN                       Q2                     1       11   277
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                     0      269   626
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q1                     1      338   626
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                     0       14   626
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q2                     1        4   626
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q3                     0        1   626
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     Q3                     1        0   626
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                     0      435   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q1                     1      260   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                     0        2   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     Q2                     1        3   700
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     0      461   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q1                     1      292   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     0        3   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     Q2                     1        2   758
0-24 months   ki1114097-CMIN          BANGLADESH                     Q1                     0       62   277
0-24 months   ki1114097-CMIN          BANGLADESH                     Q1                     1      201   277
0-24 months   ki1114097-CMIN          BANGLADESH                     Q2                     0        3   277
0-24 months   ki1114097-CMIN          BANGLADESH                     Q2                     1        9   277
0-24 months   ki1114097-CMIN          BANGLADESH                     Q3                     0        0   277
0-24 months   ki1114097-CMIN          BANGLADESH                     Q3                     1        2   277
0-24 months   ki1114097-CMIN          BRAZIL                         Q1                     0       85   119
0-24 months   ki1114097-CMIN          BRAZIL                         Q1                     1       33   119
0-24 months   ki1114097-CMIN          BRAZIL                         Q2                     0        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         Q2                     1        1   119
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                     0      547   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q1                     1      299   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                     0       31   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q2                     1       23   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                     0        4   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q3                     1        6   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                     0        3   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  Q4                     1        3   916
0-24 months   ki1114097-CMIN          PERU                           Q1                     0      478   717
0-24 months   ki1114097-CMIN          PERU                           Q1                     1      171   717
0-24 months   ki1114097-CMIN          PERU                           Q2                     0       42   717
0-24 months   ki1114097-CMIN          PERU                           Q2                     1       15   717
0-24 months   ki1114097-CMIN          PERU                           Q3                     0        7   717
0-24 months   ki1114097-CMIN          PERU                           Q3                     1        3   717
0-24 months   ki1114097-CMIN          PERU                           Q4                     0        0   717
0-24 months   ki1114097-CMIN          PERU                           Q4                     1        1   717
0-24 months   ki1114097-CONTENT       PERU                           Q1                     0      165   215
0-24 months   ki1114097-CONTENT       PERU                           Q1                     1       47   215
0-24 months   ki1114097-CONTENT       PERU                           Q2                     0        1   215
0-24 months   ki1114097-CONTENT       PERU                           Q2                     1        2   215


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         ever_stunted
## perdiar6   0   1
##       Q1 197  36
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1 183 120
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1  80 182
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         ever_stunted
## perdiar6   0   1
##       Q1 208  25
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1 270  33
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1 219  43
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
##         ever_stunted
## perdiar6   0   1
##       Q1 195   8
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1 165  59
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
##         ever_stunted
## perdiar6   0   1
##       Q1  71 116
##       Q2   0   0
##       Q3   0   0
##       Q4   0   0
```




# Results Detail

## Results Plots
![](/tmp/ea076a0d-3979-4a5f-b1f6-71ef3ea4e147/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ea076a0d-3979-4a5f-b1f6-71ef3ea4e147/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ea076a0d-3979-4a5f-b1f6-71ef3ea4e147/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ea076a0d-3979-4a5f-b1f6-71ef3ea4e147/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid            country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------------  ---------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                0.5119805   0.4505624   0.5733985
0-24 months   ki1000109-ResPak   PAKISTAN   Q2                   NA                0.4740331   0.2652641   0.6828021
0-6 months    ki1000109-ResPak   PAKISTAN   Q1                   NA                0.2773261   0.2223731   0.3322791
0-6 months    ki1000109-ResPak   PAKISTAN   Q2                   NA                0.2391896   0.0614194   0.4169598


### Parameter: E(Y)


agecat        studyid            country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------------  ---------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak   PAKISTAN   NA                   NA                0.5126354   0.4536662   0.5716045
0-6 months    ki1000109-ResPak   PAKISTAN   NA                   NA                0.2743682   0.2217279   0.3270086


### Parameter: RR


agecat        studyid            country    intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------------  ---------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-ResPak   PAKISTAN   Q1                   Q1                1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak   PAKISTAN   Q2                   Q1                0.9258813   0.5864237   1.461837
0-6 months    ki1000109-ResPak   PAKISTAN   Q1                   Q1                1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak   PAKISTAN   Q2                   Q1                0.8624851   0.4001823   1.858854


### Parameter: PAR


agecat        studyid            country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------------  ---------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                 0.0006549   -0.0177149   0.0190247
0-6 months    ki1000109-ResPak   PAKISTAN   Q1                   NA                -0.0029579   -0.0174438   0.0115281


### Parameter: PAF


agecat        studyid            country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------------  ---------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak   PAKISTAN   Q1                   NA                 0.0012776   -0.0352045   0.0364739
0-6 months    ki1000109-ResPak   PAKISTAN   Q1                   NA                -0.0107806   -0.0649683   0.0406499
