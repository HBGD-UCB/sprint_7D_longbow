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

**Outcome Variable:** y_rate_haz

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
![](/tmp/76def87c-99eb-42e9-a46d-b37fd8583250/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/76def87c-99eb-42e9-a46d-b37fd8583250/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0258262   -0.0783963    0.0267439
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0640532   -0.1241445   -0.0039620
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0167959   -0.0707693    0.0371774
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0040260   -0.0504585    0.0424066
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0326945   -0.0721023    0.1374913
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0976736   -0.1777586   -0.0175885
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0885245    0.0326915    0.1443576
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0679540    0.0005609    0.1353471
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.0678535    0.0098427    0.1258642
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1739695   -0.2374581   -0.1104809
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1687532   -0.2232979   -0.1142084
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.1396319   -0.1889118   -0.0903520
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0635714   -0.1600328    0.0328900
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.1160585   -0.1660573   -0.0660596
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0410199   -0.3003498    0.2183100
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0639270   -0.1278632    0.0000091
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0166551   -0.0746818    0.0413717
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0754145   -0.1595362    0.0087072
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.3259694   -0.5612345   -0.0907042
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.1822805   -0.5030928    0.1385317
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.1010696   -0.3175299    0.1153907
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.1088223   -0.1552828   -0.0623617
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.1354633   -0.1861415   -0.0847852
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.1174600   -0.1603189   -0.0746012
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0375945   -0.0640711   -0.0111178
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0202852   -0.0545870    0.0140166
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0632462   -0.0978198   -0.0286727
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.1157519   -0.1561853   -0.0753186
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.1282573   -0.1516613   -0.1048534
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.1172016   -0.1543664   -0.0800367
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.1204070    0.0022468    0.2385672
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0231099   -0.0907946    0.1370144
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                 0.0209450   -0.1137212    0.1556112
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0443656   -0.0902010    0.1789322
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   NA                -0.1001869   -0.3175947    0.1172209
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.2700153   -0.4039959   -0.1360347
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0454582   -0.1467227    0.0558062
0-3 months     ki1114097-CMIN          PERU                           0%                   NA                -0.0890776   -0.2793764    0.1012213
0-3 months     ki1114097-CMIN          PERU                           >5%                  NA                -0.1951269   -0.2809705   -0.1092833
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0285618   -0.1407263    0.1978500
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0077360   -0.1528592    0.1683312
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                -0.0284337   -0.1809256    0.1240582
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0218248   -0.0570788    0.0134293
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0084887   -0.0548113    0.0378339
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0360607   -0.0757583    0.0036369
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0383587   -0.0762986   -0.0004188
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0248740   -0.0890095    0.0392616
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0561854   -0.1131553    0.0007846
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0007935   -0.0484696    0.0468825
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0140927   -0.0572637    0.0290782
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0480009   -0.0946143   -0.0013874
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0440899   -0.0106486    0.0988284
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0008280   -0.0594921    0.0578360
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                 0.0310735   -0.0174465    0.0795935
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0087496   -0.0897366    0.0722374
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0087088   -0.0360274    0.0534451
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1395719   -0.2546069   -0.0245368
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0815630   -0.1287474   -0.0343785
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0805005   -0.1326342   -0.0283667
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0241533   -0.1005685    0.0522619
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0960702   -0.0133202    0.2054607
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0770935   -0.0648971    0.2190842
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0061221   -0.1035679    0.0913236
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0523664   -0.0885662   -0.0161666
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0399935   -0.0857035    0.0057165
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0556331   -0.0902696   -0.0209966
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0302428   -0.0554138   -0.0050719
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0281887   -0.0593120    0.0029347
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0225306   -0.0527761    0.0077148
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0190093   -0.0527302    0.0147116
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0541167    0.0287055    0.0795279
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0190642   -0.0096165    0.0477449
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0149169   -0.0779687    0.0481349
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0050489   -0.0675698    0.0574719
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0075734   -0.0546180    0.0394712
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.2114449   -0.3360045   -0.0868853
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0880463   -0.2505543    0.0744618
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.1283509   -0.3088408    0.0521390
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0197253   -0.0495472    0.0889977
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0624868   -0.0226595    0.1476331
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                 0.0125877   -0.0857468    0.1109223
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0237598   -0.0603043    0.0127846
3-6 months     ki1114097-CMIN          PERU                           0%                   NA                -0.0609291   -0.1057273   -0.0161308
3-6 months     ki1114097-CMIN          PERU                           >5%                  NA                -0.0855143   -0.1212246   -0.0498039
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0415292   -0.0062473    0.0893057
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0053945   -0.0357739    0.0249849
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                 0.0279367   -0.0173009    0.0731743
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0770367   -0.0935511   -0.0605223
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0988333   -0.1181177   -0.0795489
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0678111   -0.0854124   -0.0502098
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0785916   -0.0938107   -0.0633725
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0878415   -0.1177917   -0.0578912
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0678649   -0.0934836   -0.0422462
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0412209   -0.0595097   -0.0229321
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0541990   -0.0732126   -0.0351854
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0509192   -0.0688185   -0.0330200
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0517593   -0.0736130   -0.0299055
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0308171   -0.0570113   -0.0046228
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0301005   -0.0538171   -0.0063839
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0793524   -0.1192886   -0.0394162
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0454179   -0.0651308   -0.0257049
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0756074   -0.1375894   -0.0136255
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1351210   -0.1597959   -0.1104460
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1128401   -0.1379042   -0.0877761
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1268810   -0.1596816   -0.0940803
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0165077   -0.0374948    0.0705103
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.0281951   -0.1236700    0.0672799
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0149054   -0.0679015    0.0380907
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0496715   -0.0669666   -0.0323763
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0319990   -0.0516141   -0.0123838
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0672155   -0.0801418   -0.0542891
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0603023   -0.0707140   -0.0498907
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0678291   -0.0810850   -0.0545732
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0612308   -0.0741592   -0.0483025
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0256864   -0.0421347   -0.0092381
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0393566   -0.0488621   -0.0298511
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0225239   -0.0372397   -0.0078082
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0669005   -0.0987547   -0.0350463
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0797619   -0.1077433   -0.0517805
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0810499   -0.1018726   -0.0602273
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0231147   -0.0798378    0.0336084
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0219504   -0.0652085    0.0213078
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.0859433   -0.1437500   -0.0281367
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.1445964   -0.1973606   -0.0918321
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.1165525   -0.1465639   -0.0865411
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.1230755   -0.1772293   -0.0689216
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0883115   -0.1085213   -0.0681016
6-12 months    ki1114097-CMIN          PERU                           0%                   NA                -0.0968267   -0.1165936   -0.0770598
6-12 months    ki1114097-CMIN          PERU                           >5%                  NA                -0.0976469   -0.1132862   -0.0820077
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0269950   -0.0598225    0.0058325
6-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0252994   -0.0415960   -0.0090027
6-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.0144357   -0.0374923    0.0086209
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0281671   -0.0363732   -0.0199611
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0117844   -0.0204577   -0.0031111
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0105512   -0.0212136    0.0001112
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0112927   -0.0186463   -0.0039392
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0107589   -0.0222532    0.0007355
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0061600   -0.0148713    0.0025514
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0265420   -0.0362344   -0.0168495
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0313957   -0.0401374   -0.0226540
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0305712   -0.0382760   -0.0228663
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0076971   -0.0187680    0.0033737
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0188410   -0.0336295   -0.0040525
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0045539   -0.0155878    0.0064799
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0170570   -0.0340986   -0.0000154
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0161933   -0.0249481   -0.0074385
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0102956   -0.0134104    0.0340017
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0325082   -0.0463977   -0.0186187
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0457431   -0.0572702   -0.0342160
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0384951   -0.0533021   -0.0236881
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0395146   -0.0478188   -0.0312104
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0467627   -0.0554874   -0.0380380
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0375326   -0.0447793   -0.0302859
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0111913   -0.0176259   -0.0047568
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0032117   -0.0107074    0.0042840
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0083330   -0.0144262   -0.0022399
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0067735   -0.0158039    0.0022569
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0027657   -0.0081417    0.0026104
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0115576   -0.0193816   -0.0037336
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0404422   -0.0570390   -0.0238454
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0318571   -0.0460113   -0.0177028
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0265909   -0.0395432   -0.0136386
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.0422069   -0.0726941   -0.0117196
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0286818   -0.0523232   -0.0050404
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.0271005   -0.0495236   -0.0046774
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0301887   -0.0398925   -0.0204849
12-24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.0338827   -0.0455644   -0.0222011
12-24 months   ki1114097-CMIN          PERU                           >5%                  NA                -0.0284779   -0.0430208   -0.0139350
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0110624   -0.0453574    0.0232326
12-24 months   ki1114097-CONTENT       PERU                           0%                   NA                -0.0296531   -0.0456519   -0.0136542
12-24 months   ki1114097-CONTENT       PERU                           >5%                  NA                -0.0186497   -0.0408919    0.0035925


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-ResPak        PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                 0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN          BRAZIL                         NA                   NA                -0.0853247   -0.1864247    0.0157752
0-3 months     ki1114097-CMIN          PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
0-3 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0033142   -0.0990835    0.1057118
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-ResPak        PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN          BRAZIL                         NA                   NA                -0.1431730   -0.2334590   -0.0528870
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                 0.0319654   -0.0174743    0.0814052
3-6 months     ki1114097-CMIN          PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN          BRAZIL                         NA                   NA                -0.0402665   -0.0712609   -0.0092722
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.1267385   -0.1535471   -0.0999299
6-12 months    ki1114097-CMIN          PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT       PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                -0.0321482   -0.0469705   -0.0173259
12-24 months   ki1114097-CMIN          PERU                           NA                   NA                -0.0312381   -0.0381781   -0.0242982
12-24 months   ki1114097-CONTENT       PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0382271   -0.1180680    0.0416139
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0090303   -0.0663139    0.0843744
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0367205   -0.0779022    0.1513431
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.0936476   -0.1862197   -0.0010755
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0205706   -0.1080872    0.0669461
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0206711   -0.1011856    0.0598434
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0052163   -0.0784851    0.0889178
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0343376   -0.0460323    0.1147075
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]          -0.0524871   -0.1611364    0.0561623
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0225515   -0.2541375    0.2992405
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0472720   -0.0390700    0.1336139
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0114874   -0.1171486    0.0941738
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]           0.1436888   -0.2541430    0.5415207
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]           0.2248998   -0.0947950    0.5445946
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0266411   -0.0953932    0.0421111
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0086378   -0.0718474    0.0545719
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0173093   -0.0260223    0.0606409
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0256518   -0.0691988    0.0178952
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0125054   -0.0592237    0.0342129
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0014497   -0.0563685    0.0534692
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.0972971   -0.2614192    0.0668251
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.0994620   -0.2786178    0.0796939
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          -0.1445526   -0.4002366    0.1111315
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.3143809   -0.5042729   -0.1244889
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0436193   -0.2591840    0.1719454
0-3 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.1496687   -0.2824226   -0.0169147
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0208258   -0.2541695    0.2125179
0-3 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0569955   -0.2848381    0.1708471
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0133360   -0.0448759    0.0715480
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0142359   -0.0673278    0.0388560
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0134848   -0.0610324    0.0880019
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.0178266   -0.0862738    0.0506205
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0132992   -0.0776166    0.0510183
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0472073   -0.1138843    0.0194696
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0449179   -0.1251536    0.0353178
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          -0.0130164   -0.0861634    0.0601307
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0174585   -0.0750630    0.1099799
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]          -0.1308222   -0.2715061    0.0098617
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0010625   -0.0692532    0.0713782
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0574097   -0.0323993    0.1472187
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0189767   -0.1982184    0.1602651
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.1021923   -0.2486913    0.0443066
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0123729   -0.0459352    0.0706809
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0032667   -0.0533677    0.0468344
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0020542   -0.0379738    0.0420822
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0077122   -0.0316371    0.0470614
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0731260    0.0309024    0.1153495
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0380735   -0.0061948    0.0823418
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0098680   -0.0789261    0.0986621
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0073435   -0.0713249    0.0860120
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.1233986   -0.0813548    0.3281520
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]           0.0830940   -0.1362042    0.3023922
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0427616   -0.0670044    0.1525275
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.0071375   -0.1274220    0.1131470
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0371692   -0.0949826    0.0206441
3-6 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0617544   -0.1128497   -0.0106592
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0469237   -0.1035409    0.0096934
3-6 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0135925   -0.0793879    0.0522028
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0217966   -0.0471858    0.0035927
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0092256   -0.0149101    0.0333613
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0092499   -0.0428451    0.0243454
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0107267   -0.0190716    0.0405250
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0129781   -0.0393598    0.0134037
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0096983   -0.0352887    0.0158920
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0209422   -0.0131712    0.0550556
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0216588   -0.0105912    0.0539088
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0339345   -0.0106020    0.0784711
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0037450   -0.0699888    0.0774787
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0222808   -0.0128910    0.0574527
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0082400   -0.0328055    0.0492856
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0447028   -0.1543921    0.0649865
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.0314132   -0.1070760    0.0442496
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0176725   -0.0084785    0.0438236
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0175440   -0.0391360    0.0040480
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0075268   -0.0243827    0.0093291
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0009285   -0.0175280    0.0156711
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0136702   -0.0326676    0.0053273
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0031625   -0.0189079    0.0252329
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.0128614   -0.0552600    0.0295373
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.0141494   -0.0522056    0.0239067
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.0011643   -0.0701714    0.0725000
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.0628287   -0.1438171    0.0181597
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0280438   -0.0326583    0.0887459
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0215209   -0.0540880    0.0971297
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0085153   -0.0367849    0.0197543
6-12 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0093355   -0.0348898    0.0162189
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0016956   -0.0349544    0.0383457
6-12 months    ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]           0.0125593   -0.0275562    0.0526747
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0163827    0.0044426    0.0283227
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0176160    0.0041614    0.0310705
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0005339   -0.0131115    0.0141792
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0051328   -0.0062673    0.0165329
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0048537   -0.0179060    0.0081985
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0040292   -0.0164110    0.0083526
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0111439   -0.0296172    0.0073294
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0031432   -0.0124873    0.0187737
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0008637   -0.0182951    0.0200226
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0273526   -0.0018431    0.0565484
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0132349   -0.0312846    0.0048149
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0059869   -0.0262887    0.0143150
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0072481   -0.0192930    0.0047968
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]           0.0019820   -0.0090395    0.0130036
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0079796   -0.0018991    0.0178583
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0028583   -0.0060034    0.0117200
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0040078   -0.0065017    0.0145173
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0047841   -0.0167324    0.0071642
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0085851   -0.0132277    0.0303979
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0138513   -0.0072014    0.0349040
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0135250   -0.0250546    0.0521046
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0151064   -0.0227389    0.0529516
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0036941   -0.0188804    0.0114923
12-24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]           0.0017108   -0.0157723    0.0191939
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0185907   -0.0564340    0.0192525
12-24 months   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0075873   -0.0484635    0.0332889
