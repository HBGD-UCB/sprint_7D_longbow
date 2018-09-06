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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        143    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              93    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         81    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%               97    180
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        158    201
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              38    201
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    201
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        106    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              57    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               12    175
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        110    271
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             151    271
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        151    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        166    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              53    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    229
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]        130    594
0-3 months     ki1000109-EE               PAKISTAN                       >5%              30    594
0-3 months     ki1000109-EE               PAKISTAN                       0%              434    594
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         24     78
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%              48     78
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                6     78
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             197    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        422    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             191    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        385    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             200    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              135    720
0-3 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         19     43
0-3 months     ki1114097-CMIN             BANGLADESH                     >5%              24     43
0-3 months     ki1114097-CMIN             BANGLADESH                     0%                0     43
0-3 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         43     81
0-3 months     ki1114097-CMIN             BRAZIL                         >5%              37     81
0-3 months     ki1114097-CMIN             BRAZIL                         0%                1     81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]          8     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%              11     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  0%                2     21
0-3 months     ki1114097-CMIN             PERU                           (0%, 5%]         45     93
0-3 months     ki1114097-CMIN             PERU                           >5%              45     93
0-3 months     ki1114097-CMIN             PERU                           0%                3     93
0-3 months     ki1114097-CONTENT          PERU                           (0%, 5%]         14     29
0-3 months     ki1114097-CONTENT          PERU                           >5%              14     29
0-3 months     ki1114097-CONTENT          PERU                           0%                1     29
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2366   3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             332   3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              916   3614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        137    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              88    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        184    229
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    229
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        164    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              60    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    239
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]        150    662
3-6 months     ki1000109-EE               PAKISTAN                       >5%              42    662
3-6 months     ki1000109-EE               PAKISTAN                       0%              470    662
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         46    156
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%             105    156
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                5    156
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        327    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        395    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             167    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             190    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              128    695
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         90    185
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    185
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    185
3-6 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         44     81
3-6 months     ki1114097-CMIN             BRAZIL                         >5%              36     81
3-6 months     ki1114097-CMIN             BRAZIL                         0%                1     81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         67    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%              60    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0%                2    129
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]        208    407
3-6 months     ki1114097-CMIN             PERU                           >5%             181    407
3-6 months     ki1114097-CMIN             PERU                           0%               18    407
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2402   3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             320   3680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              958   3680
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        132    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%              82    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                6    220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         99    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >5%               2    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0%               93    194
6-12 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]        179    224
6-12 months    ki0047075b-MAL-ED          INDIA                          >5%              42    224
6-12 months    ki0047075b-MAL-ED          INDIA                          0%                3    224
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%              77    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%               12    230
6-12 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]         96    237
6-12 months    ki0047075b-MAL-ED          PERU                           >5%             139    237
6-12 months    ki0047075b-MAL-ED          PERU                           0%                2    237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        159    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%               71    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        162    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    223
6-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          0      8
6-12 months    ki1000109-EE               PAKISTAN                       >5%               0      8
6-12 months    ki1000109-EE               PAKISTAN                       0%                8      8
6-12 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         36    138
6-12 months    ki1000109-ResPak           PAKISTAN                       >5%              99    138
6-12 months    ki1000109-ResPak           PAKISTAN                       0%                3    138
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         43    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             227    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               62    332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        312    482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             162    482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                8    482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        374    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             162    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        368    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             176    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              132    676
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         49    181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             125    181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                7    181
6-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         76    164
6-12 months    ki1114097-CMIN             BANGLADESH                     >5%              88    164
6-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    164
6-12 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         53     93
6-12 months    ki1114097-CMIN             BRAZIL                         >5%              39     93
6-12 months    ki1114097-CMIN             BRAZIL                         0%                1     93
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         81    173
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%              89    173
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                3    173
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]        190    360
6-12 months    ki1114097-CMIN             PERU                           >5%             163    360
6-12 months    ki1114097-CMIN             PERU                           0%                7    360
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        141    213
6-12 months    ki1114097-CONTENT          PERU                           >5%              66    213
6-12 months    ki1114097-CONTENT          PERU                           0%                6    213
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4047   6224
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             554   6224
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%             1623   6224
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        126    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%              74    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                6    206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]         91    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%               1    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0%               73    165
12-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]        181    225
12-24 months   ki0047075b-MAL-ED          INDIA                          >5%              41    225
12-24 months   ki0047075b-MAL-ED          INDIA                          0%                3    225
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        139    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%              76    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%               11    226
12-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         79    191
12-24 months   ki0047075b-MAL-ED          PERU                           >5%             111    191
12-24 months   ki0047075b-MAL-ED          PERU                           0%                1    191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        161    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        152    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              49    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    207
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        273    421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        310    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             141    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        265    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             107    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    495
12-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    138
12-24 months   ki1114097-CMIN             BANGLADESH                     >5%              75    138
12-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    138
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         17     50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              32     50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                1     50
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]        103    199
12-24 months   ki1114097-CMIN             PERU                           >5%              90    199
12-24 months   ki1114097-CMIN             PERU                           0%                6    199
12-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]         27     38
12-24 months   ki1114097-CONTENT          PERU                           >5%              11     38
12-24 months   ki1114097-CONTENT          PERU                           0%                0     38
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       4647   7128
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             649   7128
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%             1832   7128


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
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d76e1228-04da-4d62-8837-73b96a6146d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d76e1228-04da-4d62-8837-73b96a6146d3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                3.5719582   3.4939801   3.6499363
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                3.5524375   3.4448799   3.6599950
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                3.5392256   3.1366004   3.9418508
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                3.5829200   3.5009030   3.6649370
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  NA                3.5138535   3.3161103   3.7115967
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                3.8477798   2.8667723   4.8287874
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                3.7743372   3.6812174   3.8674570
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                3.9119499   3.8084288   4.0154710
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                4.0694720   3.8497221   4.2892220
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                3.2933297   3.2049828   3.3816766
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                3.3492684   3.2679078   3.4306290
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                3.2663450   3.1295974   3.4030925
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.4991487   3.4136929   3.5846045
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.3645493   3.2017793   3.5273193
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.5449278   3.1045521   3.9853035
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                2.4962163   2.2790213   2.7134113
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  NA                2.6510347   2.3003457   3.0017237
0-3 months     ki1000109-EE               PAKISTAN                       0%                   NA                2.7064167   2.6182537   2.7945798
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                2.6501201   2.2768900   3.0233502
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                3.2665868   2.8798234   3.6533502
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                3.2270347   2.0591313   4.3949381
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                3.2889218   3.2231602   3.3546835
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                3.3685145   3.2795685   3.4574606
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                3.2289648   3.0082436   3.4496861
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                3.4895380   3.4448924   3.5341836
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                3.4732758   3.4066976   3.5398540
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                3.3954828   3.1748022   3.6161634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                3.3625518   3.3149553   3.4101483
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                3.6924841   3.6380675   3.7469007
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                3.2931582   3.2540371   3.3322794
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                3.6349303   3.5978963   3.6719644
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                3.6666061   3.5921079   3.7411043
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                3.6360209   3.5611075   3.7109343
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.9507427   1.8853429   2.0161426
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                1.8982215   1.8210101   1.9754328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                1.8472373   1.5841576   2.1103170
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                1.9805196   1.9191958   2.0418434
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                1.9343389   1.8399771   2.0287008
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                2.1669056   2.0833621   2.2504490
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                2.0365523   1.9334906   2.1396140
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                2.0108674   1.9234566   2.0982782
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                1.8887965   1.5335853   2.2440077
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8315269   1.7506892   1.9123645
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.8690510   1.7441477   1.9939543
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.5432136   1.1170539   1.9693733
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                2.0834123   1.9482462   2.2185784
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  NA                1.8379135   1.6730523   2.0027747
3-6 months     ki1000109-EE               PAKISTAN                       0%                   NA                2.0218306   1.9510740   2.0925873
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                2.2010815   1.9347327   2.4674302
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                2.0168024   1.8436861   2.1899188
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                1.9632107   1.5342849   2.3921365
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                1.8397199   1.7808978   1.8985420
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                1.8167944   1.7368733   1.8967155
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                1.8580983   1.6024170   2.1137796
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.9520343   1.9094543   1.9946143
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                1.9862544   1.9266137   2.0458951
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                1.5518465   1.3674846   1.7362084
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.9928982   1.9502068   2.0355896
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                2.0120651   1.9747317   2.0493985
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                2.3411587   2.3036506   2.3786667
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             NA                1.9503075   1.8830724   2.0175426
3-6 months     ki1114097-CMIN             PERU                           >5%                  NA                1.8335279   1.7627437   1.9043122
3-6 months     ki1114097-CMIN             PERU                           0%                   NA                1.8937088   1.7157902   2.0716274
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                2.0736534   2.0175221   2.1297847
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                2.1060124   2.0120781   2.1999467
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                2.0933002   1.8015225   2.3850780
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                1.8943784   1.8593246   1.9294323
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                1.9135195   1.8460219   1.9810170
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                1.9026834   1.8432050   1.9621617
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.1107442   1.0780222   1.1434661
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                1.1208815   1.0830864   1.1586767
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                1.1059827   0.9057884   1.3061769
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                1.2386115   1.2091119   1.2681111
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                1.2152907   1.1701256   1.2604557
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                1.3650829   1.2984775   1.4316884
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.0219808   0.9789173   1.0650444
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9516713   0.8780468   1.0252959
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.9220925   0.6622293   1.1819557
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.9458253   0.8298524   1.0617981
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.9884524   0.8817701   1.0951348
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                3.0806445   2.8977972   3.2634917
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                1.1849936   1.1562260   1.2137611
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                1.1287873   1.0930491   1.1645256
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                1.2953553   1.1634082   1.4273024
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.1770718   1.1571514   1.1969922
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                1.1691751   1.1343552   1.2039950
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                1.0833128   0.9540340   1.2125915
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.2293247   1.2101663   1.2484831
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                1.3437691   1.3243079   1.3632303
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                1.4486875   1.4284752   1.4688997
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                1.1249280   1.0695244   1.1803315
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                1.1013574   1.0629526   1.1397623
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                1.1180774   0.9862295   1.2499253
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                1.1259940   1.0912646   1.1607233
6-12 months    ki1114097-CMIN             PERU                           >5%                  NA                1.0909531   1.0554367   1.1264695
6-12 months    ki1114097-CMIN             PERU                           0%                   NA                1.1246324   0.8395527   1.4097121
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                1.3000161   1.2629109   1.3371214
6-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                1.3126476   1.2638485   1.3614466
6-12 months    ki1114097-CONTENT          PERU                           0%                   NA                1.1978322   1.0925766   1.3030879
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                1.1983451   1.1865009   1.2101894
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                1.1957381   1.1657106   1.2257656
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                1.2182759   1.1971867   1.2393651
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8344432   0.8151416   0.8537448
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.8582637   0.8301220   0.8864054
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.9366302   0.8422261   1.0310343
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.8639842   0.8448962   0.8830722
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.8561933   0.8321202   0.8802665
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.8688247   0.8235323   0.9141170
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7695752   0.7413204   0.7978300
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7641858   0.7221070   0.8062646
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7009788   0.5560805   0.8458771
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.7479436   0.7291224   0.7667648
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.7533846   0.7301393   0.7766299
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.8750448   0.8404584   0.9096312
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8631815   0.8483288   0.8780342
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.8474963   0.8266780   0.8683146
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.8107911   0.7462225   0.8753597
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8923107   0.8784158   0.9062056
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.8275656   0.8159116   0.8392196
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.9164916   0.9060185   0.9269647
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.8401537   0.8156477   0.8646597
12-24 months   ki1114097-CMIN             PERU                           >5%                  NA                0.8378894   0.8098563   0.8659225
12-24 months   ki1114097-CMIN             PERU                           0%                   NA                0.8209425   0.6950243   0.9468607
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.8494003   0.8433586   0.8554421
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.8350376   0.8202314   0.8498439
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.8517557   0.8410799   0.8624314


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2032152   1.1928290   1.2136015
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8492552   0.8437966   0.8547138


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0195207   -0.1523710    0.1133296
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0327326   -0.4428394    0.3773743
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  (0%, 5%]          -0.0690665   -0.2831440    0.1450110
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   (0%, 5%]           0.2648598   -0.7195702    1.2492899
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]           0.1376127    0.0009339    0.2742915
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.2951348    0.0585803    0.5316894
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]           0.0559386   -0.0640835    0.1759608
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.0269848   -0.1896804    0.1357109
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.1345994   -0.3185649    0.0493660
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0457791   -0.4027929    0.4943511
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]           0.1548184   -0.2566821    0.5663189
0-3 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]           0.2102004   -0.0222615    0.4426624
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]           0.6164667    0.0789849    1.1539485
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]           0.5769146   -0.6491764    1.8030055
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0795927   -0.0264463    0.1856317
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]          -0.0599570   -0.2889799    0.1690659
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0162622   -0.0929586    0.0604342
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0940552   -0.3182094    0.1300990
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.3299323    0.2557396    0.4041250
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.0693936   -0.1305956   -0.0081915
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0316758   -0.0515613    0.1149128
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0010906   -0.0831830    0.0853641
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0525213   -0.1537079    0.0486654
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.1035055   -0.3745923    0.1675814
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0461807   -0.1545466    0.0621853
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.1863859    0.0879385    0.2848333
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0256849   -0.1608232    0.1094534
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.1477558   -0.5176162    0.2221046
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0375241   -0.1112561    0.1863043
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.2883133   -0.7220722    0.1454456
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          -0.2454988   -0.4581048   -0.0328928
3-6 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          -0.0615817   -0.2132622    0.0900989
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          -0.1842790   -0.5019438    0.1333858
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          -0.2378708   -0.7427658    0.2670243
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0229255   -0.1203794    0.0745285
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0183784   -0.2430874    0.2798442
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]           0.0342201   -0.0388778    0.1073179
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.4001878   -0.5891057   -0.2112699
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0191669   -0.0366514    0.0749852
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.3482604    0.2905290    0.4059919
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.1167796   -0.2144326   -0.0191266
3-6 months     ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0565987   -0.2467882    0.1335908
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0323590   -0.0770685    0.1417865
3-6 months     ki1114097-CONTENT          PERU                           0%                   (0%, 5%]           0.0196469   -0.2774810    0.3167748
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0191410   -0.0537643    0.0920463
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0083049   -0.0583718    0.0749817
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0101374   -0.0398547    0.0601294
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0047615   -0.2076123    0.1980893
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0233209   -0.0769947    0.0303529
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.1264714    0.0537421    0.1992007
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0703095   -0.1556034    0.0149844
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0998883   -0.3632956    0.1635189
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]           0.0426272   -0.1152515    0.2005058
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]           2.1348192    1.9221045    2.3475339
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0562062   -0.1020843   -0.0103282
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.1103617   -0.0246850    0.2454085
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0078967   -0.0480121    0.0322187
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0937591   -0.2245635    0.0370454
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.1144444    0.0880666    0.1408223
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.2193628    0.1933942    0.2453313
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  (0%, 5%]          -0.0235705   -0.0909833    0.0438423
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   (0%, 5%]          -0.0068506   -0.1498660    0.1361649
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0350409   -0.0847152    0.0146335
6-12 months    ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0013616   -0.2885489    0.2858258
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0126314   -0.0486723    0.0739352
6-12 months    ki1114097-CONTENT          PERU                           0%                   (0%, 5%]          -0.1021839   -0.2137883    0.0094205
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0026070   -0.0339801    0.0287660
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0199307   -0.0037166    0.0435781
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0238205   -0.0103044    0.0579454
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.1021870    0.0058299    0.1985441
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0077909   -0.0385185    0.0229367
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0048404   -0.0443128    0.0539936
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0053894   -0.0560743    0.0452955
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0685964   -0.2162238    0.0790310
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0054410   -0.0244686    0.0353505
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.1271012    0.0877254    0.1664771
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0156852   -0.0412587    0.0098883
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0523903   -0.1186452    0.0138645
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0647451   -0.0828474   -0.0466428
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0241809    0.0066974    0.0416644
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0022643   -0.0394986    0.0349701
12-24 months   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0192111   -0.1474918    0.1090695
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0143627   -0.0298210    0.0010957
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0023554   -0.0092897    0.0140005
