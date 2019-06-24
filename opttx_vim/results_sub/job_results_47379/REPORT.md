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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0%              71   246
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        97   246
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             78   246
0-3 months     ki0047075b-MAL-ED       BRAZIL                         0%             201   218
0-3 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   218
0-3 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   218
0-3 months     ki0047075b-MAL-ED       INDIA                          0%              51   238
0-3 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       127   238
0-3 months     ki0047075b-MAL-ED       INDIA                          >5%             60   238
0-3 months     ki0047075b-MAL-ED       NEPAL                          0%              77   232
0-3 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   232
0-3 months     ki0047075b-MAL-ED       NEPAL                          >5%             79   232
0-3 months     ki0047075b-MAL-ED       PERU                           0%              71   282
0-3 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        93   282
0-3 months     ki0047075b-MAL-ED       PERU                           >5%            118   282
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             203   272
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        59   272
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%             10   272
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              99   237
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        94   237
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   237
0-3 months     ki1000109-ResPak        PAKISTAN                       0%              14    78
0-3 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        27    78
0-3 months     ki1000109-ResPak        PAKISTAN                       >5%             37    78
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0%             137   565
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       177   565
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            251   565
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0%             172   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       258   640
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            210   640
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             341   723
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       169   723
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            213   723
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
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   233
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        89   233
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             76   233
3-6 months     ki0047075b-MAL-ED       BRAZIL                         0%             191   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   208
3-6 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   208
3-6 months     ki0047075b-MAL-ED       INDIA                          0%              49   230
3-6 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       122   230
3-6 months     ki0047075b-MAL-ED       INDIA                          >5%             59   230
3-6 months     ki0047075b-MAL-ED       NEPAL                          0%              78   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        75   233
3-6 months     ki0047075b-MAL-ED       NEPAL                          >5%             80   233
3-6 months     ki0047075b-MAL-ED       PERU                           0%              66   267
3-6 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        86   267
3-6 months     ki0047075b-MAL-ED       PERU                           >5%            115   267
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             180   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        53   241
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   241
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%             101   238
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        93   238
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             44   238
3-6 months     ki1000109-ResPak        PAKISTAN                       0%              24   156
3-6 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        49   156
3-6 months     ki1000109-ResPak        PAKISTAN                       >5%             83   156
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0%             124   522
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       163   522
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            235   522
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0%             155   601
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       246   601
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            200   601
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             332   701
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       164   701
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            205   701
3-6 months     ki1114097-CMIN          BANGLADESH                     0%              61   184
3-6 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        44   184
3-6 months     ki1114097-CMIN          BANGLADESH                     >5%             79   184
3-6 months     ki1114097-CMIN          BRAZIL                         0%              30    81
3-6 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        29    81
3-6 months     ki1114097-CMIN          BRAZIL                         >5%             22    81
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  0%              40   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        38   117
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%             39   117
3-6 months     ki1114097-CMIN          PERU                           0%             110   406
3-6 months     ki1114097-CMIN          PERU                           (0%, 5%]       139   406
3-6 months     ki1114097-CMIN          PERU                           >5%            157   406
3-6 months     ki1114097-CONTENT       PERU                           0%             115   214
3-6 months     ki1114097-CONTENT       PERU                           (0%, 5%]        43   214
3-6 months     ki1114097-CONTENT       PERU                           >5%             56   214
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0%              68   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]        83   224
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     >5%             73   224
6-9 months     ki0047075b-MAL-ED       BRAZIL                         0%             181   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]        15   198
6-9 months     ki0047075b-MAL-ED       BRAZIL                         >5%              2   198
6-9 months     ki0047075b-MAL-ED       INDIA                          0%              49   229
6-9 months     ki0047075b-MAL-ED       INDIA                          (0%, 5%]       121   229
6-9 months     ki0047075b-MAL-ED       INDIA                          >5%             59   229
6-9 months     ki0047075b-MAL-ED       NEPAL                          0%              76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          (0%, 5%]        76   230
6-9 months     ki0047075b-MAL-ED       NEPAL                          >5%             78   230
6-9 months     ki0047075b-MAL-ED       PERU                           0%              61   245
6-9 months     ki0047075b-MAL-ED       PERU                           (0%, 5%]        79   245
6-9 months     ki0047075b-MAL-ED       PERU                           >5%            105   245
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0%             176   230
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   230
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              8   230
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   224
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        89   224
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             39   224
6-9 months     ki1000109-ResPak        PAKISTAN                       0%              18   143
6-9 months     ki1000109-ResPak        PAKISTAN                       (0%, 5%]        40   143
6-9 months     ki1000109-ResPak        PAKISTAN                       >5%             85   143
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0%             120   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       156   498
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     >5%            222   498
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0%             148   576
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       233   576
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     >5%            195   576
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0%             333   694
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       161   694
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     >5%            200   694
6-9 months     ki1114097-CMIN          BANGLADESH                     0%              56   177
6-9 months     ki1114097-CMIN          BANGLADESH                     (0%, 5%]        41   177
6-9 months     ki1114097-CMIN          BANGLADESH                     >5%             80   177
6-9 months     ki1114097-CMIN          BRAZIL                         0%              34    92
6-9 months     ki1114097-CMIN          BRAZIL                         (0%, 5%]        33    92
6-9 months     ki1114097-CMIN          BRAZIL                         >5%             25    92
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  0%             134   371
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]       116   371
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  >5%            121   371
6-9 months     ki1114097-CMIN          PERU                           0%             118   399
6-9 months     ki1114097-CMIN          PERU                           (0%, 5%]       132   399
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
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              96   223
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        86   223
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             41   223
9-12 months    ki1000109-ResPak        PAKISTAN                       0%              19   137
9-12 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]        39   137
9-12 months    ki1000109-ResPak        PAKISTAN                       >5%             79   137
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0%             117   481
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       150   481
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     >5%            214   481
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0%             148   569
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       227   569
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     >5%            194   569
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%             331   684
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       157   684
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%            196   684
9-12 months    ki1114097-CMIN          BANGLADESH                     0%              49   160
9-12 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   160
9-12 months    ki1114097-CMIN          BANGLADESH                     >5%             75   160
9-12 months    ki1114097-CMIN          BRAZIL                         0%              32    93
9-12 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]        38    93
9-12 months    ki1114097-CMIN          BRAZIL                         >5%             23    93
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  0%              48   142
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        40   142
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%             54   142
9-12 months    ki1114097-CMIN          PERU                           0%             104   358
9-12 months    ki1114097-CMIN          PERU                           (0%, 5%]       117   358
9-12 months    ki1114097-CMIN          PERU                           >5%            137   358
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
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             172   227
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        46   227
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   227
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              97   225
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        85   225
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             43   225
12-15 months   ki1000109-ResPak        PAKISTAN                       0%              18    89
12-15 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]        25    89
12-15 months   ki1000109-ResPak        PAKISTAN                       >5%             46    89
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0%             114   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       145   461
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            202   461
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0%             141   537
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       213   537
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            183   537
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             324   666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       148   666
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            194   666
12-15 months   ki1114097-CMIN          BANGLADESH                     0%              54   159
12-15 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        36   159
12-15 months   ki1114097-CMIN          BANGLADESH                     >5%             69   159
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
15-18 months   ki0047075b-MAL-ED       PERU                           0%              54   214
15-18 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        67   214
15-18 months   ki0047075b-MAL-ED       PERU                           >5%             93   214
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             170   224
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        45   224
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   224
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              94   220
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        84   220
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             42   220
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0%             112   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       138   449
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            199   449
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0%             145   533
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       207   533
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            181   533
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             304   605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       131   605
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            170   605
15-18 months   ki1114097-CMIN          BANGLADESH                     0%              59   163
15-18 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]        40   163
15-18 months   ki1114097-CMIN          BANGLADESH                     >5%             64   163
15-18 months   ki1114097-CMIN          BRAZIL                         0%              29    87
15-18 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]        36    87
15-18 months   ki1114097-CMIN          BRAZIL                         >5%             22    87
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  0%              19    69
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]        20    69
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%             30    69
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
18-21 months   ki0047075b-MAL-ED       PERU                           0%              54   201
18-21 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        64   201
18-21 months   ki0047075b-MAL-ED       PERU                           >5%             83   201
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             173   232
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        50   232
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   232
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              88   208
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        82   208
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   208
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       127   422
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            193   422
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0%             144   542
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       218   542
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            180   542
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             289   547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]       112   547
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            146   547
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
21-24 months   ki0047075b-MAL-ED       PERU                           0%              49   188
21-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]        62   188
21-24 months   ki0047075b-MAL-ED       PERU                           >5%             77   188
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%             174   234
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]        51   234
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              9   234
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%              87   206
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        81   206
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%             38   206
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%             102   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]       124   411
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%            185   411
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%             120   470
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]       190   470
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%            160   470
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%             271   493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]        98   493
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%            124   493
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
![](/tmp/762214c6-ea5d-4519-954a-86649b2a329c/575dc7ee-7fdf-485f-ab44-3f6581574773/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.9159436    0.8715631   0.9603242
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          0.8063000    0.7774187   0.8351813
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.9603589    0.9160786   1.0046391
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed          1.0222541    0.9823927   1.0621156
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          1.0498065    0.9013734   1.1982396
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9569002    0.9002657   1.0135348
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          0.7709783    0.6762966   0.8656599
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.8560355    0.8248178   0.8872531
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.9581089    0.9301862   0.9860315
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.9393564    0.9124022   0.9663106
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          0.9308486    0.8082418   1.0534554
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          1.0446086    0.9389550   1.1502622
0-3 months     ki1114097-CMIN          PERU                           optimal              observed          1.0436125    0.9342657   1.1529593
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed          1.0190809    0.9437626   1.0943992
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.4446934    0.4171104   0.4722764
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          0.4417217    0.4112330   0.4722104
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.5468756    0.5082103   0.5855409
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed          0.4985780    0.4659222   0.5312338
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.4862216    0.4562704   0.5161728
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.4531691    0.4104451   0.4958931
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          0.4817220    0.4255945   0.5378495
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.4840228    0.4499191   0.5181265
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.5187140    0.4904013   0.5470266
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.4994562    0.4753331   0.5235792
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          0.4064250    0.3728553   0.4399947
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed          0.5086674    0.4113973   0.6059375
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.4873713    0.4403267   0.5344159
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          0.5733415    0.5324597   0.6142234
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed          0.6278604    0.5816677   0.6740531
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.2513840    0.2249303   0.2778377
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          0.2235507    0.1972700   0.2498315
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.2821716    0.2556870   0.3086562
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed          0.2619728    0.2344137   0.2895319
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.2389721    0.1556399   0.3223042
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.2672633    0.2335931   0.3009336
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          0.2842597    0.2136538   0.3548656
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1944359    0.1689059   0.2199658
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.2467281    0.2170594   0.2763968
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.2601204    0.2423889   0.2778519
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          0.2080511    0.1677619   0.2483403
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed          0.3277372    0.2478275   0.4076469
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.1882034    0.1494866   0.2269201
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          0.3133550    0.2853940   0.3413161
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed          0.3406839    0.3019707   0.3793970
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.1684994    0.1470156   0.1899832
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          0.2092757    0.1814049   0.2371464
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.2008923    0.1782384   0.2235463
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          0.2015910    0.1803229   0.2228591
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.1951297    0.1590600   0.2311994
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1584205    0.1236895   0.1931515
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed          0.0660284    0.0054748   0.1265821
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1779919    0.1562444   0.1997395
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.1935061    0.1752538   0.2117584
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.1982670    0.1801344   0.2163997
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed          0.1526888    0.1177946   0.1875831
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed          0.2310777    0.1790574   0.2830980
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.1775491    0.1255709   0.2295273
9-12 months    ki1114097-CMIN          PERU                           optimal              observed          0.2362251    0.2029526   0.2694975
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed          0.2524705    0.2138915   0.2910494
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.1652037    0.1334351   0.1969723
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.1737349    0.1519417   0.1955281
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.1406231    0.1138115   0.1674348
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.1463736    0.1160720   0.1766752
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.1340340    0.0855330   0.1825349
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1825805    0.1337702   0.2313909
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed          0.0950984    0.0456532   0.1445437
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1371866    0.1137337   0.1606395
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.1985368    0.1749799   0.2220937
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.1728688    0.1533997   0.1923379
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.1762036    0.1424360   0.2099712
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed          0.2705186    0.2010427   0.3399944
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.1895600    0.0989644   0.2801556
12-15 months   ki1114097-CMIN          PERU                           optimal              observed          0.1889638    0.1517623   0.2261652
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed          0.1674661    0.1341352   0.2007969
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.1361647    0.1051248   0.1672046
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.1461009    0.1160635   0.1761383
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.1947160    0.1690334   0.2203986
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.1408321    0.1062499   0.1754143
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.1557268    0.1289708   0.1824828
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1530772    0.1197525   0.1864019
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1801053    0.1484417   0.2117688
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.1456716    0.1237379   0.1676054
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.1591231    0.1367379   0.1815083
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.1547459    0.1145492   0.1949426
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          0.2351316    0.1695658   0.3006974
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.1108088    0.0395169   0.1821008
15-18 months   ki1114097-CMIN          PERU                           optimal              observed          0.1765406    0.1346650   0.2184162
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed          0.1622388    0.1332027   0.1912749
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.1942564    0.1639024   0.2246105
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.1800221    0.1624928   0.1975514
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.1716930    0.1436585   0.1997276
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.2016370    0.1675652   0.2357088
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.2156299    0.1677127   0.2635471
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1525380    0.1073397   0.1977364
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1780698    0.1514154   0.2047242
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.1238659    0.1026684   0.1450634
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.1608965    0.1399009   0.1818921
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.1478645    0.1142886   0.1814404
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed          0.2402028    0.1148788   0.3655268
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.1461072    0.0770551   0.2151594
18-21 months   ki1114097-CMIN          PERU                           optimal              observed          0.1993739    0.1535369   0.2452109
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed          0.1817204    0.1493005   0.2141403
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.1541897    0.1297520   0.1786275
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.1644445    0.1440885   0.1848006
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.1750287    0.1431971   0.2068603
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          0.1948358    0.1597494   0.2299223
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          0.1656307    0.1068767   0.2243846
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1324326    0.0942650   0.1706002
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.1215173    0.0952061   0.1478285
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.1336005    0.1144170   0.1527840
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.1983442    0.1814814   0.2152069
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.1619844    0.1234179   0.2005509
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.0229565   -0.1318177   0.1777306
21-24 months   ki1114097-CMIN          PERU                           optimal              observed          0.2237000    0.1659504   0.2814496
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed          0.2344657    0.1700988   0.2988326


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.9015136   0.8785271   0.9245001
0-3 months     ki0047075b-MAL-ED       INDIA                          observed             observed          0.7894536   0.7682358   0.8106714
0-3 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          0.9779928   0.9520412   1.0039444
0-3 months     ki0047075b-MAL-ED       PERU                           observed             observed          0.9983673   0.9735390   1.0231956
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.9555637   0.9291238   0.9820036
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8974775   0.8681903   0.9267648
0-3 months     ki1000109-ResPak        PAKISTAN                       observed             observed          0.8237882   0.7710347   0.8765418
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.8595174   0.8420576   0.8769772
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.9651437   0.9492044   0.9810829
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.9478196   0.9330069   0.9626323
0-3 months     ki1114097-CMIN          BANGLADESH                     observed             observed          0.8701891   0.8062473   0.9341309
0-3 months     ki1114097-CMIN          BRAZIL                         observed             observed          0.9813592   0.9255087   1.0372098
0-3 months     ki1114097-CMIN          PERU                           observed             observed          0.9660911   0.9156932   1.0164890
0-3 months     ki1114097-CONTENT       PERU                           observed             observed          1.1354140   1.0556382   1.2151899
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.4737462   0.4568245   0.4906678
3-6 months     ki0047075b-MAL-ED       INDIA                          observed             observed          0.4454889   0.4279553   0.4630225
3-6 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          0.5219447   0.5017908   0.5420987
3-6 months     ki0047075b-MAL-ED       PERU                           observed             observed          0.4989394   0.4800495   0.5178292
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.4656786   0.4396487   0.4917084
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.4534398   0.4303925   0.4764871
3-6 months     ki1000109-ResPak        PAKISTAN                       observed             observed          0.4825104   0.4545196   0.5105012
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.4976582   0.4865636   0.5087528
3-6 months     ki1114097-CMIN          BANGLADESH                     observed             observed          0.4485689   0.4253428   0.4717949
3-6 months     ki1114097-CMIN          BRAZIL                         observed             observed          0.4927539   0.4396133   0.5458944
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.4161301   0.3827853   0.4494750
3-6 months     ki1114097-CMIN          PERU                           observed             observed          0.5575518   0.5381357   0.5769678
3-6 months     ki1114097-CONTENT       PERU                           observed             observed          0.5883606   0.5672514   0.6094698
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.2440183   0.2292319   0.2588047
6-9 months     ki0047075b-MAL-ED       INDIA                          observed             observed          0.2323486   0.2173454   0.2473517
6-9 months     ki0047075b-MAL-ED       NEPAL                          observed             observed          0.2695865   0.2551175   0.2840555
6-9 months     ki0047075b-MAL-ED       PERU                           observed             observed          0.2606983   0.2451320   0.2762647
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.2599320   0.2388152   0.2810489
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.2442111   0.2230902   0.2653319
6-9 months     ki1000109-ResPak        PAKISTAN                       observed             observed          0.2135313   0.1888711   0.2381916
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.2677017   0.2571348   0.2782686
6-9 months     ki1114097-CMIN          BANGLADESH                     observed             observed          0.2261421   0.2058904   0.2463939
6-9 months     ki1114097-CMIN          BRAZIL                         observed             observed          0.3381599   0.2968593   0.3794605
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.2269911   0.2074124   0.2465698
6-9 months     ki1114097-CMIN          PERU                           observed             observed          0.2894434   0.2721092   0.3067775
6-9 months     ki1114097-CONTENT       PERU                           observed             observed          0.3203724   0.3008854   0.3398595
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.1729325   0.1592757   0.1865892
9-12 months    ki0047075b-MAL-ED       INDIA                          observed             observed          0.1794612   0.1654118   0.1935105
9-12 months    ki0047075b-MAL-ED       NEPAL                          observed             observed          0.1859531   0.1715470   0.2003592
9-12 months    ki0047075b-MAL-ED       PERU                           observed             observed          0.1880637   0.1727203   0.2034070
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.2145034   0.1924247   0.2365821
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1649183   0.1449949   0.1848416
9-12 months    ki1000109-ResPak        PAKISTAN                       observed             observed          0.0948937   0.0663113   0.1234761
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.1975040   0.1870641   0.2079439
9-12 months    ki1114097-CMIN          BANGLADESH                     observed             observed          0.1656112   0.1427254   0.1884969
9-12 months    ki1114097-CMIN          BRAZIL                         observed             observed          0.2594912   0.2237818   0.2952006
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.2209990   0.1860014   0.2559966
9-12 months    ki1114097-CMIN          PERU                           observed             observed          0.2370290   0.2192687   0.2547893
9-12 months    ki1114097-CONTENT       PERU                           observed             observed          0.2242885   0.2061680   0.2424089
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.1353663   0.1195497   0.1511829
12-15 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.1743192   0.1584551   0.1901834
12-15 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.1525297   0.1359454   0.1691140
12-15 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.1433678   0.1267517   0.1599838
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.1920494   0.1672514   0.2168473
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1614956   0.1370147   0.1859764
12-15 months   ki1000109-ResPak        PAKISTAN                       observed             observed          0.1385974   0.0911680   0.1860269
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.1645093   0.1539519   0.1750667
12-15 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.1724766   0.1525587   0.1923945
12-15 months   ki1114097-CMIN          BRAZIL                         observed             observed          0.2099949   0.1792251   0.2407648
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.2004350   0.1558466   0.2450234
12-15 months   ki1114097-CMIN          PERU                           observed             observed          0.2128823   0.1933956   0.2323690
12-15 months   ki1114097-CONTENT       PERU                           observed             observed          0.1810659   0.1624244   0.1997074
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.1425231   0.1270241   0.1580221
15-18 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.1622430   0.1472967   0.1771893
15-18 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.1736635   0.1579639   0.1893631
15-18 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.1446134   0.1256303   0.1635966
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.2207737   0.1928945   0.2486528
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1438731   0.1208955   0.1668507
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.1615961   0.1511151   0.1720771
15-18 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.1334837   0.1109948   0.1559725
15-18 months   ki1114097-CMIN          BRAZIL                         observed             observed          0.1858760   0.1448157   0.2269364
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.1171617   0.0679947   0.1663287
15-18 months   ki1114097-CMIN          PERU                           observed             observed          0.1835686   0.1612538   0.2058834
15-18 months   ki1114097-CONTENT       PERU                           observed             observed          0.1713509   0.1529966   0.1897053
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.1426985   0.1257734   0.1596236
18-21 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.1475061   0.1298536   0.1651587
18-21 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.1637466   0.1452428   0.1822503
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.1760128   0.1493562   0.2026693
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1452387   0.1203914   0.1700861
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.1428647   0.1320231   0.1537064
18-21 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.1616853   0.1379134   0.1854572
18-21 months   ki1114097-CMIN          BRAZIL                         observed             observed          0.1829219   0.1252462   0.2405976
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.2302858   0.1809033   0.2796684
18-21 months   ki1114097-CMIN          PERU                           observed             observed          0.1890322   0.1683469   0.2097175
18-21 months   ki1114097-CONTENT       PERU                           observed             observed          0.1921232   0.1732877   0.2109588
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     observed             observed          0.1523357   0.1372224   0.1674491
21-24 months   ki0047075b-MAL-ED       INDIA                          observed             observed          0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED       NEPAL                          observed             observed          0.1658132   0.1474509   0.1841755
21-24 months   ki0047075b-MAL-ED       PERU                           observed             observed          0.1772223   0.1592546   0.1951899
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   observed             observed          0.1893283   0.1654365   0.2132201
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1413460   0.1136835   0.1690086
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     observed             observed          0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     observed             observed          0.1432976   0.1318329   0.1547624
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     observed             observed          0.1751481   0.1624984   0.1877979
21-24 months   ki1114097-CMIN          BANGLADESH                     observed             observed          0.1663610   0.1425615   0.1901605
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  observed             observed          0.1070721   0.0243939   0.1897502
21-24 months   ki1114097-CMIN          PERU                           observed             observed          0.1964483   0.1701343   0.2227623
21-24 months   ki1114097-CONTENT       PERU                           observed             observed          0.2052948   0.1562051   0.2543845


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0144300   -0.0514392    0.0225791
0-3 months     ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0168464   -0.0371828    0.0034901
0-3 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0176339   -0.0189818    0.0542497
0-3 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0238868   -0.0538255    0.0060519
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0942428   -0.2397398    0.0512542
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0594227   -0.1108628   -0.0079826
0-3 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0528100   -0.0375917    0.1432117
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0034819   -0.0216571    0.0286210
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0070348   -0.0157102    0.0297799
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0084632   -0.0134873    0.0304138
0-3 months     ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0606595   -0.1501930    0.0288741
0-3 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0632494   -0.1473457    0.0208469
0-3 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0775214   -0.1797905    0.0247477
0-3 months     ki1114097-CONTENT       PERU                           optimal              observed           0.1163332    0.0251203    0.2075460
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0290527    0.0039705    0.0541350
3-6 months     ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0037672   -0.0236407    0.0311751
3-6 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0249309   -0.0550870    0.0052252
3-6 months     ki0047075b-MAL-ED       PERU                           optimal              observed           0.0003614   -0.0244009    0.0251236
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0205430   -0.0359922   -0.0050939
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0002707   -0.0360477    0.0365891
3-6 months     ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0007884   -0.0543582    0.0559350
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0246253   -0.0518114    0.0025608
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0296528   -0.0504814   -0.0088243
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0017980   -0.0213192    0.0177232
3-6 months     ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0421438    0.0105580    0.0737297
3-6 months     ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0159135   -0.0933267    0.0614997
3-6 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          -0.0712412   -0.1147606   -0.0277218
3-6 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0157898   -0.0495368    0.0179573
3-6 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0394998   -0.0813537    0.0023540
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0073657   -0.0289390    0.0142076
6-9 months     ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0087978   -0.0138990    0.0314946
6-9 months     ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0125851   -0.0339332    0.0087630
6-9 months     ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0012745   -0.0229246    0.0203757
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0209600   -0.0622913    0.1042113
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0230523   -0.0482254    0.0021209
6-9 months     ki1000109-ResPak        PAKISTAN                       optimal              observed          -0.0707284   -0.1374377   -0.0040190
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0418237    0.0193270    0.0643205
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0024372   -0.0200386    0.0249130
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0075813   -0.0047990    0.0199616
6-9 months     ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0180911   -0.0156778    0.0518599
6-9 months     ki1114097-CMIN          BRAZIL                         optimal              observed           0.0104227   -0.0557726    0.0766180
6-9 months     ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0387878    0.0080279    0.0695476
6-9 months     ki1114097-CMIN          PERU                           optimal              observed          -0.0239116   -0.0465290   -0.0012943
6-9 months     ki1114097-CONTENT       PERU                           optimal              observed          -0.0203114   -0.0540003    0.0133775
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0044331   -0.0138179    0.0226841
9-12 months    ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0298145   -0.0541575   -0.0054715
9-12 months    ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0149392   -0.0345138    0.0046353
9-12 months    ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0135274   -0.0312869    0.0042321
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0193737   -0.0138908    0.0526381
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0064978   -0.0229300    0.0359255
9-12 months    ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0288653   -0.0235775    0.0813081
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0143706   -0.0335279    0.0047867
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0159745   -0.0309469   -0.0010021
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0007630   -0.0146794    0.0131534
9-12 months    ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0129223   -0.0191815    0.0450262
9-12 months    ki1114097-CMIN          BRAZIL                         optimal              observed           0.0284135   -0.0214465    0.0782735
9-12 months    ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0434500   -0.0046337    0.0915337
9-12 months    ki1114097-CMIN          PERU                           optimal              observed           0.0008039   -0.0260648    0.0276726
9-12 months    ki1114097-CONTENT       PERU                           optimal              observed          -0.0281820   -0.0635911    0.0072271
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0298374   -0.0558703   -0.0038045
12-15 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0005843   -0.0193304    0.0204990
12-15 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed           0.0119066   -0.0109187    0.0347318
12-15 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0030058   -0.0297699    0.0237583
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0580154    0.0146468    0.1013840
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0210850   -0.0628043    0.0206343
12-15 months   ki1000109-ResPak        PAKISTAN                       optimal              observed           0.0434990   -0.0125659    0.0995638
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0066803   -0.0257161    0.0123554
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          -0.0185044   -0.0364998   -0.0005090
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0083595   -0.0248143    0.0080954
12-15 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0037270   -0.0352166    0.0277626
12-15 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0605236   -0.1187587   -0.0022885
12-15 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0108749   -0.0690489    0.0907988
12-15 months   ki1114097-CMIN          PERU                           optimal              observed           0.0239185   -0.0060715    0.0539086
12-15 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0135998   -0.0103351    0.0375348
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed           0.0063584   -0.0187988    0.0315156
15-18 months   ki0047075b-MAL-ED       INDIA                          optimal              observed           0.0161421   -0.0100988    0.0423830
15-18 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0210525   -0.0427530    0.0006480
15-18 months   ki0047075b-MAL-ED       PERU                           optimal              observed           0.0037813   -0.0237666    0.0313292
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0650469    0.0282864    0.1018074
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0092041   -0.0376357    0.0192275
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0271210   -0.0539130   -0.0003290
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0106798   -0.0079003    0.0292599
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed           0.0024730   -0.0170097    0.0219557
15-18 months   ki1114097-CMIN          BANGLADESH                     optimal              observed          -0.0212622   -0.0580696    0.0155452
15-18 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0492556   -0.1087041    0.0101929
15-18 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0063528   -0.0604538    0.0731594
15-18 months   ki1114097-CMIN          PERU                           optimal              observed           0.0070280   -0.0254659    0.0395218
15-18 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0091121   -0.0109438    0.0291680
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0515580   -0.0771523   -0.0259636
18-21 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0073556   -0.0215440    0.0068328
18-21 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0241869   -0.0492474    0.0008735
18-21 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0378904   -0.0674418   -0.0083390
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed          -0.0396171   -0.0850582    0.0058240
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0072993   -0.0464529    0.0318543
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          -0.0056306   -0.0267841    0.0155229
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0086223   -0.0100882    0.0273327
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0180318   -0.0367200    0.0006565
18-21 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0138208   -0.0135679    0.0412095
18-21 months   ki1114097-CMIN          BRAZIL                         optimal              observed          -0.0572809   -0.1374848    0.0229230
18-21 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0841786    0.0190084    0.1493488
18-21 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0103416   -0.0462704    0.0255871
18-21 months   ki1114097-CONTENT       PERU                           optimal              observed           0.0104028   -0.0193210    0.0401267
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          -0.0018540   -0.0223787    0.0186708
21-24 months   ki0047075b-MAL-ED       INDIA                          optimal              observed          -0.0081742   -0.0232502    0.0069018
21-24 months   ki0047075b-MAL-ED       NEPAL                          optimal              observed          -0.0092155   -0.0358496    0.0174185
21-24 months   ki0047075b-MAL-ED       PERU                           optimal              observed          -0.0176136   -0.0461274    0.0109002
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   optimal              observed           0.0236976   -0.0317695    0.0791647
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0089134   -0.0255958    0.0434226
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed           0.0204557   -0.0009049    0.0418163
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed           0.0096971   -0.0057688    0.0251631
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          -0.0231960   -0.0343922   -0.0119998
21-24 months   ki1114097-CMIN          BANGLADESH                     optimal              observed           0.0043766   -0.0298609    0.0386141
21-24 months   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed           0.0841156   -0.0298150    0.1980463
21-24 months   ki1114097-CMIN          PERU                           optimal              observed          -0.0272517   -0.0744558    0.0199524
21-24 months   ki1114097-CONTENT       PERU                           optimal              observed          -0.0291709   -0.0713074    0.0129655
