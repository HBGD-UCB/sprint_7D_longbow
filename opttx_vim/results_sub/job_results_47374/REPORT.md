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
![](/tmp/ed54b238-48a6-4cd5-ab69-504aa288d21c/d5dbe805-157b-4d20-9461-3b52762c28a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1063209   -0.2402680    0.0276263
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2481599   -0.4436143   -0.0527055
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2083459    0.0694099    0.3472819
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1850932   -0.2909295   -0.0792569
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0378784   -0.2471770    0.1714201
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.4409957   -0.5524130   -0.3295784
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.5507852   -0.7471138   -0.3544567
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0801491   -0.1657623    0.0054640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0573993   -0.0924871   -0.0223115
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1174037   -0.1518322   -0.0829751
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0853968    0.0522458    0.1185477
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0322860   -0.0983602    0.0337882
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0240817   -0.1312114    0.0830480
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0184188   -0.0652547    0.0284171
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0706432   -0.1267625   -0.0145240
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed           0.1063098    0.0399442    0.1726753
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0294766   -0.1386790    0.0797257
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1117780   -0.1915019   -0.0320541
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0228102   -0.0495461    0.0039258
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0751082    0.0342985    0.1159178
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          -0.0475860   -0.0908986   -0.0042734
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed          -0.0715373   -0.1346297   -0.0084449
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0172241   -0.0119649    0.0464132
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0869422   -0.1168962   -0.0569882
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0510176   -0.0789768   -0.0230584
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1375427   -0.1796348   -0.0954505
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed           0.0313666   -0.0778662    0.1405994
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1376379   -0.1593876   -0.1158882
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0447643   -0.0778565   -0.0116720
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0134489   -0.0730392    0.0461413
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0211564   -0.0473827    0.0050698
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1147938   -0.1670945   -0.0624931
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1167851   -0.1979800   -0.0355903
6-9 months     ki1114097-CMIN             PERU                           optimal              observed          -0.1245206   -0.1568172   -0.0922239
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed          -0.0050457   -0.0434242    0.0333328
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0143196   -0.0343908    0.0057515
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1050347   -0.2012101   -0.0088592
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0108102   -0.0901846    0.0685642
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1915727   -0.2853888   -0.0977565
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2387761   -0.2948125   -0.1827397
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0063749   -0.0378455    0.0505953
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0747676   -0.0907680   -0.0587672
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0217271   -0.0417450   -0.0017091
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0664686   -0.1179253   -0.0150120
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0366761   -0.0697517   -0.0036004
9-12 months    ki1114097-CMIN             PERU                           optimal              observed           0.0331207   -0.0747267    0.1409681
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0878875   -0.1398555   -0.0359194
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0541113   -0.0730950   -0.0351276
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0398555   -0.0790951    0.1588060
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0842763   -0.1097532   -0.0587994
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0784542   -0.1103608   -0.0465476
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0126772   -0.0226875    0.0480419
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1292585   -0.1499304   -0.1085866
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0410358   -0.0343240    0.1163957
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0337485   -0.0510376   -0.0164593
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0349184   -0.0548598   -0.0149770
12-15 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1152191   -0.1745207   -0.0559176
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0666269   -0.0885977   -0.0446561
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0388980   -0.0540575   -0.0237385
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0893791   -0.1348825   -0.0438758
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0177296   -0.0678083    0.0323492
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2119079   -0.3091132   -0.1147026
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0224153   -0.0485256    0.0036950
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0362143   -0.0665937   -0.0058349
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1110367    0.0016856    0.2203879
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0404337   -0.0765100   -0.0043574
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0173630   -0.0337574   -0.0009687
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0103255   -0.0277807    0.0071297
15-18 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0831506   -0.1243520   -0.0419491
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed           0.0749418   -0.0309591    0.1808427
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0398079   -0.0494210   -0.0301949
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0291685   -0.0528753   -0.0054616
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0522540   -0.1171517    0.0126438
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0945000   -0.2722282    0.0832283
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0272559   -0.0501730   -0.0043389
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0201675   -0.0156707    0.0560057
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0157705   -0.0299280   -0.0016131
18-21 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0982651   -0.1163126   -0.0802177
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0688559    0.0128657    0.1248460
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0105014   -0.0103340    0.0313369
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0474110    0.0078716    0.0869504
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0177918   -0.0017213    0.0373049
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0570526    0.0463836    0.0677217
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0668137    0.0523099    0.0813175
21-24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0041639   -0.0662961    0.0579683


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          INDIA                          observed             observed          -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           observed             observed          -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-EE               PAKISTAN                       observed             observed          -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed           0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           observed             observed           0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE               PAKISTAN                       observed             observed           0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       observed             observed           0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN             PERU                           observed             observed          -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           observed             observed           0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.0090589   -0.0227889    0.0046710
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0712828   -0.0886744   -0.0538911
6-9 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0353011   -0.0545813   -0.0160209
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.1059410   -0.1347850   -0.0770969
6-9 months     ki1000109-EE               PAKISTAN                       observed             observed          -0.0520626   -0.0734926   -0.0306325
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -0.1052304   -0.1233192   -0.0871417
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.0595548   -0.0774135   -0.0416961
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0616693   -0.0727520   -0.0505866
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0951531   -0.1146913   -0.0756149
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0787358   -0.1002892   -0.0571824
6-9 months     ki1114097-CMIN             PERU                           observed             observed          -0.1095396   -0.1295020   -0.0895773
6-9 months     ki1114097-CONTENT          PERU                           observed             observed          -0.0242292   -0.0452610   -0.0031973
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.0289482   -0.0379437   -0.0199527
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0862885   -0.1024243   -0.0701527
9-12 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0622983   -0.0789970   -0.0455996
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.1427009   -0.1720181   -0.1133837
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -0.1462637   -0.2015231   -0.0910043
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.0424748   -0.0569242   -0.0280255
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0627163   -0.0736829   -0.0517498
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0587254   -0.0745802   -0.0428705
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          -0.0487006   -0.0633304   -0.0340708
9-12 months    ki1114097-CMIN             PERU                           observed             observed          -0.0710858   -0.0873019   -0.0548697
9-12 months    ki1114097-CONTENT          PERU                           observed             observed          -0.0224698   -0.0391090   -0.0058306
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.0521209   -0.0596089   -0.0446330
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0556963   -0.0712392   -0.0401535
12-15 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0581345   -0.0735623   -0.0427067
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0693563   -0.0944134   -0.0442993
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed           0.0088746   -0.0268397    0.0445889
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.1259588   -0.1428870   -0.1090306
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0402904   -0.0504367   -0.0301441
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          -0.0431604   -0.0596572   -0.0266637
12-15 months   ki1114097-CMIN             PERU                           observed             observed          -0.0764433   -0.0931532   -0.0597334
12-15 months   ki1114097-CONTENT          PERU                           observed             observed          -0.0734290   -0.0899048   -0.0569533
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.0450644   -0.0511488   -0.0389801
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0457746   -0.0592624   -0.0322868
15-18 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0541588   -0.0691409   -0.0391768
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0826991   -0.1047133   -0.0606848
15-18 months   ki1000109-EE               PAKISTAN                       observed             observed           0.0038651   -0.0058831    0.0136133
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -0.0369125   -0.0500204   -0.0238046
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.0576906   -0.0723785   -0.0430027
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0376602   -0.0464843   -0.0288361
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          -0.0168360   -0.0300694   -0.0036026
15-18 months   ki1114097-CMIN             PERU                           observed             observed          -0.0383551   -0.0529329   -0.0237773
15-18 months   ki1114097-CONTENT          PERU                           observed             observed          -0.0091366   -0.0260209    0.0077477
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.0328742   -0.0389268   -0.0268217
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0155009   -0.0271590   -0.0038429
18-21 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.0281678   -0.0411993   -0.0151363
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.0301055   -0.0520057   -0.0082054
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.0383890   -0.0508204   -0.0259576
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.0092550   -0.0176076   -0.0009024
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1114097-CMIN             PERU                           observed             observed          -0.0209848   -0.0337947   -0.0081749
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed           0.0439584    0.0315403    0.0563764
21-24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0221387    0.0093850    0.0348923
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0288040    0.0096671    0.0479410
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed           0.0554106    0.0440664    0.0667548
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed           0.0538265    0.0451921    0.0624609
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0629449    0.0547458    0.0711440
21-24 months   ki1114097-CMIN             PERU                           observed             observed           0.0127783   -0.0015183    0.0270749


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0724146   -0.0556557    0.2004849
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2276802    0.0337606    0.4215997
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1337257   -0.2654243   -0.0020271
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed           0.0269847   -0.0744027    0.1283720
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0082882   -0.2109556    0.1943791
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed           0.0471441   -0.0588446    0.1531327
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed           0.3572894    0.1414971    0.5730816
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0389674   -0.1218229    0.0438881
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0160850   -0.0141590    0.0463290
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0046784   -0.0337566    0.0243997
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0180824   -0.0490142    0.0128494
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0097650   -0.0508164    0.0703463
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0026276   -0.1014080    0.1066632
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed           0.0457990    0.0075902    0.0840079
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0000984   -0.0504554    0.0506522
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0361937   -0.0930251    0.0206377
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0682558   -0.0340773    0.1705890
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0608773   -0.0181696    0.1399242
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0044326   -0.0267622    0.0178969
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0483341   -0.0842332   -0.0124350
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          -0.0100413   -0.0473379    0.0272553
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed           0.0842936    0.0202243    0.1483628
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0262831   -0.0532372    0.0006711
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0156594   -0.0095862    0.0409051
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0157165   -0.0033043    0.0347373
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0316017    0.0023859    0.0608175
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0834292   -0.1886346    0.0217763
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0324075    0.0102372    0.0545778
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0147906   -0.0509640    0.0213829
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0482204   -0.1073192    0.0108785
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0102073   -0.0326678    0.0122531
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0196407   -0.0284107    0.0676921
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0380493   -0.0424457    0.1185444
6-9 months     ki1114097-CMIN             PERU                           optimal              observed           0.0149809   -0.0149946    0.0449564
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed          -0.0191834   -0.0510664    0.0126995
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0146286   -0.0323629    0.0031057
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0187462   -0.0763018    0.1137941
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0514881   -0.1288024    0.0258262
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0488718   -0.0384551    0.1361987
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0925124    0.0274722    0.1575527
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0488497   -0.0943557   -0.0033437
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0120513    0.0000835    0.0240190
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0125724   -0.0300165    0.0048716
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0077433   -0.0435734    0.0590600
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0120245   -0.0391816    0.0151326
9-12 months    ki1114097-CMIN             PERU                           optimal              observed          -0.1042065   -0.2108361    0.0024231
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0654177    0.0133727    0.1174626
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0019904   -0.0166283    0.0206091
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0955518   -0.2125478    0.0214441
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0261418    0.0061751    0.0461085
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0090979   -0.0094291    0.0276248
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0038026   -0.0443370    0.0367318
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0032997   -0.0171528    0.0237522
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0813262   -0.1556002   -0.0070522
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0045829   -0.0186229    0.0094571
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0082420   -0.0248973    0.0084133
12-15 months   ki1114097-CMIN             PERU                           optimal              observed           0.0387758   -0.0196389    0.0971905
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0068022   -0.0175737    0.0039694
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0061664   -0.0208089    0.0084760
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0436046    0.0004874    0.0867217
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0364293   -0.0846017    0.0117432
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1292088    0.0334725    0.2249451
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0262804    0.0000531    0.0525078
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0006982   -0.0305239    0.0291275
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1687273   -0.2765296   -0.0609251
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0027735   -0.0333565    0.0389034
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0004557   -0.0131559    0.0140673
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0065105   -0.0164908    0.0034698
15-18 months   ki1114097-CMIN             PERU                           optimal              observed           0.0447955    0.0063662    0.0832248
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0840784   -0.1887835    0.0206267
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0069337   -0.0008794    0.0147468
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0136675   -0.0073922    0.0347273
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0240862   -0.0379324    0.0861048
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0643944   -0.1094344    0.2382232
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0111331   -0.0292710    0.0070049
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0294225   -0.0654124    0.0065674
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0121982   -0.0240546   -0.0003418
18-21 months   ki1114097-CMIN             PERU                           optimal              observed           0.0772803    0.0606082    0.0939524
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0248975   -0.0809050    0.0311100
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0116372   -0.0042544    0.0275289
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0186069   -0.0530526    0.0158388
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0376188    0.0157424    0.0594952
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0032261   -0.0089443    0.0024920
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0038688   -0.0172433    0.0095056
21-24 months   ki1114097-CMIN             PERU                           optimal              observed           0.0169422   -0.0412521    0.0751366
