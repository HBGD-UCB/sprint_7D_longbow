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

**Outcome Variable:** y_rate_haz

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
![](/tmp/18937c94-9491-4147-addb-eaff72de9f76/8ad59a16-780c-455e-86ca-33ad3543c9a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0258703   -0.0724361    0.0206955
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0139308   -0.1107362    0.0828747
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0435763   -0.0106485    0.0978011
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1632679   -0.2195600   -0.1069759
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1602806   -0.3945665    0.0740053
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0182657   -0.0766854    0.0401539
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0788048   -0.3050088    0.1473992
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0532034   -0.0992794   -0.0071273
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0135567   -0.0451959    0.0180824
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.1320059   -0.1665762   -0.0974355
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed           0.1160991   -0.0130157    0.2452140
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0016429   -0.1232221    0.1199362
0-3 months     ki1114097-CMIN          PERU                           optimal              observed          -0.1583928   -0.2534891   -0.0632965
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0920776   -0.2027632    0.0186080
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0266891   -0.0651313    0.0117531
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0929513   -0.1430332   -0.0428695
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0136390   -0.0273389    0.0546169
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed           0.0349981   -0.0235061    0.0935023
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0091748   -0.0357094    0.0540590
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0245896   -0.1024152    0.0532360
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0204838   -0.0967105    0.1376782
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0879786   -0.1313532   -0.0446041
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0364208   -0.0666788   -0.0061628
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0471083    0.0220028    0.0722138
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0763950   -0.1306300   -0.0221600
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.1727690   -0.3186079   -0.0269301
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0349292   -0.0575292    0.1273877
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0195651   -0.0561503    0.0170200
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed           0.0254889   -0.0227963    0.0737741
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0408886   -0.0702346   -0.0115426
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0713105   -0.1117668   -0.0308543
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0320911   -0.0591854   -0.0049968
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed           0.0013146   -0.0464071    0.0490362
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0028450   -0.0359974    0.0303074
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1149767   -0.1601202   -0.0698331
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0267526   -0.0695934    0.1230986
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0151076   -0.0546201    0.0244048
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0848766   -0.1042477   -0.0655054
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0148098   -0.0397622    0.0101426
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0065573   -0.0717993    0.0586847
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0431580   -0.1201881    0.0338720
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0801507   -0.1192139   -0.0410874
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0880564   -0.1220603   -0.0540525
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed           0.0134459   -0.0259473    0.0528391
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0866566   -0.1145324   -0.0587807
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0623641   -0.0947856   -0.0299427
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0482306   -0.0771464   -0.0193149
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0152159   -0.0501551    0.0197232
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.1214471   -0.1717777   -0.0711165
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1380362   -0.1926489   -0.0834235
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0287152   -0.0420834    0.0995138
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0471914   -0.0720258   -0.0223570
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0739522   -0.0921658   -0.0557387
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0149603   -0.0347674    0.0048469
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.1180826   -0.1762106   -0.0599547
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0922984   -0.1567605   -0.0278364
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0852937   -0.1378832   -0.0327042
9-12 months    ki1114097-CMIN          PERU                           optimal              observed          -0.0779845   -0.1073077   -0.0486612
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0581811   -0.0912106   -0.0251516
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0294514   -0.0586174   -0.0002853
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0168042   -0.0482721    0.0146637
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0525457   -0.0823402   -0.0227512
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.1019264   -0.1295277   -0.0743250
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0626206   -0.1284892    0.0032480
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0755544   -0.1209785   -0.0301304
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed           0.1176700   -0.0140503    0.2493904
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.1513752   -0.1747171   -0.1280334
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0342201   -0.0513225   -0.0171177
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0307452   -0.0491148   -0.0123756
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0957444   -0.1280991   -0.0633898
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0388292   -0.0928721    0.0152137
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.2583861   -0.4372776   -0.0794947
12-15 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0650434   -0.0964755   -0.0336112
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.1037349   -0.1276701   -0.0797996
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0533210   -0.0766864   -0.0299556
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0495560   -0.0713034   -0.0278086
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0338965   -0.0566200   -0.0111731
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0367611   -0.0628453   -0.0106769
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0302571   -0.0534070   -0.0071071
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0419182   -0.0977065    0.0138702
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0492554   -0.0799372   -0.0185735
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0322503   -0.0466628   -0.0178377
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0148207   -0.0307887    0.0011472
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0434243   -0.0717635   -0.0150850
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0530300   -0.1239901    0.0179300
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0026863   -0.0878160    0.0931886
15-18 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0325220   -0.0654229    0.0003788
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0092133   -0.0256994    0.0441259
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0042384   -0.0144051    0.0228819
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0183627   -0.0043280    0.0410534
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0328727   -0.0541323   -0.0116130
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0039785   -0.0254168    0.0333739
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0056585   -0.0967242    0.1080412
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0161805   -0.0466686    0.0143076
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0176577   -0.0362353    0.0009200
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0020504   -0.0165383    0.0124375
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0219597   -0.0374536   -0.0064658
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0003908   -0.0350416    0.0358233
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed           0.0255370   -0.0484892    0.0995633
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0364857   -0.0967492    0.0237777
18-21 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0492598   -0.0748732   -0.0236465
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0117350   -0.0420677    0.0185976
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0653588    0.0444807    0.0862368
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0685298    0.0482133    0.0888464
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0304687    0.0081088    0.0528285
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0712266    0.0490870    0.0933661
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0122614   -0.0443550    0.0198322
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0256696   -0.0075757    0.0589150
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0376321    0.0184210    0.0568432
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0530032    0.0367497    0.0692567
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0632240    0.0491807    0.0772673
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0328066   -0.0007169    0.0663300
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0724518    0.0032680    0.1416355
21-24 months   ki1114097-CMIN          PERU                           optimal              observed           0.0460742    0.0171543    0.0749940
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0469950   -0.0065538    0.1005439


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED       NEPAL                          observed             observed           0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED       PERU                           observed             observed          -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-ResPak        PAKISTAN                       observed             observed          -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1114097-CMIN          BANGLADESH                     observed             observed           0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN          BRAZIL                         observed             observed          -0.0853247   -0.1864247    0.0157752
0-3 months     ki1114097-CMIN          PERU                           observed             observed          -0.1173363   -0.1825933   -0.0520792
0-3 months     ki1114097-CONTENT       PERU                           observed             observed           0.0033142   -0.0990835    0.1057118
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED       PERU                           observed             observed           0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-ResPak        PAKISTAN                       observed             observed           0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN          BRAZIL                         observed             observed          -0.1431730   -0.2334590   -0.0528870
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed           0.0319654   -0.0174743    0.0814052
3-6 months     ki1114097-CMIN          PERU                           observed             observed          -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT       PERU                           observed             observed           0.0127563   -0.0097402    0.0352528
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0712828   -0.0886744   -0.0538911
6-9 months     ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0647863   -0.0866552   -0.0429173
6-9 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0353011   -0.0545813   -0.0160209
6-9 months     ki0047075b-MAL-ED       PERU                           observed             observed          -0.0311268   -0.0549974   -0.0072562
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0166055   -0.0451785    0.0119674
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.1059410   -0.1347850   -0.0770969
6-9 months     ki1000109-ResPak        PAKISTAN                       observed             observed           0.0145045   -0.0324594    0.0614683
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0616693   -0.0727520   -0.0505866
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0518380   -0.0789102   -0.0247658
6-9 months     ki1114097-CMIN          BRAZIL                         observed             observed          -0.0265239   -0.0841152    0.0310675
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0826510   -0.1077162   -0.0575858
6-9 months     ki1114097-CMIN          PERU                           observed             observed          -0.1095396   -0.1295020   -0.0895773
6-9 months     ki1114097-CONTENT       PERU                           observed             observed          -0.0242292   -0.0452610   -0.0031973
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0862885   -0.1024243   -0.0701527
9-12 months    ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0913429   -0.1069691   -0.0757166
9-12 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0622983   -0.0789970   -0.0455996
9-12 months    ki0047075b-MAL-ED       PERU                           observed             observed          -0.0427167   -0.0640466   -0.0213867
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0881410   -0.1153440   -0.0609380
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.1427009   -0.1720181   -0.1133837
9-12 months    ki1000109-ResPak        PAKISTAN                       observed             observed          -0.0149374   -0.0689376    0.0390628
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0627163   -0.0736829   -0.0517498
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0900457   -0.1145732   -0.0655181
9-12 months    ki1114097-CMIN          BRAZIL                         observed             observed          -0.0485063   -0.0988649    0.0018522
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.1334058   -0.1706179   -0.0961937
9-12 months    ki1114097-CMIN          PERU                           observed             observed          -0.0725684   -0.0892349   -0.0559019
9-12 months    ki1114097-CONTENT       PERU                           observed             observed          -0.0224698   -0.0391090   -0.0058306
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0556963   -0.0712392   -0.0401535
12-15 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0566526   -0.0719021   -0.0414031
12-15 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0581345   -0.0735623   -0.0427067
12-15 months   ki0047075b-MAL-ED       PERU                           observed             observed          -0.0655968   -0.0831035   -0.0480901
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0580696   -0.0809154   -0.0352238
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000109-ResPak        PAKISTAN                       observed             observed           0.0785776    0.0109057    0.1462494
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0402904   -0.0504367   -0.0301441
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0608799   -0.0824031   -0.0393566
12-15 months   ki1114097-CMIN          BRAZIL                         observed             observed           0.0110746   -0.0372997    0.0594488
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.1131612   -0.1751543   -0.0511681
12-15 months   ki1114097-CMIN          PERU                           observed             observed          -0.0762994   -0.0946024   -0.0579964
12-15 months   ki1114097-CONTENT       PERU                           observed             observed          -0.0734290   -0.0899048   -0.0569533
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0457746   -0.0592624   -0.0322868
15-18 months   ki0047075b-MAL-ED       INDIA                          observed             observed          -0.0380161   -0.0509048   -0.0251274
15-18 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0541588   -0.0691409   -0.0391768
15-18 months   ki0047075b-MAL-ED       PERU                           observed             observed          -0.0353568   -0.0507063   -0.0200073
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0283795   -0.0473583   -0.0094006
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0826991   -0.1047133   -0.0606848
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0376602   -0.0464843   -0.0288361
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0627334   -0.0821141   -0.0433527
15-18 months   ki1114097-CMIN          BRAZIL                         observed             observed          -0.0615712   -0.0995891   -0.0235534
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed           0.0436937   -0.0097641    0.0971515
15-18 months   ki1114097-CMIN          PERU                           observed             observed          -0.0411748   -0.0579165   -0.0244331
15-18 months   ki1114097-CONTENT       PERU                           observed             observed          -0.0091366   -0.0260209    0.0077477
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          -0.0155009   -0.0271590   -0.0038429
18-21 months   ki0047075b-MAL-ED       INDIA                          observed             observed           0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          -0.0281678   -0.0411993   -0.0151363
18-21 months   ki0047075b-MAL-ED       PERU                           observed             observed          -0.0074717   -0.0226412    0.0076978
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          -0.0339933   -0.0531454   -0.0148412
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0301055   -0.0520057   -0.0082054
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          -0.0092550   -0.0176076   -0.0009024
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1114097-CMIN          BANGLADESH                     observed             observed          -0.0064943   -0.0234244    0.0104357
18-21 months   ki1114097-CMIN          BRAZIL                         observed             observed           0.0040462   -0.0344839    0.0425763
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0752470   -0.1116527   -0.0388414
18-21 months   ki1114097-CMIN          PERU                           observed             observed          -0.0280282   -0.0430730   -0.0129835
18-21 months   ki1114097-CONTENT       PERU                           observed             observed          -0.0059547   -0.0211395    0.0092302
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed           0.0439584    0.0315403    0.0563764
21-24 months   ki0047075b-MAL-ED       INDIA                          observed             observed           0.0513228    0.0398968    0.0627488
21-24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed           0.0221387    0.0093850    0.0348923
21-24 months   ki0047075b-MAL-ED       PERU                           observed             observed           0.0598890    0.0447554    0.0750227
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed           0.0567237    0.0397874    0.0736601
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0288040    0.0096671    0.0479410
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed           0.0554106    0.0440664    0.0667548
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed           0.0538265    0.0451921    0.0624609
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed           0.0629449    0.0547458    0.0711440
21-24 months   ki1114097-CMIN          BANGLADESH                     observed             observed           0.0156162   -0.0032678    0.0345001
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          -0.0067460   -0.0499475    0.0364554
21-24 months   ki1114097-CMIN          PERU                           observed             observed           0.0079382   -0.0102411    0.0261175
21-24 months   ki1114097-CONTENT       PERU                           observed             observed           0.0213805   -0.0073799    0.0501409


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0080360   -0.0483254    0.0322535
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0065490   -0.0909331    0.0778352
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0310439   -0.0170224    0.0791102
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed           0.0051594   -0.0370428    0.0473616
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0584021   -0.1694116    0.2862158
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0279009   -0.0732733    0.0174714
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.1146910   -0.2752198    0.0458377
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0659131   -0.1037257   -0.0281006
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0277576   -0.0548165   -0.0006986
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0099238   -0.0194987    0.0393463
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0642283   -0.1768335    0.0483769
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0836818   -0.1952043    0.0278407
0-3 months     ki1114097-CMIN          PERU                           optimal              observed           0.0410566   -0.0502764    0.1323895
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed           0.0953918   -0.0108212    0.2016047
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0041680   -0.0299613    0.0382973
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0528262    0.0079233    0.0977292
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0350932   -0.0706747    0.0004884
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0076178   -0.0560293    0.0407937
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0092276   -0.0310494    0.0125943
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0459552   -0.1160206    0.0241101
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0182953   -0.0881994    0.1247901
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0370779   -0.0004347    0.0745906
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0091780   -0.0152580    0.0336140
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0203343   -0.0390980   -0.0015706
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0678143    0.0224934    0.1131353
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed           0.0295960   -0.0916409    0.1508329
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0029638   -0.0757701    0.0698424
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0380622   -0.0684774   -0.0076469
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0127326   -0.0561930    0.0307277
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0303942   -0.0551756   -0.0056128
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0065243   -0.0286273    0.0416759
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0032100   -0.0283150    0.0218950
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0324414   -0.0742435    0.0093607
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0137605   -0.0291905    0.0016694
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0090357   -0.0310878    0.0491593
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0122481   -0.0979682    0.0734720
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0444472   -0.0775244   -0.0113699
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0232073    0.0077957    0.0386188
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0165540   -0.0373182    0.0042103
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0452807   -0.1005479    0.0099864
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed           0.0166341   -0.0557356    0.0890039
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0025003   -0.0360782    0.0310775
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0214832   -0.0480126    0.0050461
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0376750   -0.0723755   -0.0029746
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0003681   -0.0231537    0.0238899
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0289787   -0.0562518   -0.0017056
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0140677   -0.0377305    0.0095952
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0275007   -0.0530239   -0.0019776
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0333061   -0.0082754    0.0748875
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0046647   -0.0531500    0.0438206
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0436527   -0.1245168    0.0372114
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0047166   -0.0166579    0.0260910
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0112359   -0.0033825    0.0258543
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0193392   -0.0368687   -0.0018097
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0280370   -0.0195888    0.0756627
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.0437921   -0.0159250    0.1035092
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0481121   -0.0939966   -0.0022277
9-12 months    ki1114097-CMIN          PERU                           optimal              observed           0.0054161   -0.0181917    0.0290239
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed           0.0357113    0.0071301    0.0642926
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0262450   -0.0502743   -0.0022156
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0398484   -0.0676394   -0.0120574
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0055888   -0.0290856    0.0179081
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0363296    0.0121809    0.0604782
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0045510   -0.0629989    0.0721008
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0061981   -0.0277952    0.0401915
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0390925   -0.1607908    0.0826059
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0254164    0.0041632    0.0466697
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0060703   -0.0202097    0.0080691
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0075861   -0.0228751    0.0077028
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0348646    0.0070102    0.0627189
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed           0.0499038   -0.0110720    0.1108795
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.1452250   -0.0013528    0.2918027
12-15 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0112560   -0.0381829    0.0156708
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0303058    0.0116632    0.0489485
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0075464   -0.0116263    0.0267192
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0115398   -0.0082248    0.0313045
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0202623   -0.0404249   -0.0000997
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0014043   -0.0183804    0.0211891
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0018776   -0.0267027    0.0304579
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0407809   -0.0903685    0.0088066
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0084352   -0.0352437    0.0183732
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0054100   -0.0165372    0.0057173
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0020866   -0.0163339    0.0121607
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0193091   -0.0428864    0.0042681
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0085412   -0.0714511    0.0543687
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0410074   -0.0360579    0.1180727
15-18 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0086528   -0.0342062    0.0169007
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0183499   -0.0499114    0.0132116
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0197393   -0.0363097   -0.0031690
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0125887   -0.0319618    0.0067844
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0047049   -0.0131621    0.0225718
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0114502   -0.0357893    0.0128888
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0396518   -0.1408078    0.0615042
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0139251   -0.0395014    0.0116513
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0207314   -0.0355754   -0.0058873
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0072046   -0.0195624    0.0051531
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0060091   -0.0187858    0.0067676
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0068851   -0.0338985    0.0201282
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0214908   -0.0718296    0.0288480
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0387613   -0.0916036    0.0140811
18-21 months   ki1114097-CMIN          PERU                           optimal              observed           0.0212316    0.0006741    0.0417891
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0057804   -0.0197693    0.0313301
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0214004   -0.0395006   -0.0033002
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0172070   -0.0329999   -0.0014142
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0083300   -0.0268514    0.0101914
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0113375   -0.0304957    0.0078206
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0689851    0.0354334    0.1025368
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0031344   -0.0228526    0.0291214
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0177785    0.0020773    0.0334797
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0008233   -0.0131272    0.0147739
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0002791   -0.0121685    0.0116103
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0171904   -0.0435702    0.0091894
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0791978   -0.1425042   -0.0158914
21-24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0381360   -0.0632387   -0.0130333
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0256145   -0.0776887    0.0264597
