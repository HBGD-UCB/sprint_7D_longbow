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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
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
![](/tmp/441e605b-3037-4af5-90a3-94a27b7bb300/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/441e605b-3037-4af5-90a3-94a27b7bb300/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                3.7358468   3.6324028   3.8392909
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                3.7817931   3.6809376   3.8826485
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                3.8077203   3.7170922   3.8983484
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                3.6104122   3.5203648   3.7004595
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                3.6907833   3.4790663   3.9025003
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                3.4133764   3.2540495   3.5727032
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                3.8625743   3.7507543   3.9743943
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                3.8106802   3.6775457   3.9438147
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                3.7858554   3.6775113   3.8941994
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                3.4283141   3.3377214   3.5189069
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                3.5723102   3.4935869   3.6510336
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                3.4795109   3.4028704   3.5561514
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                3.5304894   3.3339106   3.7270683
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                3.4081153   3.3063571   3.5098736
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                3.6850967   3.2120441   4.1581493
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.4520849   3.3422381   3.5619318
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.5108744   3.4105622   3.6111867
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.4559962   3.3300806   3.5819117
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                2.8313656   2.3838874   3.2788438
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                3.0552450   2.4491096   3.6613804
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                3.2577907   2.8200551   3.6955264
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                3.3011465   3.2213297   3.3809633
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                3.2229792   3.1372433   3.3087151
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                3.2945369   3.2202318   3.3688421
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                3.5047013   3.4472312   3.5621715
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                3.4908700   3.4168258   3.5649142
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                3.4490236   3.3795022   3.5185451
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                3.3254396   3.2612813   3.3895978
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                3.2662113   3.2233460   3.3090767
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                3.3087736   3.2482749   3.3692722
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                3.5816930   3.3567858   3.8066002
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                3.4630202   3.2365935   3.6894469
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                3.4480829   3.1473147   3.7488511
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                3.8219738   3.5557419   4.0882057
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   NA                3.5794461   3.1676889   3.9912033
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                3.2485535   2.9777484   3.5193587
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                3.4410872   3.2385481   3.6436262
0-3 months     ki1114097-CMIN          PERU                           0%                   NA                3.5155993   3.1473739   3.8838246
0-3 months     ki1114097-CMIN          PERU                           >5%                  NA                3.1194106   2.9411976   3.2976236
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                3.7854758   3.4942774   4.0766742
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                3.6473680   3.3611984   3.9335377
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                3.5395737   3.3048255   3.7743220
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.9208765   1.8674772   1.9742757
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.9480955   1.8865029   2.0096880
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.8912137   1.8337081   1.9487193
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.8932596   1.8202488   1.9662704
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                1.8867533   1.7861417   1.9873649
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.8504198   1.7488284   1.9520112
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                2.0202412   1.9213606   2.1191218
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.9797878   1.8879108   2.0716648
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.9078235   1.8099534   2.0056936
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.8880256   1.7841782   1.9918730
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                1.7268098   1.6232630   1.8303566
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                1.9353815   1.8396230   2.0311400
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.9594247   1.7873262   2.1315232
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.9983679   1.9033689   2.0933669
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.7390054   1.4875694   1.9904415
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8512032   1.7573286   1.9450778
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.8336343   1.7302943   1.9369743
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                2.0595468   1.9240098   2.1950839
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                2.1820815   1.9504343   2.4137286
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                2.1676946   1.8847412   2.4506481
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                1.9624341   1.7578631   2.1670051
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.8846663   1.8204945   1.9488382
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.9056793   1.8287649   1.9825936
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.8478571   1.7805142   1.9151999
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.9611141   1.9072866   2.0149417
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.9522924   1.8860059   2.0185788
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.9822873   1.9180945   2.0464801
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.9973972   1.9449836   2.0498108
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                2.0927525   2.0458938   2.1396111
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                2.0852220   2.0353718   2.1350723
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.9118451   1.7718383   2.0518519
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                1.9532779   1.8148685   2.0916872
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.9643270   1.8676951   2.0609588
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                1.5827840   1.3358503   1.8297178
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   NA                1.7857753   1.4722232   2.0993275
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                1.7468101   1.4161498   2.0774704
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                2.0249578   1.8797908   2.1701248
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                2.1527902   1.9754526   2.3301277
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                2.0378841   1.8289157   2.2468525
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                1.9597027   1.8825537   2.0368516
3-6 months     ki1114097-CMIN          PERU                           0%                   NA                1.8911311   1.7946850   1.9875773
3-6 months     ki1114097-CMIN          PERU                           >5%                  NA                1.8368484   1.7614028   1.9122941
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                2.1561097   2.0553230   2.2568963
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                2.0399767   1.9749788   2.1049747
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                2.1200577   2.0247932   2.2153222
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                1.1111275   1.0800692   1.1421858
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                1.0384795   1.0052777   1.0716813
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                1.1146196   1.0828569   1.1463823
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                1.1219680   1.0872498   1.1566862
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                1.0974778   1.0306748   1.1642807
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                1.1372450   1.0817684   1.1927217
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                1.2373069   1.2001745   1.2744393
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                1.2100442   1.1723157   1.2477727
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                1.2214725   1.1843345   1.2586105
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                1.1738378   1.1227666   1.2249091
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                1.2184062   1.1596793   1.2771331
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                1.2330369   1.1777864   1.2882874
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                1.1216656   1.0261068   1.2172244
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                1.2111845   1.1645157   1.2578533
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                1.1426027   1.0102762   1.2749292
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.9661947   0.9172724   1.0151169
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.0122148   0.9621140   1.0623157
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9577173   0.9000976   1.0153370
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                1.3585943   1.2312954   1.4858933
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                1.2531443   1.0376478   1.4686408
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                1.2797415   1.1603788   1.3991042
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                1.1342517   1.1023756   1.1661278
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                1.1731914   1.1379745   1.2084084
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                1.1011755   1.0731752   1.1291759
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                1.1775909   1.1515608   1.2036209
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                1.1643813   1.1307315   1.1980311
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                1.1748473   1.1431243   1.2065702
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                1.1883767   1.1617863   1.2149670
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                1.1933341   1.1742583   1.2124100
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                1.2003094   1.1758863   1.2247324
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                1.1254731   1.0499813   1.2009648
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                1.1022215   1.0400814   1.1643617
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                1.0864689   1.0352621   1.1376757
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                1.2504211   1.1388011   1.3620410
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   NA                1.3099389   1.2196342   1.4002437
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                1.1494455   1.0399644   1.2589266
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                1.0214850   0.9088871   1.1340830
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                1.0641349   0.9944183   1.1338514
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                1.0416135   0.9157181   1.1675088
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                1.1179521   1.0728271   1.1630771
6-12 months    ki1114097-CMIN          PERU                           0%                   NA                1.1094051   1.0628347   1.1559755
6-12 months    ki1114097-CMIN          PERU                           >5%                  NA                1.1022233   1.0647346   1.1397120
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                1.2884594   1.2175866   1.3593321
6-12 months    ki1114097-CONTENT       PERU                           0%                   NA                1.2924989   1.2539135   1.3310842
6-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                1.3273616   1.2717213   1.3830020
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.8539186   0.8352394   0.8725978
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.9078213   0.8866739   0.9289687
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.9120684   0.8907209   0.9334159
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.8812428   0.8577861   0.9046995
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.8696458   0.8380346   0.9012571
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.8871934   0.8611347   0.9132521
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.8712483   0.8433772   0.8991195
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.8490872   0.8229140   0.8752604
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.8649571   0.8395746   0.8903397
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.7604560   0.7343643   0.7865476
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.6718129   0.6433735   0.7002522
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.8174967   0.7933536   0.8416398
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                0.8552051   0.8048518   0.9055584
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                0.8711932   0.8452997   0.8970867
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                0.9271327   0.8584707   0.9957948
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7452113   0.7095849   0.7808377
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7187427   0.6868601   0.7506252
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.6714381   0.6353044   0.7075718
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.7727217   0.7554849   0.7899586
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.7632400   0.7442116   0.7822683
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.7634113   0.7458535   0.7809691
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.8472933   0.8276712   0.8669154
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.8800618   0.8576577   0.9024660
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.8529027   0.8330986   0.8727068
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.8565095   0.8384582   0.8745608
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.8807931   0.8667668   0.8948195
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.8508518   0.8339580   0.8677457
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7702797   0.7173721   0.8231873
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7973347   0.7536644   0.8410049
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7996677   0.7642778   0.8350577
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.8402877   0.7555980   0.9249774
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.8384968   0.7935365   0.8834571
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.8783092   0.8291722   0.9274463
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.8332001   0.8051914   0.8612088
12-24 months   ki1114097-CMIN          PERU                           0%                   NA                0.8351095   0.8014183   0.8688007
12-24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.8295824   0.7903971   0.8687678
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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0459462   -0.0994184    0.1913109
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0718735   -0.0668024    0.2105494
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0803711   -0.1480799    0.3088222
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.1970358   -0.3787815   -0.0152900
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0518941   -0.2172961    0.1135078
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0767190   -0.2250374    0.0715995
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.1439961    0.0231421    0.2648501
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0511968   -0.0677456    0.1701391
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]          -0.1223741   -0.3437290    0.0989808
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.1546073   -0.3576642    0.6668787
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0587895   -0.0755145    0.1930935
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0039112   -0.1510977    0.1589202
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]           0.2238794   -0.5272846    0.9750435
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]           0.4264252   -0.1978512    1.0507016
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0781673   -0.1869869    0.0306522
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0066096   -0.1044141    0.0911949
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0138313   -0.1063586    0.0786960
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0556777   -0.1448138    0.0334583
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0592282   -0.1364067    0.0179502
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0166660   -0.1048175    0.0714854
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.1186727   -0.4375322    0.2001867
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.1336101   -0.5089222    0.2417021
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          -0.2425277   -0.7259766    0.2409213
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.5734202   -0.9497480   -0.1970925
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]           0.0745121   -0.3457236    0.4947478
0-3 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.3216766   -0.5914590   -0.0518941
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.1381078   -0.5463841    0.2701686
0-3 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.2459021   -0.6199385    0.1281344
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0272190   -0.0436545    0.0980925
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0296628   -0.0963871    0.0370615
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0065063   -0.1177715    0.1047589
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.0428398   -0.1578623    0.0721827
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0404534   -0.1752783    0.0943715
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.1124177   -0.2513038    0.0264684
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.1612158   -0.3087177   -0.0137139
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0473559   -0.0944071    0.1891190
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0389432   -0.1576343    0.2355207
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]          -0.2204193   -0.5251125    0.0842740
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0175689   -0.1572684    0.1221307
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.2083437    0.0433550    0.3733324
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0143868   -0.3776373    0.3488637
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.2196474   -0.5257772    0.0864824
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0210129   -0.0788115    0.1208374
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0368093   -0.1294410    0.0558225
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0088218   -0.0942109    0.0765673
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0211732   -0.0626011    0.1049474
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0953552    0.0255331    0.1651774
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0878248    0.0160527    0.1595969
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0414328   -0.1554351    0.2383007
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0524819   -0.1176285    0.2225923
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.2029913   -0.1855013    0.5914839
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]           0.1640261   -0.2340165    0.5620686
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.1278323   -0.1013446    0.3570092
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0129263   -0.2415167    0.2673693
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0685715   -0.1920168    0.0548737
3-6 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.1228543   -0.2308394   -0.0148691
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.1161329   -0.2360044    0.0037385
3-6 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0360519   -0.1746786    0.1025747
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0726480   -0.1177672   -0.0275289
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0034921   -0.0406059    0.0475900
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0244903   -0.0985567    0.0495762
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0152770   -0.0487781    0.0793322
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0272627   -0.0749553    0.0204299
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0158344   -0.0632416    0.0315729
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0445684   -0.0329862    0.1221229
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0591991   -0.0158266    0.1342247
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0895189   -0.0168271    0.1958649
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0209371   -0.1422861    0.1841603
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0460201   -0.0156872    0.1077275
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0084774   -0.0773961    0.0604414
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.1054500   -0.3556434    0.1447433
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.0788529   -0.2530019    0.0952962
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0389397   -0.0086278    0.0865073
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0330762   -0.0755067    0.0093544
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0132096   -0.0557495    0.0293303
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0027436   -0.0437768    0.0382896
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0049575   -0.0258087    0.0357237
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0119327   -0.0220877    0.0459531
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.0232515   -0.1206465    0.0741434
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.0390041   -0.1296896    0.0516814
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.0595179   -0.0662812    0.1853169
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.1009756   -0.2441612    0.0422101
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0426498   -0.0893243    0.1746240
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0201284   -0.1477753    0.1880322
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0085470   -0.0732979    0.0562039
6-12 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0157288   -0.0742534    0.0427959
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0040395   -0.0766459    0.0847249
6-12 months    ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]           0.0389022   -0.0511907    0.1289951
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0539027    0.0271763    0.0806292
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0581498    0.0315601    0.0847395
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0115969   -0.0490800    0.0258861
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0059506   -0.0269601    0.0388613
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0221611   -0.0603831    0.0160608
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0062912   -0.0439701    0.0313877
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0886431   -0.1285564   -0.0487297
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0570408    0.0208977    0.0931839
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0159881   -0.0406329    0.0726090
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0719276   -0.0132189    0.1570742
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0264686   -0.0721337    0.0191964
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0737732   -0.1225530   -0.0249935
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0094818   -0.0326493    0.0136858
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0093105   -0.0311569    0.0125360
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0327686    0.0030576    0.0624796
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0056095   -0.0221833    0.0334022
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0242836    0.0014107    0.0471565
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0056577   -0.0304097    0.0190944
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0270550   -0.0415819    0.0956918
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0293880   -0.0343552    0.0931313
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          -0.0017909   -0.0981403    0.0945586
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0380216   -0.0588231    0.1348663
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]           0.0019094   -0.0418770    0.0456959
12-24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0036177   -0.0517575    0.0445222
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0117885   -0.0943041    0.1178810
12-24 months   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0080060   -0.1133038    0.0972917
