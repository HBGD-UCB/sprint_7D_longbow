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

unadjusted

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
![](/tmp/65b7eb68-01f1-4f5a-8b98-ab7597d8d1e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/65b7eb68-01f1-4f5a-8b98-ab7597d8d1e6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                3.7687201   3.6712992   3.8661410
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                3.8942715   3.7753254   4.0132176
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                3.9273799   3.5382511   4.3165087
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                3.2887371   3.1898603   3.3876140
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                3.3391234   3.2532264   3.4250204
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                3.2629469   3.0134929   3.5124008
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                3.5028087   3.4166446   3.5889728
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                3.3948863   3.2220050   3.5677676
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                3.5911882   3.1254253   4.0569511
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                2.4945294   2.2706290   2.7184297
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  NA                2.6517123   2.3007076   3.0027170
0-3 months     ki1000109-EE               PAKISTAN                       0%                   NA                2.7068044   2.6184272   2.7951817
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                2.6501201   2.2768900   3.0233502
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                3.2665868   2.8798234   3.6533502
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                3.2270347   2.0591313   4.3949381
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                3.2886444   3.2203051   3.3569837
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                3.3690680   3.2726622   3.4654738
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                3.2162177   2.9556877   3.4767477
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                3.4906874   3.4442788   3.5370959
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                3.4768633   3.4025354   3.5511913
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                3.3743899   3.1094074   3.6393724
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                3.3126807   3.2589411   3.3664203
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                3.3596529   3.2822280   3.4370779
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                3.1907450   3.1248074   3.2566826
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                3.6349303   3.5978963   3.6719644
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                3.6666061   3.5921079   3.7411043
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                3.6360209   3.5611075   3.7109343
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.9507427   1.8853429   2.0161426
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                1.8982215   1.8210101   1.9754328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                1.8472373   1.5841576   2.1103170
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                1.9842986   1.9178041   2.0507932
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                1.9240741   1.8174935   2.0306547
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                2.0599397   1.8084359   2.3114435
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                2.0365523   1.9334906   2.1396140
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                2.0108674   1.9234566   2.0982782
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                1.8887965   1.5335853   2.2440077
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.8315269   1.7506892   1.9123645
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                1.8690510   1.7441477   1.9939543
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                1.5432136   1.1170539   1.9693733
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                2.0824419   1.9445218   2.2203620
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  NA                1.8372820   1.6711725   2.0033916
3-6 months     ki1000109-EE               PAKISTAN                       0%                   NA                2.0222030   1.9512985   2.0931075
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                2.2010815   1.9347327   2.4674302
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                2.0168024   1.8436861   2.1899188
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                1.9632107   1.5342849   2.3921365
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                1.8412369   1.7813154   1.9011585
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                1.8144432   1.7307937   1.8980926
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                1.8665971   1.5906770   2.1425172
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.9550073   1.9120731   1.9979416
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                2.0042910   1.9430653   2.0655167
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                1.7684307   1.5043689   2.0324925
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.9910449   1.9402754   2.0418145
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                1.9625378   1.8994428   2.0256329
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                2.1134607   2.0267330   2.2001885
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             NA                1.9487310   1.8820244   2.0154376
3-6 months     ki1114097-CMIN             PERU                           >5%                  NA                1.8312694   1.7601682   1.9023706
3-6 months     ki1114097-CMIN             PERU                           0%                   NA                1.8934083   1.7011312   2.0856855
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                2.0736534   2.0175221   2.1297847
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                2.1060124   2.0120781   2.1999467
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                2.0933002   1.8015225   2.3850780
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                1.8944696   1.8584248   1.9305145
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                1.9095830   1.8361102   1.9830557
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                1.9043948   1.8409850   1.9678045
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                1.1107442   1.0780222   1.1434661
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                1.1208815   1.0830864   1.1586767
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                1.1059827   0.9057884   1.3061769
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                1.2331240   1.2026491   1.2635988
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                1.2041198   1.1547392   1.2535004
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                1.2145621   1.0932459   1.3358782
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                1.0219808   0.9789173   1.0650444
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9516713   0.8780468   1.0252959
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.9220925   0.6622293   1.1819557
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                1.0214558   0.8019417   1.2409700
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.9717640   0.8928329   1.0506952
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                1.1586791   0.9189231   1.3984351
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                1.1849936   1.1562260   1.2137611
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                1.1287873   1.0930491   1.1645256
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                1.2953553   1.1634082   1.4273024
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                1.1770718   1.1571514   1.1969922
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                1.1691751   1.1343552   1.2039950
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                1.0833128   0.9540340   1.2125915
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                1.2204058   1.1967662   1.2440453
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                1.2428867   1.2081058   1.2776676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                1.2299950   1.1915838   1.2684063
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                1.1249280   1.0695244   1.1803315
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                1.1013574   1.0629526   1.1397623
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                1.1180774   0.9862295   1.2499253
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                1.1259940   1.0912646   1.1607233
6-12 months    ki1114097-CMIN             PERU                           >5%                  NA                1.0909531   1.0554367   1.1264695
6-12 months    ki1114097-CMIN             PERU                           0%                   NA                1.1246324   0.8395527   1.4097121
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                1.3000161   1.2629109   1.3371214
6-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                1.3126476   1.2638485   1.3614466
6-12 months    ki1114097-CONTENT          PERU                           0%                   NA                1.1978322   1.0925766   1.3030879
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                1.1980593   1.1859363   1.2101822
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                1.1935448   1.1616700   1.2254196
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                1.2193726   1.1971454   1.2415998
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.8344432   0.8151416   0.8537448
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.8582637   0.8301220   0.8864054
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.9366302   0.8422261   1.0310343
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                0.8642923   0.8446919   0.8838928
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                0.8559084   0.8297682   0.8820487
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                0.8691273   0.7952472   0.9430074
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7695752   0.7413204   0.7978300
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7641858   0.7221070   0.8062646
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7009788   0.5560805   0.8458771
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.7479436   0.7291224   0.7667648
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.7533846   0.7301393   0.7766299
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.8750448   0.8404584   0.9096312
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                0.8631815   0.8483288   0.8780342
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                0.8474963   0.8266780   0.8683146
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                0.8107911   0.7462225   0.8753597
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.8839485   0.8672931   0.9006039
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.8511357   0.8256656   0.8766058
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.8787864   0.8575681   0.9000046
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.8401537   0.8156477   0.8646597
12-24 months   ki1114097-CMIN             PERU                           >5%                  NA                0.8378894   0.8098563   0.8659225
12-24 months   ki1114097-CMIN             PERU                           0%                   NA                0.8209425   0.6950243   0.9468607
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.8493316   0.8431814   0.8554819
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.8372224   0.8203177   0.8541270
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.8533240   0.8418449   0.8648030


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
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]           0.1255514   -0.0281985    0.2793012
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.1586598   -0.2424787    0.5597982
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]           0.0503863   -0.0805905    0.1813631
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.0257903   -0.2941257    0.2425451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.1079224   -0.3010860    0.0852412
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0883795   -0.3852864    0.5620454
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]           0.1571829   -0.2591530    0.5735189
0-3 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]           0.2122751   -0.0284362    0.4529863
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]           0.6164667    0.0789849    1.1539485
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]           0.5769146   -0.6491764    1.8030055
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0804236   -0.0377472    0.1985945
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]          -0.0724267   -0.3417706    0.1969172
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0138240   -0.1014505    0.0738024
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.1162975   -0.3853132    0.1527183
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0469722   -0.0472751    0.1412196
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.1219357   -0.2069987   -0.0368727
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0316758   -0.0515613    0.1149128
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0010906   -0.0831830    0.0853641
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0525213   -0.1537079    0.0486654
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.1035055   -0.3745923    0.1675814
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0602245   -0.1858467    0.0653977
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0756411   -0.1845044    0.3357866
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0256849   -0.1608232    0.1094534
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.1477558   -0.5176162    0.2221046
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0375241   -0.1112561    0.1863043
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.2883133   -0.7220722    0.1454456
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          -0.2451599   -0.4610634   -0.0292563
3-6 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          -0.0602389   -0.2153176    0.0948398
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          -0.1842790   -0.5019438    0.1333858
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          -0.2378708   -0.7427658    0.2670243
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0267938   -0.1296909    0.0761034
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0253601   -0.2569916    0.3077119
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]           0.0492837   -0.0254956    0.1240629
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.1865766   -0.4541060    0.0809528
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0285071   -0.1094919    0.0524776
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.1224158    0.0219208    0.2229108
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.1174616   -0.2149559   -0.0199672
3-6 months     ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0553226   -0.2588424    0.1481971
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0323590   -0.0770685    0.1417865
3-6 months     ki1114097-CONTENT          PERU                           0%                   (0%, 5%]           0.0196469   -0.2774810    0.3167748
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0151134   -0.0647671    0.0949938
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0099252   -0.0625557    0.0824060
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0101374   -0.0398547    0.0601294
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0047615   -0.2076123    0.1980893
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0290042   -0.0870315    0.0290230
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]          -0.0185619   -0.1436472    0.1065233
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0703095   -0.1556034    0.0149844
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0998883   -0.3632956    0.1635189
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]          -0.0496918   -0.2829654    0.1835818
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]           0.1372233   -0.1878450    0.4622916
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0562062   -0.1020843   -0.0103282
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.1103617   -0.0246850    0.2454085
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0078967   -0.0480121    0.0322187
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0937591   -0.2245635    0.0370454
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0224809   -0.0195731    0.0645349
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0095892   -0.0355134    0.0546919
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
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0045145   -0.0380157    0.0289868
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0213133   -0.0039207    0.0465474
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0238205   -0.0103044    0.0579454
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.1021870    0.0058299    0.1985441
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0083839   -0.0410564    0.0242886
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0048350   -0.0716009    0.0812709
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
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0328128   -0.0632452   -0.0023804
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.0051621   -0.0321365    0.0218122
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0022643   -0.0394986    0.0349701
12-24 months   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0192111   -0.1474918    0.1090695
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0121093   -0.0297419    0.0055233
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0039923   -0.0085709    0.0165555
