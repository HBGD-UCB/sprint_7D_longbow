---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              70   244
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        96   244
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             78   244
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             165   180
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   180
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   180
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              40   201
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       110   201
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             51   201
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              59   175
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        57   175
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             59   175
0-3 months     ki0047075b-MAL-ED       PERU                           0%              67   271
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        89   271
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            115   271
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   229
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        49   229
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        92   229
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   229
0-3 months     ki1000109-ResPak        PAKISTAN                       0%              14    78
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        27    78
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%             37    78
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   566
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            252   566
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       254   634
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            208   634
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             340   720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   720
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            211   720
0-3 months     ki1114097-CMIN          BANGLADESH                     0%              17    43
0-3 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        13    43
0-3 months     ki1114097-CMIN          BANGLADESH                     >5%             13    43
0-3 months     ki1114097-CMIN          BRAZIL                         0%              27    81
0-3 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        33    81
0-3 months     ki1114097-CMIN          BRAZIL                         >5%             21    81
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  0%               4    21
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        10    21
0-3 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%              7    21
0-3 months     ki1114097-CMIN          PERU                           0%              16    93
0-3 months     ki1114097-CMIN          PERU                           (0%, 5%]        37    93
0-3 months     ki1114097-CMIN          PERU                           >5%             40    93
0-3 months     ki1114097-CONTENT       PERU                           0%              16    29
0-3 months     ki1114097-CONTENT       PERU                           (0%, 5%]         6    29
0-3 months     ki1114097-CONTENT       PERU                           >5%              7    29
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        88   231
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             75   231
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              48   229
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   229
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   229
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             180   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   241
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   239
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   239
3-6 months     ki1000109-ResPak        PAKISTAN                       0%              24   156
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        49   156
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%             83   156
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       164   523
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   523
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   574
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       237   574
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            182   574
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   695
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   695
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              60   185
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        46   185
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   185
3-6 months     ki1114097-CMIN          BRAZIL                         0%              30    81
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        29    81
3-6 months     ki1114097-CMIN          BRAZIL                         >5%             22    81
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%              40   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        38   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%             39   117
3-6 months     ki1114097-CMIN          PERU                           0%             110   407
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]       140   407
3-6 months     ki1114097-CMIN          PERU                           >5%            157   407
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              48   228
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       121   228
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   228
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             176   230
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   230
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   230
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   223
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        88   223
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   223
6-9 months     ki1000109-ResPak        PAKISTAN                       0%              18   143
6-9 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        40   143
6-9 months     ki1000109-ResPak        PAKISTAN                       >5%             85   143
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             145   543
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       226   543
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            172   543
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       160   688
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   688
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177
6-9 months     ki1114097-CMIN          BRAZIL                         0%              34    92
6-9 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        33    92
6-9 months     ki1114097-CMIN          BRAZIL                         >5%             25    92
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  0%             134   371
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       116   371
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%            121   371
6-9 months     ki1114097-CMIN          PERU                           0%             117   399
6-9 months     ki1114097-CMIN          PERU                           (0%, 5%]       133   399
6-9 months     ki1114097-CMIN          PERU                           >5%            149   399
6-9 months     ki1114097-CONTENT       PERU                           0%             115   214
6-9 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
6-9 months     ki1114097-CONTENT       PERU                           >5%             56   214
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0%              67   225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        86   225
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     >5%             72   225
9-12 months    ki0047075b-MAL-ED       BRAZIL                         0%             177   194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   194
9-12 months    ki0047075b-MAL-ED       BRAZIL                         >5%              2   194
9-12 months    ki0047075b-MAL-ED       INDIA                          0%              46   226
9-12 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
9-12 months    ki0047075b-MAL-ED       INDIA                          >5%             58   226
9-12 months    ki0047075b-MAL-ED       NEPAL                          0%              76   229
9-12 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   229
9-12 months    ki0047075b-MAL-ED       NEPAL                          >5%             77   229
9-12 months    ki0047075b-MAL-ED       PERU                           0%              58   235
9-12 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]        77   235
9-12 months    ki0047075b-MAL-ED       PERU                           >5%            100   235
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%             179   233
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   233
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   233
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   222
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        85   222
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   222
9-12 months    ki1000109-ResPak        PAKISTAN                       0%              19   137
9-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        39   137
9-12 months    ki1000109-ResPak        PAKISTAN                       >5%             79   137
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             118   482
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   482
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   482
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   564
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       225   564
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            191   564
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             330   674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       155   674
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   674
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160
9-12 months    ki1114097-CMIN          BRAZIL                         0%              32    93
9-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        38    93
9-12 months    ki1114097-CMIN          BRAZIL                         >5%             23    93
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%              48   142
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        40   142
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%             54   142
9-12 months    ki1114097-CMIN          PERU                           0%             103   357
9-12 months    ki1114097-CMIN          PERU                           (0%, 5%]       117   357
9-12 months    ki1114097-CMIN          PERU                           >5%            137   357
9-12 months    ki1114097-CONTENT       PERU                           0%             115   212
9-12 months    ki1114097-CONTENT       PERU                           (0%, 5%]        41   212
9-12 months    ki1114097-CONTENT       PERU                           >5%             56   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
12-15 months   ki0047075b-MAL-ED       BRAZIL                         0%             167   184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   184
12-15 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   184
12-15 months   ki0047075b-MAL-ED       INDIA                          0%              46   226
12-15 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       123   226
12-15 months   ki0047075b-MAL-ED       INDIA                          >5%             57   226
12-15 months   ki0047075b-MAL-ED       NEPAL                          0%              77   230
12-15 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
12-15 months   ki0047075b-MAL-ED       NEPAL                          >5%             77   230
12-15 months   ki0047075b-MAL-ED       PERU                           0%              57   224
12-15 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        69   224
12-15 months   ki0047075b-MAL-ED       PERU                           >5%             98   224
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   228
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   228
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   228
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   226
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   226
12-15 months   ki1000109-ResPak        PAKISTAN                       0%              18    89
12-15 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]        25    89
12-15 months   ki1000109-ResPak        PAKISTAN                       >5%             46    89
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             137   523
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       207   523
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            179   523
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       147   660
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            189   660
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   160
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             70   160
12-15 months   ki1114097-CMIN          BRAZIL                         0%              33    92
12-15 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]        35    92
12-15 months   ki1114097-CMIN          BRAZIL                         >5%             24    92
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              19    57
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]         9    57
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             29    57
12-15 months   ki1114097-CMIN          PERU                           0%              92   302
12-15 months   ki1114097-CMIN          PERU                           (0%, 5%]       103   302
12-15 months   ki1114097-CMIN          PERU                           >5%            107   302
12-15 months   ki1114097-CONTENT       PERU                           0%             106   199
12-15 months   ki1114097-CONTENT       PERU                           (0%, 5%]        39   199
12-15 months   ki1114097-CONTENT       PERU                           >5%             54   199
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        84   212
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             65   212
15-18 months   ki0047075b-MAL-ED       BRAZIL                         0%             159   175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        14   175
15-18 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   175
15-18 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
15-18 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
15-18 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
15-18 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227
15-18 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227
15-18 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   213
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   213
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             92   213
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             171   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   225
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   225
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              92   216
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        83   216
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   216
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             138   509
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       199   509
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            172   509
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   604
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            169   604
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163
15-18 months   ki1114097-CMIN          BRAZIL                         0%              29    87
15-18 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]        36    87
15-18 months   ki1114097-CMIN          BRAZIL                         >5%             22    87
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              19    70
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        20    70
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             31    70
15-18 months   ki1114097-CMIN          PERU                           0%              86   241
15-18 months   ki1114097-CMIN          PERU                           (0%, 5%]        79   241
15-18 months   ki1114097-CMIN          PERU                           >5%             76   241
15-18 months   ki1114097-CONTENT       PERU                           0%              98   189
15-18 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   189
15-18 months   ki1114097-CONTENT       PERU                           >5%             53   189
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0%              63   209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        82   209
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   209
18-21 months   ki0047075b-MAL-ED       BRAZIL                         0%             152   167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        13   167
18-21 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   167
18-21 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
18-21 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
18-21 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
18-21 months   ki0047075b-MAL-ED       NEPAL                          0%              75   227
18-21 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   227
18-21 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   202
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        65   202
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   202
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   232
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   232
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   232
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              84   202
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   202
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             37   202
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             138   521
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       215   521
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            168   521
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   546
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            145   546
18-21 months   ki1114097-CMIN          BANGLADESH                     0%              52   165
18-21 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   165
18-21 months   ki1114097-CMIN          BANGLADESH                     >5%             73   165
18-21 months   ki1114097-CMIN          BRAZIL                         0%              28    84
18-21 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]        34    84
18-21 months   ki1114097-CMIN          BRAZIL                         >5%             22    84
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              27    82
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        26    82
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             29    82
18-21 months   ki1114097-CMIN          PERU                           0%              86   223
18-21 months   ki1114097-CMIN          PERU                           (0%, 5%]        65   223
18-21 months   ki1114097-CMIN          PERU                           >5%             72   223
18-21 months   ki1114097-CONTENT       PERU                           0%              94   183
18-21 months   ki1114097-CONTENT       PERU                           (0%, 5%]        38   183
18-21 months   ki1114097-CONTENT       PERU                           >5%             51   183
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%              64   207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        79   207
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%             64   207
21-24 months   ki0047075b-MAL-ED       BRAZIL                         0%             151   165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        12   165
21-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              2   165
21-24 months   ki0047075b-MAL-ED       INDIA                          0%              48   226
21-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   226
21-24 months   ki0047075b-MAL-ED       INDIA                          >5%             56   226
21-24 months   ki0047075b-MAL-ED       NEPAL                          0%              76   227
21-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   227
21-24 months   ki0047075b-MAL-ED       NEPAL                          >5%             76   227
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   189
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        63   189
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   189
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   234
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   234
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   234
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              85   202
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        79   202
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   202
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             112   445
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       183   445
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            150   445
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   490
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            121   490
21-24 months   ki1114097-CMIN          BANGLADESH                     0%              47   133
21-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        30   133
21-24 months   ki1114097-CMIN          BANGLADESH                     >5%             56   133
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              20    48
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        13    48
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             15    48
21-24 months   ki1114097-CMIN          PERU                           0%              65   165
21-24 months   ki1114097-CMIN          PERU                           (0%, 5%]        55   165
21-24 months   ki1114097-CMIN          PERU                           >5%             45   165
21-24 months   ki1114097-CONTENT       PERU                           0%              23    38
21-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         7    38
21-24 months   ki1114097-CONTENT       PERU                           >5%              8    38


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
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d07596b5-5194-4f13-8696-9d76af5dc2cd/3d6ef4fe-181e-4d07-8765-51f787b11e0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          3.5527569   3.4518115   3.6537024
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          3.6436490   3.4400450   3.8472530
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          3.9249891   3.7829527   4.0670256
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed          3.3366923   3.2306706   3.4427141
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          3.6709746   3.1108541   4.2310952
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          3.5388125   3.4267463   3.6508787
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          2.9054147   2.4199381   3.3908912
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          3.3690987   3.2807859   3.4574115
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          3.5448914   3.4741187   3.6156642
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          3.3061431   3.2265556   3.3857305
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          3.5847024   3.3425693   3.8268354
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          3.9099762   3.5721316   4.2478209
0-3 months     ki1114097-CMIN          PERU                           optimal              observed          3.2500925   3.0166046   3.4835803
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed          3.7499006   3.3995406   4.1002606
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          1.9163256   1.8274010   2.0052502
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          1.9102593   1.7767311   2.0437875
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          1.9519715   1.8525062   2.0514369
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed          1.9678156   1.8528990   2.0827322
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          1.8674408   1.7611813   1.9737003
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.9434347   1.7821645   2.1047049
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          1.9850717   1.7290070   2.2411364
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          1.8168448   1.7139554   1.9197341
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          1.9858003   1.9231728   2.0484279
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          2.0384122   1.9856666   2.0911578
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          1.8302722   1.7176719   1.9428725
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed          1.9029676   1.5051621   2.3007730
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          2.1569724   1.9711015   2.3428432
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          1.9606823   1.8826321   2.0387325
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed          2.1603520   2.0581804   2.2625236
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          1.3080718   1.2405073   1.3756363
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          1.2493028   1.1494084   1.3491973
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          1.3837551   1.3114338   1.4560764
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed          1.3694761   1.2632657   1.4756864
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          1.4125432   1.3369931   1.4880932
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.1615805   1.0455033   1.2776577
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          1.5079459   1.2886909   1.7272008
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          1.3801271   1.2930724   1.4671818
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          1.3041223   1.2631144   1.3451302
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          1.3598414   1.3020027   1.4176801
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          1.3550806   1.2028940   1.5072672
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed          1.3466803   1.1841801   1.5091806
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          1.1966463   1.1010311   1.2922615
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          1.2319310   1.1517261   1.3121358
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed          1.4742644   1.3850250   1.5635038
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          1.0137133   0.9446509   1.0827757
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          0.9758393   0.8974191   1.0542595
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          1.0711494   0.9918326   1.1504663
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          1.1598284   1.0765574   1.2430993
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.9317781   0.8099897   1.0535665
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8923070   0.7145338   1.0700803
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          1.2826490   1.1613777   1.4039203
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          1.0045792   0.9509585   1.0581998
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          1.0227450   0.9809839   1.0645060
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          1.1108426   1.0614327   1.1602524
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          0.8722456   0.7515551   0.9929361
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed          1.0659428   0.9331128   1.1987728
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          1.0062104   0.8773961   1.1350247
9-12 months    ki1114097-CMIN          PERU                           optimal              observed          1.0746624   1.0115371   1.1377877
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed          1.0935829   1.0122174   1.1749484
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.9823148   0.9062161   1.0584136
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          1.0089202   0.9373536   1.0804868
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.9378970   0.8700438   1.0057502
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.8752976   0.7876269   0.9629683
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.9307093   0.7619898   1.0994288
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9321585   0.8120116   1.0523055
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed          1.4350874   1.1236016   1.7465732
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.7380547   0.6610363   0.8150730
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.9408825   0.8981909   0.9835741
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.9984963   0.9494878   1.0475049
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.8349303   0.7523195   0.9175411
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed          1.0701498   0.8771561   1.2631436
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.7227474   0.4885857   0.9569091
12-15 months   ki1114097-CMIN          PERU                           optimal              observed          0.9440493   0.8678621   1.0202365
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed          0.8504394   0.7732406   0.9276381
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.8255385   0.7642298   0.8868471
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.9297442   0.8579502   1.0015383
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.8903625   0.8250505   0.9556745
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.8962658   0.8351590   0.9573726
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.9237277   0.8763129   0.9711426
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8130947   0.6608056   0.9653839
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.7489674   0.6757958   0.8221390
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.8363204   0.7960046   0.8766362
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.9526433   0.9009736   1.0043129
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.7965695   0.7196502   0.8734888
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          0.9090910   0.6838181   1.1343638
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.9981504   0.7510055   1.2452953
15-18 months   ki1114097-CMIN          PERU                           optimal              observed          0.8591799   0.7605061   0.9578537
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed          1.0257101   0.9302648   1.1211553
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.8727625   0.8171620   0.9283631
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.8449799   0.7722673   0.9176925
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.8666580   0.7985575   0.9347585
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.8251757   0.7569580   0.8933935
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.7699130   0.5905184   0.9493076
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8046812   0.7054702   0.9038922
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.7468041   0.6892157   0.8043925
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.8353800   0.7908467   0.8799133
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.7917701   0.7481754   0.8353648
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.8151887   0.7205627   0.9098147
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed          0.9341753   0.7361221   1.1322285
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.7944007   0.6030958   0.9857057
18-21 months   ki1114097-CMIN          PERU                           optimal              observed          0.7667268   0.6825965   0.8508571
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed          0.9122034   0.8084768   1.0159300
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.8801818   0.8122929   0.9480706
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.9160452   0.8633515   0.9687389
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.8843297   0.8173390   0.9513205
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.8318652   0.7531628   0.9105676
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.8003731   0.7046056   0.8961407
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8314192   0.7332941   0.9295443
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.7205045   0.6595056   0.7815035
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.8169387   0.7706690   0.8632084
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.8289861   0.7812275   0.8767447
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.8181034   0.7132364   0.9229704
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.9810599   0.7663484   1.1957713
21-24 months   ki1114097-CMIN          PERU                           optimal              observed          0.8370806   0.7418988   0.9322624
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed          0.9774226   0.8212275   1.1336177


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED       INDIA                          observed             observed          3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED       PERU                           observed             observed          3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-ResPak        PAKISTAN                       observed             observed          3.0738623   2.7876913   3.3600332
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          3.3028656   3.2646714   3.3410598
0-3 months     ki1114097-CMIN          BANGLADESH                     observed             observed          3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN          BRAZIL                         observed             observed          3.5146220   3.3089330   3.7203110
0-3 months     ki1114097-CMIN          PERU                           observed             observed          3.3155510   3.1827969   3.4483051
0-3 months     ki1114097-CONTENT       PERU                           observed             observed          3.6499227   3.4691077   3.8307378
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED       INDIA                          observed             observed          1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED       PERU                           observed             observed          2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-ResPak        PAKISTAN                       observed             observed          2.0694234   1.9275918   2.2112551
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN          BANGLADESH                     observed             observed          1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN          BRAZIL                         observed             observed          1.6962691   1.5066453   1.8858929
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          2.0729700   1.9687527   2.1771872
3-6 months     ki1114097-CMIN          PERU                           observed             observed          1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT       PERU                           observed             observed          2.0841841   2.0362519   2.1321163
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          1.2453156   1.2052458   1.2853854
6-9 months     ki0047075b-MAL-ED       INDIA                          observed             observed          1.2596030   1.2102580   1.3089479
6-9 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          1.3554975   1.3113878   1.3996072
6-9 months     ki0047075b-MAL-ED       PERU                           observed             observed          1.3251326   1.2713985   1.3788667
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          1.3797718   1.3147564   1.4447871
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          1.1603951   1.0943804   1.2264098
6-9 months     ki1000109-ResPak        PAKISTAN                       observed             observed          1.4413792   1.3356955   1.5470629
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          1.2820793   1.2562719   1.3078866
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          1.3282695   1.2988292   1.3577098
6-9 months     ki1114097-CMIN          BANGLADESH                     observed             observed          1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CMIN          BRAZIL                         observed             observed          1.3742042   1.2380380   1.5103704
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          1.2502564   1.1929870   1.3075258
6-9 months     ki1114097-CMIN          PERU                           observed             observed          1.1848111   1.1389692   1.2306530
6-9 months     ki1114097-CONTENT       PERU                           observed             observed          1.3974236   1.3502187   1.4446285
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.9919993   0.9533873   1.0306114
9-12 months    ki0047075b-MAL-ED       INDIA                          observed             observed          0.9817577   0.9441413   1.0193741
9-12 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          1.0893581   1.0490377   1.1296785
9-12 months    ki0047075b-MAL-ED       PERU                           observed             observed          1.0962733   1.0456785   1.1468681
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          1.0069747   0.9413944   1.0725551
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8425886   0.7721546   0.9130226
9-12 months    ki1000109-ResPak        PAKISTAN                       observed             observed          1.1800151   1.0527996   1.3072306
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          1.0506075   1.0236381   1.0775770
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          1.1234745   1.0972274   1.1497215
9-12 months    ki1114097-CMIN          BANGLADESH                     observed             observed          0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CMIN          BRAZIL                         observed             observed          1.1163499   0.9936658   1.2390340
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.9123429   0.8249763   0.9997095
9-12 months    ki1114097-CMIN          PERU                           observed             observed          1.0516761   1.0117457   1.0916066
9-12 months    ki1114097-CONTENT       PERU                           observed             observed          1.2048768   1.1650186   1.2447350
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.9140823   0.8737353   0.9544292
12-15 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.9102897   0.8710907   0.9494887
12-15 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.9495537   0.9102511   0.9888563
12-15 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.8909703   0.8456733   0.9362673
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.9224999   0.8649641   0.9800356
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8563558   0.7920248   0.9206869
12-15 months   ki1000109-ResPak        PAKISTAN                       observed             observed          1.2807912   1.1150585   1.4465239
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.9615196   0.9352043   0.9878349
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.9711395   0.9465805   0.9956985
12-15 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.8739530   0.8186981   0.9292079
12-15 months   ki1114097-CMIN          BRAZIL                         observed             observed          1.1221373   0.9960321   1.2482426
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.7973058   0.6396821   0.9549295
12-15 months   ki1114097-CMIN          PERU                           observed             observed          0.8887870   0.8428613   0.9347127
12-15 months   ki1114097-CONTENT       PERU                           observed             observed          0.9291443   0.8867697   0.9715190
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.8242868   0.7873540   0.8612196
15-18 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.8444361   0.8079961   0.8808760
15-18 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.8430013   0.8017536   0.8842490
15-18 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.8550693   0.8130812   0.8970574
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.8881365   0.8355015   0.9407716
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.6948642   0.6347066   0.7550218
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.8557112   0.8313695   0.8800529
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.9177168   0.8947657   0.9406678
15-18 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.7480083   0.6959380   0.8000786
15-18 months   ki1114097-CMIN          BRAZIL                         observed             observed          0.8187239   0.7182288   0.9192190
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          1.1064627   0.9641958   1.2487296
15-18 months   ki1114097-CMIN          PERU                           observed             observed          0.8633807   0.8175878   0.9091735
15-18 months   ki1114097-CONTENT       PERU                           observed             observed          0.9860231   0.9406097   1.0314365
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.8135860   0.7790999   0.8480721
18-21 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.8180755   0.7799494   0.8562017
18-21 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.8431892   0.7987674   0.8876110
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.7768974   0.7213823   0.8324125
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.7390108   0.6741210   0.8039007
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.8438546   0.8193068   0.8684023
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.7977755   0.7744353   0.8211158
18-21 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.8028550   0.7540631   0.8516469
18-21 months   ki1114097-CMIN          BRAZIL                         observed             observed          0.9183397   0.8059477   1.0307316
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.6663445   0.5600901   0.7725989
18-21 months   ki1114097-CMIN          PERU                           observed             observed          0.8040652   0.7607014   0.8474291
18-21 months   ki1114097-CONTENT       PERU                           observed             observed          0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.8293116   0.7901578   0.8684654
21-24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.8962449   0.8607890   0.9317009
21-24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.8373992   0.7974567   0.8773417
21-24 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.7658062   0.7182829   0.8133295
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.8815730   0.8278556   0.9352905
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.7843948   0.7264131   0.8423765
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.7653271   0.7288134   0.8018409
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.7832079   0.7566384   0.8097774
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.8129385   0.7877525   0.8381245
21-24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.7554929   0.6980149   0.8129708
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.7223024   0.5874267   0.8571781
21-24 months   ki1114097-CMIN          PERU                           observed             observed          0.7465493   0.6928728   0.8002259
21-24 months   ki1114097-CONTENT       PERU                           observed             observed          0.9350807   0.8543561   1.0158053


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0106878   -0.0765947    0.0979703
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0671978   -0.2426500    0.1082544
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.1044956   -0.2163804    0.0073891
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0208318   -0.1022943    0.0606307
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.2257887   -0.7743269    0.3227494
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0571221   -0.1490096    0.0347655
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.1684476   -0.2160817    0.5529768
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0561732   -0.1285553    0.0162088
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0622208   -0.1193026   -0.0051391
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0032775   -0.0703236    0.0637687
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0907651   -0.3073113    0.1257811
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.3953543   -0.6545637   -0.1361449
0-3 months     ki1114097-CMIN          PERU                           optimal              observed           0.0654586   -0.1637502    0.2946673
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0999779   -0.4392075    0.2392517
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0117206   -0.0618777    0.0853189
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0265329   -0.1395120    0.0864463
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0161279   -0.0644358    0.0966917
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed           0.0505057   -0.0415787    0.1425901
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.1137533    0.0368937    0.1906129
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1133445   -0.2579453    0.0312563
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0843517   -0.1596922    0.3283957
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0158467   -0.0720304    0.1037238
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0203549   -0.0716778    0.0309680
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0326149   -0.0703515    0.0051217
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed           0.1175755    0.0227961    0.2123549
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.2066985   -0.5333265    0.1199295
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0840024   -0.2355708    0.0675660
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0666352   -0.1317060   -0.0015645
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0761679   -0.1689739    0.0166381
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0627562   -0.1195624   -0.0059501
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0103001   -0.0806749    0.1012751
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0282576   -0.0897353    0.0332200
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0443435   -0.1371008    0.0484139
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0327714   -0.0682035    0.0026607
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0011853   -0.1032569    0.1008862
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0665667   -0.2510557    0.1179223
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1245320   -0.1970599   -0.0520042
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0220431   -0.0557092    0.0116231
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0315719   -0.0798134    0.0166696
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0892067   -0.2179517    0.0395384
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed           0.0275239   -0.1324630    0.1875107
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0536101   -0.0250881    0.1323083
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0471199   -0.1091558    0.0149161
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0768408   -0.1554793    0.0017977
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0217140   -0.0797467    0.0363187
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0059184   -0.0600311    0.0718679
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0182087   -0.0439137    0.0803310
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0635551   -0.1240651   -0.0030450
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0751966   -0.0186313    0.1690245
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0497184   -0.2003778    0.1009409
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1026339   -0.2533805    0.0481127
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0840017    0.0356721    0.1323313
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0278626   -0.0075472    0.0632723
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0126319   -0.0307050    0.0559687
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0905016   -0.0166298    0.1976329
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.0504071   -0.0858452    0.1866594
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0938675   -0.2047923    0.0170573
9-12 months    ki1114097-CMIN          PERU                           optimal              observed          -0.0229863   -0.0775853    0.0316128
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed           0.1112939    0.0382480    0.1843398
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0682326   -0.1320739   -0.0043912
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0986305   -0.1622871   -0.0349738
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0116567   -0.0452062    0.0685196
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0156727   -0.0560531    0.0873985
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0082094   -0.1804604    0.1640415
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0758027   -0.1630231    0.0114177
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1542961   -0.4531358    0.1445435
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0138924   -0.0617121    0.0339273
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0206371   -0.0158335    0.0571078
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0273569   -0.0673924    0.0126786
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0390227   -0.0343032    0.1123486
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed           0.0519875   -0.1230469    0.2270219
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0745584   -0.1183300    0.2674469
12-15 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0552623   -0.1220522    0.0115275
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0787050    0.0161828    0.1412271
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0012517   -0.0513622    0.0488589
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0853082   -0.1458172   -0.0247991
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0473612   -0.1038942    0.0091718
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0411965   -0.0887704    0.0063775
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0355912   -0.1053804    0.0341980
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1182305   -0.2532585    0.0167974
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0238045   -0.0413240    0.0889330
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0193908   -0.0128204    0.0516020
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0349265   -0.0811191    0.0112661
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0485612   -0.1115067    0.0143844
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0903670   -0.2839432    0.1032091
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.1083123   -0.0822309    0.2988554
15-18 months   ki1114097-CMIN          PERU                           optimal              observed           0.0042007   -0.0697893    0.0781908
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0396869   -0.1266707    0.0472969
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0591765   -0.1088394   -0.0095136
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0337302   -0.0249121    0.0923724
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0485825   -0.1035247    0.0063597
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0180135   -0.0432319    0.0792589
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0069844   -0.1736779    0.1876467
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0656704   -0.1433408    0.0120000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0176573   -0.0632045    0.0278899
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0084745   -0.0290635    0.0460125
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0060054   -0.0289350    0.0409459
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0123337   -0.0857673    0.0611000
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0158356   -0.1764639    0.1447927
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.1280562   -0.2920371    0.0359247
18-21 months   ki1114097-CMIN          PERU                           optimal              observed           0.0373385   -0.0260586    0.1007356
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0024304   -0.0885558    0.0934166
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0508702   -0.1094720    0.0077317
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0198003   -0.0532871    0.0136865
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0469305   -0.1035547    0.0096936
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0660590   -0.1281929   -0.0039250
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0811999   -0.0068500    0.1692498
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0470244   -0.1223132    0.0282643
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0448226   -0.0051079    0.0947530
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0337308   -0.0730167    0.0055551
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0160476   -0.0570535    0.0249583
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0626105   -0.1446880    0.0194669
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.2587575   -0.4507808   -0.0667341
21-24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0905312   -0.1686365   -0.0124260
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0423420   -0.1931482    0.1084643
