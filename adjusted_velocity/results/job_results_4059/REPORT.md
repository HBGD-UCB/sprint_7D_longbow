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
![](/tmp/029f1450-f68b-4f91-8124-56702437b64f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/029f1450-f68b-4f91-8124-56702437b64f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0338587   -0.0784245    0.0107070
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0833744   -0.1318008   -0.0349479
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0346527   -0.0798957    0.0105903
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0031211   -0.0492021    0.0429599
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0345177   -0.0659937    0.1350292
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0961716   -0.1759471   -0.0163962
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0828968    0.0327123    0.1330813
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0687542    0.0092012    0.1283072
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                 0.0724304    0.0193723    0.1254884
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0630801   -0.1054126   -0.0207476
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0024717   -0.0320491    0.0369925
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0610862   -0.0989182   -0.0232541
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0635714   -0.1600328    0.0328900
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.1160585   -0.1660573   -0.0660596
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0410199   -0.3003498    0.2183100
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0461502   -0.1052170    0.0129165
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0064784   -0.0601188    0.0471620
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0300552   -0.1033721    0.0432617
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.3126400   -0.5459878   -0.0792922
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.1994073   -0.5216621    0.1228475
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.1042985   -0.3205393    0.1119423
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.1100829   -0.1552005   -0.0649653
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.1339856   -0.1844922   -0.0834790
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.1173810   -0.1594167   -0.0753452
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0375945   -0.0640711   -0.0111178
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0202852   -0.0545870    0.0140166
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0632462   -0.0978198   -0.0286727
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.1026263   -0.1311682   -0.0740844
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.1222863   -0.1427888   -0.1017839
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.1090355   -0.1371396   -0.0809315
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.1232848    0.0056002    0.2409695
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0222396   -0.0917370    0.1362161
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                 0.0200820   -0.1145491    0.1547131
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                 0.0443656   -0.0902010    0.1789322
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   NA                -0.1001869   -0.3175947    0.1172209
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.2700153   -0.4039959   -0.1360347
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0531840   -0.1536181    0.0472500
0-3 months     ki1114097-CMIN          PERU                           0%                   NA                -0.0619939   -0.2392414    0.1152536
0-3 months     ki1114097-CMIN          PERU                           >5%                  NA                -0.1969858   -0.2803345   -0.1136370
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0285618   -0.1407263    0.1978500
0-3 months     ki1114097-CONTENT       PERU                           0%                   NA                 0.0077360   -0.1528592    0.1683312
0-3 months     ki1114097-CONTENT       PERU                           >5%                  NA                -0.0284337   -0.1809256    0.1240582
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0306370   -0.0610973   -0.0001768
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0234190   -0.0607007    0.0138627
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0519021   -0.0848249   -0.0189793
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0756723   -0.1097372   -0.0416074
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.2016947   -0.2433032   -0.1600862
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.1821014   -0.2238329   -0.1403699
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0007935   -0.0484696    0.0468825
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0140927   -0.0572637    0.0290782
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0480009   -0.0946143   -0.0013874
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0176518   -0.0576209    0.0223174
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0776896   -0.1174839   -0.0378953
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0051064   -0.0434027    0.0331899
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0087496   -0.0897366    0.0722374
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                 0.0087088   -0.0360274    0.0534451
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.1395719   -0.2546069   -0.0245368
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0781870   -0.1240584   -0.0323157
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0846303   -0.1352170   -0.0340436
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0212224   -0.0928826    0.0504379
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0926008   -0.0164663    0.2016679
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0650761   -0.0755763    0.2057284
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0156467   -0.1113769    0.0800835
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0502861   -0.0833526   -0.0172195
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0354809   -0.0756259    0.0046641
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0485259   -0.0814376   -0.0156143
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0301971   -0.0553268   -0.0050674
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0284042   -0.0594411    0.0026326
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0224071   -0.0525956    0.0077814
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0267573    0.0047702    0.0487444
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0645602    0.0444493    0.0846710
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0618050    0.0414557    0.0821544
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0155012   -0.0784478    0.0474454
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0046577   -0.0671750    0.0578595
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0050698   -0.0514923    0.0413526
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.2111161   -0.3356786   -0.0865537
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0884468   -0.2509078    0.0740143
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.1282484   -0.3085215    0.0520246
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0192788   -0.0499007    0.0884583
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0623571   -0.0227249    0.1474391
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                 0.0109390   -0.0869838    0.1088618
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0225514   -0.0589476    0.0138447
3-6 months     ki1114097-CMIN          PERU                           0%                   NA                -0.0611869   -0.1058588   -0.0165151
3-6 months     ki1114097-CMIN          PERU                           >5%                  NA                -0.0872992   -0.1226222   -0.0519762
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0434120   -0.0039354    0.0907594
3-6 months     ki1114097-CONTENT       PERU                           0%                   NA                -0.0055920   -0.0359992    0.0248152
3-6 months     ki1114097-CONTENT       PERU                           >5%                  NA                 0.0269469   -0.0182684    0.0721622
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0834157   -0.0964897   -0.0703416
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1198478   -0.1338256   -0.1058701
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                -0.0739275   -0.0867578   -0.0610972
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0784334   -0.0930098   -0.0638569
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0877841   -0.1156913   -0.0598768
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                -0.0680775   -0.0919019   -0.0442532
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0424424   -0.0590799   -0.0258049
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0541999   -0.0710365   -0.0373633
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0495610   -0.0654172   -0.0337047
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0097610   -0.0295888    0.0100669
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0354279    0.0125793    0.0582765
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0026732   -0.0250732    0.0197268
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0793524   -0.1192886   -0.0394162
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0454179   -0.0651308   -0.0257049
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                -0.0756074   -0.1375894   -0.0136255
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1380682   -0.1612992   -0.1148371
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1154317   -0.1392504   -0.0916131
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1352629   -0.1648055   -0.1057204
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0165146   -0.0374968    0.0705261
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.0280206   -0.1235043    0.0674630
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                -0.0150463   -0.0679990    0.0379063
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0585017   -0.0713249   -0.0456785
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0359480   -0.0506987   -0.0211972
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0748066   -0.0860327   -0.0635804
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0602982   -0.0707088   -0.0498877
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0678429   -0.0810934   -0.0545923
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0612247   -0.0741490   -0.0483004
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0509506   -0.0635018   -0.0383994
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0499168   -0.0585675   -0.0412660
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                -0.0432173   -0.0548554   -0.0315792
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0661178   -0.0977105   -0.0345251
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0788656   -0.1065723   -0.0511589
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0819905   -0.1026624   -0.0613186
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0317400   -0.0851683    0.0216883
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   NA                -0.0219445   -0.0609184    0.0170294
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  NA                -0.0878692   -0.1337462   -0.0419923
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.1423696   -0.1932576   -0.0914816
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.1166187   -0.1466245   -0.0866129
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.1215024   -0.1755174   -0.0674874
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0886894   -0.1081829   -0.0691960
6-12 months    ki1114097-CMIN          PERU                           0%                   NA                -0.0971782   -0.1168075   -0.0775489
6-12 months    ki1114097-CMIN          PERU                           >5%                  NA                -0.0982307   -0.1138624   -0.0825991
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             NA                -0.0269950   -0.0597257    0.0057357
6-12 months    ki1114097-CONTENT       PERU                           0%                   NA                -0.0252994   -0.0416078   -0.0089909
6-12 months    ki1114097-CONTENT       PERU                           >5%                  NA                -0.0144357   -0.0375077    0.0086363
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0130650   -0.0207080   -0.0054221
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0152079    0.0074445    0.0229713
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                 0.0151928    0.0056959    0.0246898
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0086759   -0.0150579   -0.0022939
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0007199   -0.0080869    0.0066472
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                 0.0013594   -0.0048853    0.0076041
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                -0.0267298   -0.0362403   -0.0172193
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0313122   -0.0400881   -0.0225364
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                -0.0304684   -0.0380457   -0.0228910
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0079241   -0.0186257    0.0027774
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0182581   -0.0328119   -0.0037042
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                -0.0047370   -0.0156920    0.0062180
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             NA                -0.0170570   -0.0340986   -0.0000154
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   NA                -0.0161933   -0.0249481   -0.0074385
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  NA                 0.0102956   -0.0134104    0.0340017
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0358408   -0.0483982   -0.0232834
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0488402   -0.0595343   -0.0381460
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0477622   -0.0595789   -0.0359455
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0420645   -0.0481196   -0.0360093
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0495432   -0.0559457   -0.0431407
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                -0.0381798   -0.0443637   -0.0319960
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0110934   -0.0171783   -0.0050085
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                -0.0032661   -0.0102853    0.0037531
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                -0.0084254   -0.0141660   -0.0026849
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0092088    0.0038463    0.0145714
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0013425   -0.0031393    0.0058243
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                 0.0046517   -0.0000168    0.0093202
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0393142   -0.0556845   -0.0229440
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0317847   -0.0459094   -0.0176600
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                -0.0262332   -0.0391694   -0.0132969
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                -0.0407391   -0.0695022   -0.0119760
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0288761   -0.0508446   -0.0069076
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                -0.0284261   -0.0506221   -0.0062301
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0297686   -0.0395048   -0.0200324
12-24 months   ki1114097-CMIN          PERU                           0%                   NA                -0.0338852   -0.0454956   -0.0222749
12-24 months   ki1114097-CMIN          PERU                           >5%                  NA                -0.0285385   -0.0429827   -0.0140943
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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0495156   -0.1109205    0.0118892
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0007940   -0.0591880    0.0576001
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0376388   -0.0725497    0.1478273
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.0930506   -0.1849565   -0.0011446
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0141426   -0.0886001    0.0603148
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0104665   -0.0798582    0.0589253
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0655518    0.0133880    0.1177156
0-3 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0019939   -0.0512991    0.0552869
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]          -0.0524871   -0.1611364    0.0561623
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0225515   -0.2541375    0.2992405
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0396719   -0.0370103    0.1163540
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0160951   -0.0750783    0.1072684
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]           0.1132327   -0.2843534    0.5108188
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]           0.2083415   -0.1088912    0.5255742
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0239027   -0.0911532    0.0433478
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0072981   -0.0680644    0.0534682
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0173093   -0.0260223    0.0606409
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0256518   -0.0691988    0.0178952
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0196600   -0.0547962    0.0154761
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0064092   -0.0464677    0.0336492
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.1010453   -0.2648066    0.0627161
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.1032028   -0.2819564    0.0755508
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          -0.1445526   -0.4002366    0.1111315
0-3 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.3143809   -0.5042729   -0.1244889
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0088098   -0.2109675    0.1933478
0-3 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.1438017   -0.2729444   -0.0146590
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0208258   -0.2541695    0.2125179
0-3 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0569955   -0.2848381    0.1708471
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0072180   -0.0394856    0.0539216
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          -0.0212650   -0.0646840    0.0221539
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.1260224   -0.1800445   -0.0720003
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          -0.1064292   -0.1599203   -0.0529380
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0132992   -0.0776166    0.0510183
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0472073   -0.1138843    0.0194696
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0600378   -0.1110030   -0.0090726
3-6 months     ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0125454   -0.0354748    0.0605657
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0174585   -0.0750630    0.1099799
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]          -0.1308222   -0.2715061    0.0098617
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0064433   -0.0735402    0.0606537
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0569647   -0.0272109    0.1411402
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0275247   -0.2054697    0.1504202
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.1082475   -0.2533748    0.0368798
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0148052   -0.0369668    0.0665773
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]           0.0017602   -0.0446431    0.0481634
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0017929   -0.0380986    0.0416844
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0077900   -0.0314502    0.0470302
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0378029    0.0105665    0.0650393
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0350478    0.0077858    0.0623097
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0108435   -0.0778705    0.0995575
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0104314   -0.0677779    0.0886406
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.1226694   -0.0820279    0.3273666
3-6 months     ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]           0.0828677   -0.1361885    0.3019238
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0430783   -0.0665249    0.1526815
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          -0.0083398   -0.1283672    0.1116876
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0386355   -0.0962237    0.0189527
3-6 months     ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0647478   -0.1154574   -0.0140381
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0490040   -0.1052423    0.0072342
3-6 months     ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0164651   -0.0818937    0.0489634
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          -0.0364322   -0.0556068   -0.0172576
6-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0094881   -0.0088264    0.0278027
6-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          -0.0093507   -0.0400931    0.0213917
6-12 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0103558   -0.0167872    0.0374989
6-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0117575   -0.0340087    0.0104936
6-12 months    ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0071186   -0.0287858    0.0145486
6-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]           0.0451889    0.0147849    0.0755929
6-12 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0070877   -0.0229732    0.0371487
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0339345   -0.0106020    0.0784711
6-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0037450   -0.0699888    0.0774787
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0226364   -0.0101048    0.0553776
6-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0028053   -0.0344026    0.0400131
6-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          -0.0445353   -0.1542401    0.0651695
6-12 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          -0.0315610   -0.1072047    0.0440828
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]           0.0225537    0.0030185    0.0420889
6-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          -0.0163048   -0.0333477    0.0007380
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          -0.0075446   -0.0243936    0.0093044
6-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          -0.0009265   -0.0175202    0.0156672
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]           0.0010339   -0.0142607    0.0163285
6-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]           0.0077333   -0.0094197    0.0248864
6-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          -0.0127478   -0.0546311    0.0291356
6-12 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          -0.0158727   -0.0534861    0.0217406
6-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]           0.0097955   -0.0556851    0.0752760
6-12 months    ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          -0.0561293   -0.1256446    0.0133860
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0257509   -0.0331880    0.0846898
6-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0208672   -0.0529318    0.0946661
6-12 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0084887   -0.0361867    0.0192092
6-12 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          -0.0095413   -0.0344575    0.0153749
6-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT       PERU                           0%                   (0%, 5%]           0.0016956   -0.0348730    0.0382643
6-12 months    ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]           0.0125593   -0.0274860    0.0526045
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]           0.0282730    0.0171951    0.0393508
12-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]           0.0282579    0.0159006    0.0406152
12-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]           0.0079561   -0.0012829    0.0171950
12-24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]           0.0100353    0.0015564    0.0185143
12-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          -0.0045825   -0.0174672    0.0083022
12-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          -0.0037386   -0.0157890    0.0083118
12-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          -0.0103339   -0.0282227    0.0075548
12-24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]           0.0031871   -0.0119619    0.0183362
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                   (0%, 5%]           0.0008637   -0.0182951    0.0200226
12-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                  (0%, 5%]           0.0273526   -0.0018431    0.0565484
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0129994   -0.0292110    0.0032123
12-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0119214   -0.0288948    0.0050520
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          -0.0074787   -0.0160500    0.0010925
12-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]           0.0038846   -0.0044623    0.0122316
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]           0.0078273   -0.0011914    0.0168461
12-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]           0.0026680   -0.0054239    0.0107599
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          -0.0078663   -0.0143983   -0.0013344
12-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          -0.0045571   -0.0112675    0.0021532
12-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]           0.0075295   -0.0140457    0.0291048
12-24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]           0.0130811   -0.0078251    0.0339872
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]           0.0118630   -0.0243047    0.0480308
12-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]           0.0123130   -0.0241676    0.0487936
12-24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          -0.0041167   -0.0192599    0.0110266
12-24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]           0.0012301   -0.0161791    0.0186392
12-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          -0.0185907   -0.0564340    0.0192525
12-24 months   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          -0.0075873   -0.0484635    0.0332889
