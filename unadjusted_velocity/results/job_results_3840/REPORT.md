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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                 country                        perdiar6    n_cell     n
-------------  ----------------------  -----------------------------  ---------  -------  ----
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   244
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              70   244
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             78   244
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   180
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             165   180
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   180
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       110   201
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              40   201
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             51   201
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   175
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              59   175
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             59   175
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   271
0-3 months     ki0047075b-MAL-ED       PERU                           0%              67   271
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            115   271
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   229
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   229
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        92   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   229
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        27    78
0-3 months     ki1000109-ResPak        PAKISTAN                       0%              14    78
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%             37    78
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            252   566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       254   634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            208   634
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             340   720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            211   720
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        33    81
0-3 months     ki1114097-CMIN          BRAZIL                         0%              27    81
0-3 months     ki1114097-CMIN          BRAZIL                         >5%             21    81
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        10    21
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  0%               4    21
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%              7    21
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]        37    93
0-3 months     ki1114097-CMIN          PERU                           0%              16    93
0-3 months     ki1114097-CMIN          PERU                           >5%             40    93
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        88   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             75   231
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   229
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              48   229
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   229
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             180   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   241
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        49   156
3-6 months     ki1000109-ResPak        PAKISTAN                       0%              24   156
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%             83   156
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       164   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       237   574
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   574
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            182   574
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   695
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        46   185
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              60   185
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   185
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        29    81
3-6 months     ki1114097-CMIN          BRAZIL                         0%              30    81
3-6 months     ki1114097-CMIN          BRAZIL                         >5%             22    81
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        38   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%              40   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%             39   117
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]       140   407
3-6 months     ki1114097-CMIN          PERU                           0%             110   407
3-6 months     ki1114097-CMIN          PERU                           >5%            157   407
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   220
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   220
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             70   220
6-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194
6-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194
6-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       121   224
6-12 months    ki0047075b-MAL-ED       INDIA                          0%              45   224
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   224
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%              77   230
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   230
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   237
6-12 months    ki0047075b-MAL-ED       PERU                           0%              58   237
6-12 months    ki0047075b-MAL-ED       PERU                           >5%            102   237
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   232
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   232
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   232
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   223
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   223
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   223
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        42   138
6-12 months    ki1000109-ResPak        PAKISTAN                       0%              18   138
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%             78   138
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       149   482
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             119   482
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   482
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       225   545
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             146   545
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            174   545
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       155   676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             334   676
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            187   676
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        39   164
6-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   164
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%             76   164
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        34    93
6-12 months    ki1114097-CMIN          BRAZIL                         0%              33    93
6-12 months    ki1114097-CMIN          BRAZIL                         >5%             26    93
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        38   136
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%              49   136
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%             49   136
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]       115   360
6-12 months    ki1114097-CMIN          PERU                           0%             108   360
6-12 months    ki1114097-CMIN          PERU                           >5%            137   360
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   213
6-12 months    ki1114097-CONTENT       PERU                           0%             115   213
6-12 months    ki1114097-CONTENT       PERU                           >5%             57   213
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        81   206
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              62   206
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             63   206
12-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165
12-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165
12-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   225
12-24 months   ki0047075b-MAL-ED       INDIA                          0%              46   225
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%             57   225
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   226
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   226
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             75   226
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   191
12-24 months   ki0047075b-MAL-ED       PERU                           0%              49   191
12-24 months   ki0047075b-MAL-ED       PERU                           >5%             79   191
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   230
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   230
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   230
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        79   207
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              89   207
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   207
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       126   421
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             105   421
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            190   421
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       182   458
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             116   458
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            160   458
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       101   495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             273   495
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            121   495
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        32   138
12-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   138
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%             59   138
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        10    34
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              13    34
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             11    34
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]        53   166
12-24 months   ki1114097-CMIN          PERU                           0%              68   166
12-24 months   ki1114097-CMIN          PERU                           >5%             45   166
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         6    38
12-24 months   ki1114097-CONTENT       PERU                           0%              23    38
12-24 months   ki1114097-CONTENT       PERU                           >5%              9    38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/80dbe359-2839-46f4-afa2-b4f65b0232e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/80dbe359-2839-46f4-afa2-b4f65b0232e4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                3.5742027   3.4639552   3.6844503
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                3.5232315   3.4101288   3.6363342
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                3.5862929   3.4873663   3.6852194
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                3.6076646   3.5161183   3.6992108
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                3.6942643   3.4783796   3.9101489
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                3.4167258   3.2563302   3.5771214
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                3.8719970   3.7489117   3.9950823
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                3.8049868   3.6559431   3.9540305
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                3.7862426   3.6666562   3.9058291
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                3.2716534   3.1506479   3.3926589
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                3.3073418   3.1903024   3.4243811
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                3.3550360   3.2619298   3.4481422
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                3.5304894   3.3339106   3.7270683
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                3.4081153   3.3063571   3.5098736
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                3.6850967   3.2120441   4.1581493
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.4507341   3.3216071   3.5798610
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.5252853   3.4069075   3.6436631
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.4490773   3.2928377   3.6053170
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                2.8116069   2.3621320   3.2610818
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                3.0618857   2.4466895   3.6770819
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                3.2697695   2.8306120   3.7089269
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                3.3499989   3.2546850   3.4453128
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                3.2455314   3.1422471   3.3488158
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                3.3235246   3.2371672   3.4098820
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                3.5051311   3.4463079   3.5639544
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                3.4907953   3.4144369   3.5671537
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                3.4485243   3.3772250   3.5198236
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                3.3332110   3.2462297   3.4201924
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                3.2756682   3.2275076   3.3238287
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                3.3223857   3.2444884   3.4002830
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                3.5879005   3.3618690   3.8139321
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                3.4597285   3.2335114   3.6859456
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                3.4447086   3.1439109   3.7455062
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                3.7767352   3.5053773   4.0480931
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   NA                3.4847898   3.0441415   3.9254381
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                3.1410854   2.8572225   3.4249483
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                3.4412548   3.2387219   3.6437877
0-3 months     ki1114097-CMIN          PERU                           0%                   NA                3.5152164   3.1468893   3.8835434
0-3 months     ki1114097-CMIN          PERU                           >5%                  NA                3.1194089   2.9411923   3.2976256
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                3.7854758   3.4942774   4.0766742
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                3.6473680   3.3611984   3.9335377
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                3.5395737   3.3048255   3.7743220
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.9298946   1.8554233   2.0043660
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.9638497   1.8662120   2.0614873
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.8934155   1.8070595   1.9797714
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.8890428   1.8074913   1.9705943
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.9235143   1.7883996   2.0586290
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.8403634   1.7144485   1.9662783
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                2.0208295   1.9216940   2.1199650
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.9797006   1.8876422   2.0717590
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.9073540   1.8090727   2.0056352
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                2.0439621   1.9273573   2.1605668
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.9618309   1.8390930   2.0845688
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                2.0315670   1.9284139   2.1347200
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.9594247   1.7873262   2.1315232
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.9983679   1.9033689   2.0933669
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.7390054   1.4875694   1.9904415
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8119393   1.7120341   1.9118444
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.7990791   1.6893726   1.9087857
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.9400515   1.7802744   2.0998286
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                2.1763249   1.9435628   2.4090870
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                2.1601028   1.8752236   2.4449820
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                1.9800924   1.7689114   2.1912734
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.8431956   1.7651992   1.9211920
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.8459147   1.7458427   1.9459867
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.8183836   1.7431288   1.8936384
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.9611141   1.9072866   2.0149417
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.9522924   1.8860059   2.0185788
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.9822873   1.9180945   2.0464801
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.9137516   1.8412340   1.9862693
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                2.0582317   2.0035905   2.1128729
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.9944957   1.9306235   2.0583680
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.9131016   1.7728339   2.0533694
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.9530667   1.8146987   2.0914347
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.9641157   1.8675420   2.0606895
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                1.5524474   1.2886828   1.8162119
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   NA                1.8151013   1.4723264   2.1578762
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                1.7238084   1.3500448   2.0975719
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                2.0249578   1.8797908   2.1701248
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                2.1527902   1.9754526   2.3301277
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                2.0378841   1.8289157   2.2468525
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                1.9587123   1.8812680   2.0361567
3-6 months     ki1114097-CMIN          PERU                           0%                   NA                1.8923113   1.7957492   1.9888734
3-6 months     ki1114097-CMIN          PERU                           >5%                  NA                1.8375999   1.7620488   1.9131511
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                2.1527777   2.0511978   2.2543576
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                2.0405041   1.9755626   2.1054456
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                2.1212140   2.0259868   2.2164411
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.1270804   1.0881377   1.1660232
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.0734309   1.0270451   1.1198167
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.1385552   1.0957535   1.1813569
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.1241940   1.0883235   1.1600645
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                1.0957367   1.0257518   1.1657217
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.1341528   1.0753844   1.1929212
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.2411509   1.1970951   1.2852067
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.2074070   1.1624263   1.2523877
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.2190213   1.1743614   1.2636813
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.1700955   1.1185168   1.2216741
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                1.2240176   1.1648629   1.2831723
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                1.2326912   1.1773583   1.2880240
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.1216656   1.0261068   1.2172244
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.2111845   1.1645157   1.2578533
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.1426027   1.0102762   1.2749292
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.9774362   0.9193872   1.0354851
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.0257602   0.9654304   1.0860900
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9976313   0.9222416   1.0730210
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                1.3543316   1.2278214   1.4808418
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                1.2477551   1.0298509   1.4656592
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                1.2765614   1.1560812   1.3970416
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.1816602   1.1401046   1.2232158
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.2181097   1.1718774   1.2643419
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.1304765   1.0987920   1.1621609
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.1775859   1.1515541   1.2036177
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.1643947   1.1307381   1.1980513
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.1748424   1.1431155   1.2065693
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.2370067   1.1980822   1.2759311
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.2116074   1.1886893   1.2345256
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.2502878   1.2150801   1.2854954
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.1226613   1.0444856   1.2008370
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                1.0997894   1.0375611   1.1620176
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.0900350   1.0389344   1.1411355
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                1.2762840   1.1368228   1.4157452
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   NA                1.3006941   1.1935309   1.4078572
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                1.1183306   0.9714705   1.2651907
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                1.0144975   0.8953995   1.1335955
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                1.0660069   0.9981039   1.1339099
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                1.0381832   0.9128572   1.1635093
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                1.1189241   1.0717838   1.1660644
6-12 months    ki1114097-CMIN          PERU                           0%                   NA                1.1115922   1.0647270   1.1584574
6-12 months    ki1114097-CMIN          PERU                           >5%                  NA                1.1015213   1.0640329   1.1390097
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.2883636   1.2172324   1.3594948
6-12 months    ki1114097-CONTENT       PERU                           0%                   NA                1.2925095   1.2539521   1.3310669
6-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                1.3274125   1.2717997   1.3830253
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8229982   0.7992331   0.8467633
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.8574491   0.8277371   0.8871611
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.8642292   0.8345601   0.8938982
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8810508   0.8557253   0.9063763
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8686955   0.8323588   0.9050322
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8883464   0.8589477   0.9177452
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8712846   0.8433907   0.8991784
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8490664   0.8228822   0.8752506
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.8649424   0.8395300   0.8903548
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.8439118   0.8089584   0.8788652
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.8118947   0.7692046   0.8545847
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8696540   0.8386086   0.9006994
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8552051   0.8048518   0.9055584
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8711932   0.8452997   0.8970867
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9271327   0.8584707   0.9957948
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7856276   0.7448422   0.8264129
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7485699   0.7134318   0.7837079
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7676694   0.7219875   0.8133513
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7618891   0.7356048   0.7881734
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.7382408   0.7095432   0.7669383
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7514975   0.7294058   0.7735892
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8472145   0.8274945   0.8669344
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8803834   0.8578687   0.9028981
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8527579   0.8328477   0.8726681
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8698292   0.8432329   0.8964254
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8824732   0.8668831   0.8980634
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8647988   0.8405706   0.8890270
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7691216   0.7158526   0.8223906
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7973832   0.7537024   0.8410639
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7992379   0.7637944   0.8346814
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.8361147   0.7484333   0.9237962
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.8376096   0.7899996   0.8852197
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.8747878   0.8213130   0.9282625
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.8353003   0.8073485   0.8632520
12-24 months   ki1114097-CMIN          PERU                           0%                   NA                0.8349215   0.8010237   0.8688194
12-24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.8293065   0.7898526   0.8687603
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.9207074   0.8248519   1.0165629
12-24 months   ki1114097-CONTENT       PERU                           0%                   NA                0.9324959   0.8870277   0.9779640
12-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                0.9127014   0.8691200   0.9562827


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-ResPak        PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN          BRAZIL                         NA                   NA                3.5146220   3.3089330   3.7203110
0-3 months     ki1114097-CMIN          PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                3.6499227   3.4691077   3.8307378
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-ResPak        PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN          BRAZIL                         NA                   NA                1.6962691   1.5066453   1.8858929
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                2.0729700   1.9687527   2.1771872
3-6 months     ki1114097-CMIN          PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN          BRAZIL                         NA                   NA                1.2407866   1.1634646   1.3181086
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                1.0415899   0.9802963   1.1028834
6-12 months    ki1114097-CMIN          PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.8491982   0.8126982   0.8856981
12-24 months   ki1114097-CMIN          PERU                           NA                   NA                0.8335203   0.8138479   0.8531927
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9259464   0.8927736   0.9591191


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0509712   -0.2089166    0.1069742
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0120901   -0.1360348    0.1602150
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0865997   -0.1478932    0.3210926
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.1909388   -0.3756209   -0.0062567
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0670102   -0.2603079    0.1262876
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0857544   -0.2573670    0.0858583
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0356883   -0.1326582    0.2040348
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0833826   -0.0692972    0.2360623
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]          -0.1223741   -0.3437290    0.0989808
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.1546073   -0.3576642    0.6668787
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0745512   -0.1006260    0.2497285
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0016568   -0.2043501    0.2010366
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]           0.2502788   -0.5116228    1.0121804
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]           0.4581625   -0.1702378    1.0865628
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.1044674   -0.2450106    0.0360758
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0264743   -0.1550913    0.1021428
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0143358   -0.1107245    0.0820529
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0566068   -0.1490393    0.0358257
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0575429   -0.1569671    0.0418814
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0108253   -0.1275889    0.1059383
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.1281720   -0.4479601    0.1916161
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.1431920   -0.5194492    0.2330652
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          -0.2919455   -0.8094453    0.2255543
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.6356499   -1.0283498   -0.2429499
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]           0.0739616   -0.3463768    0.4943000
0-3 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.3218459   -0.5916249   -0.0520668
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.1381078   -0.5463841    0.2701686
0-3 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.2459021   -0.6199385    0.1281344
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0339550   -0.0888419    0.1567519
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0364792   -0.1505113    0.0775530
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0344715   -0.1233468    0.1922898
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.0486794   -0.1986968    0.1013380
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0411289   -0.1764160    0.0941582
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.1134756   -0.2530716    0.0261205
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0821312   -0.2514275    0.0871652
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          -0.0123951   -0.1680782    0.1432880
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0389432   -0.1576343    0.2355207
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]          -0.2204193   -0.5251125    0.0842740
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0128601   -0.1612400    0.1355197
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.1281122   -0.0603281    0.3165526
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0162221   -0.3841002    0.3516561
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.1962325   -0.5105183    0.1180533
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0027191   -0.1241582    0.1295963
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0248120   -0.1331943    0.0835703
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0088218   -0.0942109    0.0765673
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0211732   -0.0626011    0.1049474
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.1444800    0.0536809    0.2352791
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0807441   -0.0158917    0.1773799
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0399651   -0.1570647    0.2369949
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0510141   -0.1192843    0.2213124
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.2626539   -0.1698578    0.6951656
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]           0.1713610   -0.2861004    0.6288224
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.1278323   -0.1013446    0.3570092
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0129263   -0.2415167    0.2673693
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0664010   -0.1901825    0.0573805
3-6 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.1211124   -0.2293048   -0.0129200
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.1122736   -0.2328384    0.0082913
3-6 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0315637   -0.1707999    0.1076724
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0536495   -0.1142150    0.0069159
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0114748   -0.0463916    0.0693412
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0284573   -0.1070994    0.0501848
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0099588   -0.0588919    0.0788095
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0337439   -0.0967056    0.0292178
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0221296   -0.0848625    0.0406034
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0539221   -0.0245612    0.1324054
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0625957   -0.0130488    0.1382402
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0895189   -0.0168271    0.1958649
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0209371   -0.1422861    0.1841603
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0483241   -0.0353979    0.1320460
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0201951   -0.0749536    0.1153439
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.1065765   -0.3585429    0.1453898
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.0777702   -0.2524708    0.0969304
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0364495   -0.0257139    0.0986129
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0511837   -0.1034405    0.0010731
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0131913   -0.0557403    0.0293578
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0027436   -0.0437831    0.0382960
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0253992   -0.0705695    0.0197710
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0132811   -0.0392040    0.0657662
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.0228720   -0.1227909    0.0770470
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.0326263   -0.1260218    0.0607691
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.0244101   -0.1514688    0.2002889
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.1579534   -0.3604807    0.0445739
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0515093   -0.0855861    0.1886047
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0236857   -0.1492043    0.1965757
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0073319   -0.0738041    0.0591403
6-12 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0174028   -0.0776323    0.0428266
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0041459   -0.0767635    0.0850552
6-12 months    ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]           0.0390489   -0.0512419    0.1293397
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0344509   -0.0035962    0.0724981
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0412310    0.0032174    0.0792446
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0123553   -0.0566468    0.0319362
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0072957   -0.0315073    0.0460986
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0222181   -0.0604762    0.0160399
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0063421   -0.0440762    0.0313919
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0320171   -0.0871912    0.0231570
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0257422   -0.0210077    0.0724922
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0159881   -0.0406329    0.0726090
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0719276   -0.0132189    0.1570742
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0370577   -0.0908920    0.0167766
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0179582   -0.0791978    0.0432814
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0236483   -0.0625638    0.0152671
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0103916   -0.0447268    0.0239436
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0331689    0.0032392    0.0630986
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0055434   -0.0224797    0.0335665
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0126441   -0.0181847    0.0434729
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0050304   -0.0410076    0.0309469
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0282615   -0.0406268    0.0971498
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0301163   -0.0338667    0.0940994
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0014949   -0.0982786    0.1012684
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0386730   -0.0640284    0.1413745
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0003787   -0.0443146    0.0435572
12-24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0059938   -0.0543457    0.0423581
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0117885   -0.0943041    0.1178810
12-24 months   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0080060   -0.1133038    0.0972917
