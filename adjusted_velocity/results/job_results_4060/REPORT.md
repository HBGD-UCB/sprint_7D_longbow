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
![](/tmp/3ba2f887-62bf-46e6-ac57-2286ae006f84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3ba2f887-62bf-46e6-ac57-2286ae006f84/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0338626   -0.0730833    0.0053581
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0300587   -0.0855574    0.0254400
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0794143   -0.2987633    0.1399348
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             NA                -0.0189903   -0.0609969    0.0230162
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  NA                -0.0425348   -0.1361379    0.0510683
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   NA                 0.1000734   -0.3476191    0.5477659
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0613737    0.0167587    0.1059887
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.0976070    0.0400419    0.1551722
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1163680   -0.0342251    0.2669611
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.1462259   -0.1892022   -0.1032496
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1375471   -0.1792558   -0.0958384
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1126237    0.0551011    0.1701464
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0323152   -0.0743650    0.0097345
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0993871   -0.1887651   -0.0100091
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0531462   -0.1433157    0.2496082
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.4870258   -0.5952550   -0.3787966
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  NA                -0.3696347   -0.5367285   -0.2025409
0-3 months     ki1000109-EE               PAKISTAN                       0%                   NA                -0.3667728   -0.4110092   -0.3225363
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -0.3896507   -0.5824027   -0.1968987
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                -0.1071871   -0.3019080    0.0875338
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.0993461   -0.7184068    0.5197146
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.1295193   -0.1622581   -0.0967806
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0990526   -0.1417166   -0.0563885
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1250127   -0.2315123   -0.0185130
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0324772   -0.0537057   -0.0112487
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0565326   -0.0923010   -0.0207643
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0804829   -0.1877391    0.0267732
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.1004821   -0.1224622   -0.0785021
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0078702   -0.0165470    0.0322875
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.1245381   -0.1420993   -0.1069770
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0636292    0.0466807    0.0805777
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.0829404    0.0502931    0.1155877
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0718683    0.0407349    0.1030017
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0135714   -0.0439933    0.0168505
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0333099   -0.0701113    0.0034915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0686357   -0.1895569    0.0522855
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0114848   -0.0429368    0.0199673
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0464062   -0.0968892    0.0040769
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0220489   -0.0986850    0.1427829
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0366948   -0.0118203    0.0852098
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                 0.0231548   -0.0182211    0.0645308
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0280187   -0.1855631    0.1295258
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0689888   -0.1077479   -0.0302296
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0576089   -0.1167937    0.0015758
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1861760   -0.3660316   -0.0063204
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                 0.0976056    0.0342424    0.1609687
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  NA                -0.0077661   -0.0804448    0.0649127
3-6 months     ki1000109-EE               PAKISTAN                       0%                   NA                 0.0682978    0.0352379    0.1013577
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0937821   -0.0309671    0.2185312
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                 0.0154690   -0.0653202    0.0962583
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.0222658   -0.2236362    0.2681678
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0458560   -0.0723544   -0.0193575
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0540938   -0.0906529   -0.0175347
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0148045   -0.1109501    0.0813411
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0298567   -0.0499090   -0.0098045
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0154538   -0.0435922    0.0126847
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.1058348   -0.2339952    0.0223256
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0220483    0.0030567    0.0410399
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0413228    0.0250885    0.0575571
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1388352    0.1238309    0.1538395
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0324547   -0.0636705   -0.0012388
3-6 months     ki1114097-CMIN             PERU                           >5%                  NA                -0.0858883   -0.1197131   -0.0520635
3-6 months     ki1114097-CMIN             PERU                           0%                   NA                -0.0497796   -0.1324425    0.0328833
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 0.0086783   -0.0174770    0.0348337
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                 0.0197760   -0.0247381    0.0642901
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.0320500   -0.1094757    0.1735756
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0113028   -0.0275121    0.0049065
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.0001558   -0.0301271    0.0304386
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0069280   -0.0336777    0.0198217
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0841403   -0.0977237   -0.0705568
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0749665   -0.0909537   -0.0589792
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0848147   -0.1681690   -0.0014604
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0432689   -0.0558038   -0.0307339
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0566242   -0.0770814   -0.0361671
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0638262   -0.1132039   -0.0144485
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1154916   -0.1336607   -0.0973224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1466442   -0.1777243   -0.1155640
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1466853   -0.2569895   -0.0363810
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1348108   -0.1823727   -0.0872489
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1184560   -0.1628344   -0.0740776
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.7619254    0.6857512    0.8380996
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0459456   -0.0577808   -0.0341104
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0698028   -0.0847911   -0.0548146
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0062561   -0.0551762    0.0676885
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0611059   -0.0690048   -0.0532070
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0647138   -0.0789490   -0.0504787
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0875554   -0.1422268   -0.0328840
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0313804   -0.0396586   -0.0231021
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0070514   -0.0014615    0.0155642
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0358935    0.0271204    0.0446666
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0701455   -0.0931843   -0.0471068
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.0772492   -0.0933620   -0.0611364
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0736743   -0.1280294   -0.0193192
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0900294   -0.1048624   -0.0751963
6-12 months    ki1114097-CMIN             PERU                           >5%                  NA                -0.0998961   -0.1148219   -0.0849702
6-12 months    ki1114097-CMIN             PERU                           0%                   NA                -0.0860132   -0.2036044    0.0315780
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0222043   -0.0383075   -0.0061010
6-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.0213794   -0.0415991   -0.0011596
6-12 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.0495359   -0.1068776    0.0078057
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0406926   -0.0457149   -0.0356702
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0381051   -0.0503061   -0.0259041
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0323208   -0.0410549   -0.0235866
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0229198   -0.0292716   -0.0165680
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0115037   -0.0208794   -0.0021280
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0103792   -0.0346191    0.0553775
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0293961   -0.0356949   -0.0230973
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0314998   -0.0394502   -0.0235494
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0515685   -0.0664552   -0.0366818
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0395409   -0.0489112   -0.0301706
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0365514   -0.0510210   -0.0220819
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0565595   -0.1033366   -0.0097824
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0427077   -0.0485663   -0.0368490
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0373255   -0.0451517   -0.0294993
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0046748   -0.0209586    0.0116090
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0070190   -0.0119018   -0.0021363
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0105101   -0.0168004   -0.0042197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0121198   -0.0281248    0.0038851
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0004525   -0.0052210    0.0043159
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0240088   -0.0279739   -0.0200437
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0124989    0.0087548    0.0162431
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0316455   -0.0398290   -0.0234619
12-24 months   ki1114097-CMIN             PERU                           >5%                  NA                -0.0251781   -0.0354471   -0.0149091
12-24 months   ki1114097-CMIN             PERU                           0%                   NA                -0.0483655   -0.1012246    0.0044937
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0149118   -0.0169855   -0.0128381
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0176717   -0.0228003   -0.0125431
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0147275   -0.0184284   -0.0110266


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383528   -0.0427166   -0.0339890
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0146006   -0.0164813   -0.0127200


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0038039   -0.0641547    0.0717625
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0455517   -0.2683795    0.1772762
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%                  (0%, 5%]          -0.0235445   -0.1261412    0.0790523
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                   (0%, 5%]           0.1190637   -0.3305952    0.5687226
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]           0.0362333   -0.0366322    0.1090988
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0549943   -0.1012596    0.2112482
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]           0.0086788   -0.0480048    0.0653624
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]           0.2588496    0.1883088    0.3293905
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0670719   -0.1654649    0.0313212
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0854614   -0.1154586    0.2863815
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]           0.1173911   -0.0805173    0.3152995
0-3 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]           0.1202530    0.0048133    0.2356928
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]           0.2824636    0.0084754    0.5564518
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]           0.2903046   -0.3580699    0.9386791
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0304668   -0.0205812    0.0815147
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0045067   -0.1061348    0.1151482
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0240554   -0.0656461    0.0175353
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0480057   -0.1573420    0.0613305
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.1083523    0.0749561    0.1417486
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.0240560   -0.0520519    0.0039399
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0193112   -0.0164146    0.0550370
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0082391   -0.0257155    0.0421938
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0197385   -0.0674861    0.0280091
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0550644   -0.1797537    0.0696249
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0349214   -0.0943920    0.0245492
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0335337   -0.0912276    0.1582950
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0135399   -0.0773026    0.0502228
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.0647134   -0.2295587    0.1001319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0113798   -0.0593669    0.0821266
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.1171873   -0.3011718    0.0667973
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          -0.1053716   -0.2015520   -0.0091912
3-6 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          -0.0293078   -0.1003783    0.0417628
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          -0.0783130   -0.2269376    0.0703115
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          -0.0715163   -0.3472519    0.2042194
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0082378   -0.0526490    0.0361733
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0310515   -0.0682855    0.1303885
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]           0.0144030   -0.0199494    0.0487554
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0759780   -0.2056398    0.0536838
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0192745   -0.0030947    0.0416437
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.1167869    0.0944945    0.1390793
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0534336   -0.0994558   -0.0074114
3-6 months     ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0173250   -0.1056750    0.0710251
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0110977   -0.0405319    0.0627272
3-6 months     ki1114097-CONTENT          PERU                           0%                   (0%, 5%]           0.0233716   -0.1205506    0.1672938
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0114586   -0.0215274    0.0444446
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0043748   -0.0256602    0.0344098
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0091738   -0.0118048    0.0301524
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0006745   -0.0851283    0.0837793
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0133553   -0.0373470    0.0106363
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]          -0.0205573   -0.0715008    0.0303862
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0311526   -0.0671539    0.0048487
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0311937   -0.1429843    0.0805970
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]           0.0163548   -0.0487414    0.0814510
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]           0.8967362    0.8086522    0.9848202
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0238572   -0.0429549   -0.0047596
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0522017   -0.0103603    0.1147637
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0036080   -0.0198878    0.0126719
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0264495   -0.0816885    0.0287896
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0384318    0.0264704    0.0503931
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0672739    0.0554407    0.0791071
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  (0%, 5%]          -0.0071036   -0.0352178    0.0210106
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   (0%, 5%]          -0.0035287   -0.0625648    0.0555074
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0098667   -0.0309095    0.0111761
6-12 months    ki1114097-CMIN             PERU                           0%                   (0%, 5%]           0.0040161   -0.1145069    0.1225392
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0008249   -0.0250237    0.0266736
6-12 months    ki1114097-CONTENT          PERU                           0%                   (0%, 5%]          -0.0273316   -0.0868915    0.0322283
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0025875   -0.0101749    0.0153499
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0083718   -0.0014340    0.0181776
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0114161    0.0000914    0.0227408
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.0332990   -0.0121454    0.0787434
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0021037   -0.0120009    0.0077935
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]          -0.0221724   -0.0383427   -0.0060022
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0029894   -0.0142492    0.0202280
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0170187   -0.0647250    0.0306877
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0053821   -0.0043940    0.0151583
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0380328    0.0207272    0.0553385
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0034910   -0.0114540    0.0044720
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0051008   -0.0218340    0.0116324
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0235563   -0.0298541   -0.0172584
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0129515    0.0067520    0.0191510
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]           0.0064674   -0.0066637    0.0195984
12-24 months   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0167200   -0.0702089    0.0367689
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0027599   -0.0081157    0.0025958
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0001843   -0.0038496    0.0042183
