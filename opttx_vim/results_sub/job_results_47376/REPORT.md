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

**Intervention Variable:** perdiar24

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

agecat         studyid                    country                        perdiar24    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        143    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              93    244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%               97    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    180
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    201
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        158    201
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              38    201
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               12    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        106    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              57    175
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    271
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        110    271
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             151    271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        151    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        166    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    229
0-3 months     ki1000109-EE               PAKISTAN                       0%              217    297
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         65    297
0-3 months     ki1000109-EE               PAKISTAN                       >5%              15    297
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                6     78
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         24     78
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%              48     78
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             197    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        422    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             191    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              135    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        385    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             200    720
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0     43
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19     43
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24     43
0-3 months     ki1114097-CMIN             BRAZIL                         0%                1     81
0-3 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         43     81
0-3 months     ki1114097-CMIN             BRAZIL                         >5%              37     81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0%                2     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          8     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%              11     21
0-3 months     ki1114097-CMIN             PERU                           0%                3     93
0-3 months     ki1114097-CMIN             PERU                           (0%, 5%]         45     93
0-3 months     ki1114097-CMIN             PERU                           >5%              45     93
0-3 months     ki1114097-CONTENT          PERU                           0%                1     29
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14     29
0-3 months     ki1114097-CONTENT          PERU                           >5%              14     29
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              458   1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1183   1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             166   1807
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        137    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              88    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    229
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        184    229
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        164    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239
3-6 months     ki1000109-EE               PAKISTAN                       0%              235    331
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         75    331
3-6 months     ki1000109-EE               PAKISTAN                       >5%              21    331
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                5    156
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         46    156
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%             105    156
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             167    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              128    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             190    695
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    185
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         90    185
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    185
3-6 months     ki1114097-CMIN             BRAZIL                         0%                1     81
3-6 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         44     81
3-6 months     ki1114097-CMIN             BRAZIL                         >5%              36     81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0%                2    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         67    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%              60    129
3-6 months     ki1114097-CMIN             PERU                           0%               18    407
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]        208    407
3-6 months     ki1114097-CMIN             PERU                           >5%             181    407
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              479   1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1201   1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             160   1840
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    198
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3    228
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        183    228
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42    228
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77    230
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3    245
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99    245
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        155    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        162    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    223
6-9 months     ki1000109-EE               PAKISTAN                       0%              240    337
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         77    337
6-9 months     ki1000109-EE               PAKISTAN                       >5%              20    337
6-9 months     ki1000109-ResPak           PAKISTAN                       0%                3    143
6-9 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         35    143
6-9 months     ki1000109-ResPak           PAKISTAN                       >5%             105    143
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    314
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         36    314
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%             225    314
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10    543
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        374    543
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             159    543
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        372    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             185    688
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9    213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57    213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             147    213
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0    177
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75    177
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102    177
6-9 months     ki1114097-CMIN             BRAZIL                         0%                1     92
6-9 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         50     92
6-9 months     ki1114097-CMIN             BRAZIL                         >5%              41     92
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  0%               13    479
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        223    479
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%             243    479
6-9 months     ki1114097-CMIN             PERU                           0%               17    399
6-9 months     ki1114097-CMIN             PERU                           (0%, 5%]        208    399
6-9 months     ki1114097-CMIN             PERU                           >5%             174    399
6-9 months     ki1114097-CONTENT          PERU                           0%                6    214
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141    214
6-9 months     ki1114097-CONTENT          PERU                           >5%              67    214
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              801   3054
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1973   3054
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             280   3054
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        134    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              85    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    194
9-12 months    ki0047075b-MAL-ED          INDIA                          0%                3    226
9-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    226
9-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42    226
9-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77    229
9-12 months    ki0047075b-MAL-ED          PERU                           0%                2    235
9-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96    235
9-12 months    ki0047075b-MAL-ED          PERU                           >5%             137    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              54    222
9-12 months    ki1000109-EE               PAKISTAN                       0%                5      6
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          1      6
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0      6
9-12 months    ki1000109-ResPak           PAKISTAN                       0%                2    137
9-12 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         39    137
9-12 months    ki1000109-ResPak           PAKISTAN                       >5%              96    137
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               55    311
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         37    311
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             219    311
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        310    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163    482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    564
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        382    564
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             173    564
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        366    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             178    674
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         49    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             129    186
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              173   1119
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        727   1119
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             219   1119
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    160
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68    160
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92    160
9-12 months    ki1114097-CMIN             BRAZIL                         0%                1     93
9-12 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         51     93
9-12 months    ki1114097-CMIN             BRAZIL                         >5%              41     93
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                1    188
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         82    188
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             105    188
9-12 months    ki1114097-CMIN             PERU                           0%                7    371
9-12 months    ki1114097-CMIN             PERU                           (0%, 5%]        186    371
9-12 months    ki1114097-CMIN             PERU                           >5%             178    371
9-12 months    ki1114097-CONTENT          PERU                           0%                6    212
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140    212
9-12 months    ki1114097-CONTENT          PERU                           >5%              66    212
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              921   3501
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2259   3501
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             321   3501
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        128    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              78    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0%               86    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         96    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    184
12-15 months   ki0047075b-MAL-ED          INDIA                          0%                3    226
12-15 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    226
12-15 months   ki0047075b-MAL-ED          INDIA                          >5%              42    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          0%               12    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          >5%              77    230
12-15 months   ki0047075b-MAL-ED          PERU                           0%                1    224
12-15 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         90    224
12-15 months   ki0047075b-MAL-ED          PERU                           >5%             133    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        160    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        164    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    226
12-15 months   ki1000109-EE               PAKISTAN                       0%                5      6
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]          1      6
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0      6
12-15 months   ki1000109-ResPak           PAKISTAN                       0%                2     89
12-15 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]         28     89
12-15 months   ki1000109-ResPak           PAKISTAN                       >5%              59     89
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    303
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    303
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             212    303
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    523
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        349    523
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             166    523
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        354    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             179    660
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2     97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         31     97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64     97
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              120    978
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        660    978
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             198    978
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2    160
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69    160
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              89    160
12-15 months   ki1114097-CMIN             BRAZIL                         0%                1     92
12-15 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         52     92
12-15 months   ki1114097-CMIN             BRAZIL                         >5%              39     92
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                3    116
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         48    116
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              65    116
12-15 months   ki1114097-CMIN             PERU                           0%                7    349
12-15 months   ki1114097-CMIN             PERU                           (0%, 5%]        184    349
12-15 months   ki1114097-CMIN             PERU                           >5%             158    349
12-15 months   ki1114097-CONTENT          PERU                           0%                5    199
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132    199
12-15 months   ki1114097-CONTENT          PERU                           >5%              62    199
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              921   3549
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2311   3549
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             317   3549
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              79    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0%               79    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         94    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    175
15-18 months   ki0047075b-MAL-ED          INDIA                          0%                3    226
15-18 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226
15-18 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1    213
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    213
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             126    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        156    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        157    216
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    216
15-18 months   ki1000109-EE               PAKISTAN                       0%              221    307
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         71    307
15-18 months   ki1000109-EE               PAKISTAN                       >5%              15    307
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    291
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         33    291
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             202    291
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    509
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        344    509
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             157    509
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             158    604
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              104   1021
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        706   1021
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             211   1021
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3    163
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70    163
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90    163
15-18 months   ki1114097-CMIN             BRAZIL                         0%                1     87
15-18 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         49     87
15-18 months   ki1114097-CMIN             BRAZIL                         >5%              37     87
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                1    136
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         57    136
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              78    136
15-18 months   ki1114097-CMIN             PERU                           0%                7    300
15-18 months   ki1114097-CMIN             PERU                           (0%, 5%]        162    300
15-18 months   ki1114097-CMIN             PERU                           >5%             131    300
15-18 months   ki1114097-CONTENT          PERU                           0%                5    189
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124    189
15-18 months   ki1114097-CONTENT          PERU                           >5%              60    189
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              888   3550
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2341   3550
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             321   3550
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        129    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0%               75    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         90    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >5%               2    167
18-21 months   ki0047075b-MAL-ED          INDIA                          0%                3    226
18-21 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226
18-21 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          0%               12    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1    202
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    202
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             115    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        146    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    202
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    521
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        358    521
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             156    521
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        290    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133    546
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2    165
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72    165
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91    165
18-21 months   ki1114097-CMIN             BRAZIL                         0%                1     84
18-21 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         46     84
18-21 months   ki1114097-CMIN             BRAZIL                         >5%              37     84
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                2    152
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         63    152
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              87    152
18-21 months   ki1114097-CMIN             PERU                           0%                7    290
18-21 months   ki1114097-CMIN             PERU                           (0%, 5%]        150    290
18-21 months   ki1114097-CMIN             PERU                           >5%             133    290
18-21 months   ki1114097-CONTENT          PERU                           0%                4    183
18-21 months   ki1114097-CONTENT          PERU                           (0%, 5%]        122    183
18-21 months   ki1114097-CONTENT          PERU                           >5%              57    183
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        127    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1    165
21-24 months   ki0047075b-MAL-ED          INDIA                          0%                3    226
21-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        182    226
21-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    227
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1    189
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80    189
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             108    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        146    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    202
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    445
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        305    445
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             133    445
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        260    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             108    490
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    133
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    133
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70    133
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                3     89
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         41     89
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              45     89
21-24 months   ki1114097-CMIN             PERU                           0%               13    254
21-24 months   ki1114097-CMIN             PERU                           (0%, 5%]        127    254
21-24 months   ki1114097-CMIN             PERU                           >5%             114    254
21-24 months   ki1114097-CONTENT          PERU                           0%                0     38
21-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         26     38
21-24 months   ki1114097-CONTENT          PERU                           >5%              12     38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5da51213-6911-4b4f-aaa0-f976ae45ca10/12dc83d7-0035-4079-a66b-099d4673b2d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          3.3320404    3.1644511   3.4996297
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed          3.4311848    2.8809613   3.9814084
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          3.7657720    3.4641197   4.0674242
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed          3.2921564    3.0921028   3.4922099
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          3.5587724    3.1060642   4.0114806
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed          2.5604155    2.3979484   2.7228825
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          2.8526432    1.9877928   3.7174935
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          3.3851441    3.2958529   3.4744353
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          3.4319599    3.3759204   3.4879994
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          3.3152402    3.2391090   3.3913715
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          3.6660189    3.5908447   3.7411931
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.9520689    1.8864829   2.0176548
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.9449319    1.7255328   2.1643310
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed          2.0044855    1.8999084   2.1090627
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.8663200    1.7385808   1.9940593
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed          2.0891181    1.9471609   2.2310753
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          2.2072087    1.9332067   2.4812107
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.6996252    1.5272484   1.8720020
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.9795212    1.9009975   2.0580449
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          2.0971128    2.0136126   2.1806131
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          1.9552556    1.8873745   2.0231367
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed          1.9421092    1.8350735   2.0491448
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          1.9184134    1.8472541   1.9895727
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.2770348    1.2092644   1.3448052
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.3072609    1.2430823   1.3714396
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.1509337    0.8097371   1.4921304
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed          1.4129482    1.1475961   1.6783004
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          1.2270163    1.1561911   1.2978414
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.2369818    1.1336738   1.3402898
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.3827850    1.2410930   1.5244770
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          1.3179255    1.2573396   1.3785114
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          1.1052222    0.9932138   1.2172306
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          1.1579774    0.9273518   1.3886030
6-9 months     ki1114097-CMIN             PERU                           optimal              observed          1.0622561    0.9560657   1.1684465
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed          1.4532595    1.3656537   1.5408652
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          1.3677522    1.3252304   1.4102740
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9379974    0.6981236   1.1778712
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.2373044    1.0178181   1.4567908
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7198460    0.5255710   0.9141209
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.6136859    0.4778336   0.7495383
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.2062700    1.1004795   1.3120604
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.0243625    0.9856393   1.0630857
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          1.1547544    1.0986016   1.2109072
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.9952998    0.8881152   1.1024845
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          1.1247711    1.0485738   1.2009684
9-12 months    ki1114097-CMIN             PERU                           optimal              observed          1.2865584    1.0306172   1.5424997
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed          1.1704502    1.0999095   1.2409909
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          1.0301412    0.9906086   1.0696738
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.1929665    0.8701715   1.5157615
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.7769040    0.7193675   0.8344405
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8130364    0.7351623   0.8909106
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          1.0592673    0.9204120   1.1981227
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7076497    0.6544466   0.7608527
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.1246558    0.9238616   1.3254500
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9640878    0.9152922   1.0128834
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9801934    0.9330951   1.0272918
12-15 months   ki1114097-CMIN             PERU                           optimal              observed          0.6713929    0.5849383   0.7578475
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          0.9413010    0.8859285   0.9966734
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9232239    0.8799985   0.9664493
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7373565    0.6415295   0.8331835
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.7144766    0.6002055   0.8287478
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5132424    0.1073756   0.9191092
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed          0.8966714    0.7434736   1.0498692
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8411379    0.7566024   0.9256734
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.2540963    0.9476513   1.5605412
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8647918    0.7447370   0.9848466
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9264314    0.8858126   0.9670501
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9430399    0.8954325   0.9906473
15-18 months   ki1114097-CMIN             PERU                           optimal              observed          0.7713080    0.6473077   0.8953083
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed          1.1646462    0.8759332   1.4533591
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8695528    0.8496016   0.8895040
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7827011    0.6997324   0.8656698
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.6948979    0.5538419   0.8359539
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5870697   -0.0650212   1.2391605
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7600640    0.6943991   0.8257288
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9106416    0.8021032   1.0191801
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8415175    0.7974543   0.8855806
18-21 months   ki1114097-CMIN             PERU                           optimal              observed          0.7626426    0.6509014   0.8743839
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9366376    0.8045615   1.0687137
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.7870861    0.7260166   0.8481556
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7791700    0.6749675   0.8833725
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7529415    0.6577954   0.8480875
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7964817    0.7632525   0.8297108
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8229262    0.7677280   0.8781244
21-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.7031856    0.5053585   0.9010127


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          INDIA                          observed             observed          3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           observed             observed          3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-EE               PAKISTAN                       observed             observed          2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       observed             observed          3.0738623   2.7876913   3.3600332
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           observed             observed          2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE               PAKISTAN                       observed             observed          2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       observed             observed          2.0694234   1.9275918   2.2112551
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN             PERU                           observed             observed          1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           observed             observed          2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          1.8983676   1.8684335   1.9283018
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          1.2453156   1.2052458   1.2853854
6-9 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          1.3554975   1.3113878   1.3996072
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          1.1603951   1.0943804   1.2264098
6-9 months     ki1000109-EE               PAKISTAN                       observed             observed          1.2302469   1.1814174   1.2790764
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          1.1426155   1.1021386   1.1830923
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          1.2820793   1.2562719   1.3078866
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          1.3282695   1.2988292   1.3577098
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          1.1702813   1.1261029   1.2144597
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          1.2589564   1.2095482   1.3083647
6-9 months     ki1114097-CMIN             PERU                           observed             observed          1.1848111   1.1389692   1.2306530
6-9 months     ki1114097-CONTENT          PERU                           observed             observed          1.3974236   1.3502187   1.4446285
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          1.3242433   1.3035625   1.3449241
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.9919993   0.9533873   1.0306114
9-12 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          1.0893581   1.0490377   1.1296785
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8425886   0.7721546   0.9130226
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.8106649   0.6745544   0.9467754
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          1.0506075   1.0236381   1.0775770
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          1.1234745   1.0972274   1.1497215
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          1.0385134   0.9994107   1.0776161
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          1.0927974   1.0590753   1.1265195
9-12 months    ki1114097-CMIN             PERU                           observed             observed          1.0551367   1.0162288   1.0940446
9-12 months    ki1114097-CONTENT          PERU                           observed             observed          1.2048768   1.1650186   1.2447350
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          1.0714791   1.0535276   1.0894307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.9140823   0.8737353   0.9544292
12-15 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.9495537   0.9102511   0.9888563
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8563558   0.7920248   0.9206869
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          1.0267825   0.9374856   1.1160794
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.9615196   0.9352043   0.9878349
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.9711395   0.9465805   0.9956985
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          0.9658283   0.9236309   1.0080257
12-15 months   ki1114097-CMIN             PERU                           observed             observed          0.8879772   0.8460806   0.9298737
12-15 months   ki1114097-CONTENT          PERU                           observed             observed          0.9291443   0.8867697   0.9715190
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.9415306   0.9256966   0.9573645
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.8242868   0.7873540   0.8612196
15-18 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.8430013   0.8017536   0.8842490
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.6948642   0.6347066   0.7550218
15-18 months   ki1000109-EE               PAKISTAN                       observed             observed          0.8883196   0.8613027   0.9153366
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.7947861   0.7590601   0.8305122
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.8557112   0.8313695   0.8800529
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.9177168   0.8947657   0.9406678
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          0.9228413   0.8852625   0.9604201
15-18 months   ki1114097-CMIN             PERU                           observed             observed          0.8691629   0.8293192   0.9090066
15-18 months   ki1114097-CONTENT          PERU                           observed             observed          0.9860231   0.9406097   1.0314365
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.8599177   0.8433915   0.8764438
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.8135860   0.7790999   0.8480721
18-21 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.8180755   0.7799494   0.8562017
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.7390108   0.6741210   0.8039007
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.8438546   0.8193068   0.8684023
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.7977755   0.7744353   0.8211158
18-21 months   ki1114097-CMIN             PERU                           observed             observed          0.8219002   0.7846540   0.8591464
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.8293116   0.7901578   0.8684654
21-24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.8373992   0.7974567   0.8773417
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.7843948   0.7264131   0.8423765
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.7653271   0.7288134   0.8018409
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.7832079   0.7566384   0.8097774
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.8129385   0.7877525   0.8381245
21-24 months   ki1114097-CMIN             PERU                           observed             observed          0.7600843   0.7178769   0.8022916


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2314043    0.0741966    0.3886120
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1452664   -0.3975609    0.6880936
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0547215   -0.2308882    0.3403313
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed           0.0237041   -0.1606581    0.2080663
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0770820   -0.5146798    0.3605157
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed           0.0971490   -0.0479005    0.2421985
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed           0.2212191   -0.5812216    1.0236598
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0722187   -0.1463856    0.0019482
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0507107    0.0101430    0.0912784
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0123746   -0.0749033    0.0501540
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0279022   -0.1031627    0.0473583
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0240227   -0.0647557    0.0167103
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0231676   -0.1924607    0.2387958
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed           0.0138357   -0.0660917    0.0937631
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0362299   -0.1499110    0.0774512
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0649980   -0.1859711    0.0559752
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.1377853   -0.3666562    0.0910857
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1330663   -0.0389835    0.3051161
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0140758   -0.0847584    0.0566069
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0913156   -0.1663032   -0.0163280
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          -0.0612085   -0.1089700   -0.0134470
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed           0.1420749    0.0435156    0.2406342
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0200458   -0.0850688    0.0449773
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0317193   -0.0845706    0.0211320
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0482366   -0.0023846    0.0988577
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0094614   -0.3162530    0.3351758
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.1827013   -0.4391003    0.0736977
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0844008   -0.1527886   -0.0160130
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0186133   -0.0888477    0.1260742
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1007057   -0.2412843    0.0398729
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0103440   -0.0419641    0.0626520
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0650591   -0.0423045    0.1724227
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1009790   -0.1274346    0.3293925
6-9 months     ki1114097-CMIN             PERU                           optimal              observed           0.1225550    0.0290617    0.2160483
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed          -0.0558358   -0.1281743    0.0165027
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0435089   -0.0794470   -0.0075708
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0540020   -0.1830203    0.2910242
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1479464   -0.3610510    0.0651583
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1227426   -0.0569466    0.3024319
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1969790    0.0506814    0.3432765
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1176891   -0.2268736   -0.0085046
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0262450   -0.0021933    0.0546833
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0312799   -0.0802740    0.0177142
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0432136   -0.0665260    0.1529532
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0319737   -0.0977049    0.0337576
9-12 months    ki1114097-CMIN             PERU                           optimal              observed          -0.2314217   -0.4843313    0.0214879
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0344266   -0.0259601    0.0948132
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0413379    0.0045022    0.0781736
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2788842   -0.5963811    0.0386127
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1726497    0.1219780    0.2233214
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0433194   -0.0053410    0.0919798
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0324848   -0.1842422    0.1192726
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0165126   -0.0370849    0.0701100
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1631362   -0.3610301    0.0347577
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0070517   -0.0322825    0.0463859
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0143652   -0.0372768    0.0085465
12-15 months   ki1114097-CMIN             PERU                           optimal              observed           0.2165843    0.1241386    0.3090301
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0121566   -0.0404932    0.0161799
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0183066   -0.0225430    0.0591563
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0869303   -0.0051859    0.1790465
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1285247    0.0140129    0.2430364
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1816218   -0.2158827    0.5791262
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0083518   -0.1568585    0.1401550
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0463518   -0.1302356    0.0375321
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4813244   -0.7831690   -0.1794797
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0090806   -0.1280998    0.1099386
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0087146   -0.0428655    0.0254363
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0201986   -0.0478497    0.0074524
15-18 months   ki1114097-CMIN             PERU                           optimal              observed           0.0978549   -0.0165523    0.2122621
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1786230   -0.4638424    0.1065963
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0096351   -0.0213313    0.0020610
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0308849   -0.0445864    0.1063563
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1231776   -0.0133786    0.2597339
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1519412   -0.4856482    0.7895305
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0309171   -0.0831355    0.0213012
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0667871   -0.1756057    0.0420315
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0437419   -0.0800214   -0.0074624
18-21 months   ki1114097-CMIN             PERU                           optimal              observed           0.0592575   -0.0440872    0.1626023
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1073260   -0.2419986    0.0273466
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0503131    0.0004201    0.1002061
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0052248   -0.0875705    0.0980201
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0123856   -0.0866749    0.1114461
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0132738   -0.0306741    0.0041266
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0099877   -0.0553231    0.0353477
21-24 months   ki1114097-CMIN             PERU                           optimal              observed           0.0568987   -0.1301714    0.2439687
