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
![](/tmp/8aaf2e60-894f-48d4-9f25-b1542e7ba916/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8aaf2e60-894f-48d4-9f25-b1542e7ba916/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





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
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                 0.0579632    0.0134060    0.1025205
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                 0.0967573    0.0392628    0.1542519
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.1166055   -0.0575043    0.2907153
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.1705063   -0.2200471   -0.1209655
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                -0.1486187   -0.1937319   -0.1035056
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.1650288   -0.2852999   -0.0447578
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0318583   -0.0739995    0.0102829
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1085059   -0.1978668   -0.0191451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0467118   -0.1871750    0.2805986
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.4897012   -0.6051157   -0.3742867
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  NA                -0.3714626   -0.5478994   -0.1950257
0-3 months     ki1000109-EE               PAKISTAN                       0%                   NA                -0.3666886   -0.4113487   -0.3220285
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                -0.3896507   -0.5824027   -0.1968987
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                -0.1071871   -0.3019080    0.0875338
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                -0.0993461   -0.7184068    0.5197146
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.1298043   -0.1638288   -0.0957799
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0996040   -0.1463037   -0.0529043
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.1263611   -0.2544048    0.0016827
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0324755   -0.0537051   -0.0112459
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0565380   -0.0923110   -0.0207649
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0804683   -0.1877267    0.0267900
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.1188772   -0.1441702   -0.0935843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.1041662   -0.1421972   -0.0661352
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.1577639   -0.1891904   -0.1263374
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0624692    0.0447623    0.0801761
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                 0.0908221    0.0517355    0.1299086
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0713089    0.0353213    0.1072965
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0135714   -0.0439933    0.0168505
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0333099   -0.0701113    0.0034915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0686357   -0.1895569    0.0522855
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0114775   -0.0429322    0.0199772
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0464114   -0.0969092    0.0040863
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   NA                 0.0220009   -0.0987531    0.1427549
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0366948   -0.0118203    0.0852098
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  NA                 0.0231548   -0.0182211    0.0645308
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   NA                -0.0280187   -0.1855631    0.1295258
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0689888   -0.1077479   -0.0302296
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0576089   -0.1167937    0.0015758
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1861760   -0.3660316   -0.0063204
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                 0.0957024    0.0312344    0.1601704
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  NA                -0.0077144   -0.0808005    0.0653718
3-6 months     ki1000109-EE               PAKISTAN                       0%                   NA                 0.0689053    0.0357442    0.1020664
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0937821   -0.0309671    0.2185312
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  NA                 0.0154690   -0.0653202    0.0962583
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.0222658   -0.2236362    0.2681678
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0463931   -0.0737550   -0.0190311
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0616089   -0.1007008   -0.0225170
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0199552   -0.1432948    0.1033843
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0301617   -0.0503588   -0.0099647
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0144908   -0.0429704    0.0139888
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.1086262   -0.2402787    0.0230263
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0190689   -0.0046450    0.0427828
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                 0.0024026   -0.0258683    0.0306735
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0856443    0.0461557    0.1251328
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0332248   -0.0642132   -0.0022364
3-6 months     ki1114097-CMIN             PERU                           >5%                  NA                -0.0864308   -0.1203950   -0.0524667
3-6 months     ki1114097-CMIN             PERU                           0%                   NA                -0.0499768   -0.1393599    0.0394062
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             NA                 0.0086783   -0.0174770    0.0348337
3-6 months     ki1114097-CONTENT          PERU                           >5%                  NA                 0.0197760   -0.0247381    0.0642901
3-6 months     ki1114097-CONTENT          PERU                           0%                   NA                 0.0320500   -0.1094757    0.1735756
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0116108   -0.0282554    0.0050338
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0007350   -0.0333003    0.0318302
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0054410   -0.0345484    0.0236664
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0841403   -0.0977237   -0.0705568
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0749665   -0.0909537   -0.0589792
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                -0.0848147   -0.1681690   -0.0014604
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0432679   -0.0558031   -0.0307328
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0566245   -0.0770822   -0.0361668
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0638360   -0.1132196   -0.0144524
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.1154916   -0.1336607   -0.0973224
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.1466442   -0.1777243   -0.1155640
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.1466853   -0.2569895   -0.0363810
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                -0.1044145   -0.1969206   -0.0119084
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                -0.1252209   -0.1571231   -0.0933187
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                -0.0474962   -0.1450847    0.0500923
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0459456   -0.0577808   -0.0341104
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0698028   -0.0847911   -0.0548146
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.0062561   -0.0551762    0.0676885
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0611059   -0.0690048   -0.0532070
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0647138   -0.0789490   -0.0504787
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0875554   -0.1422268   -0.0328840
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0347222   -0.0445855   -0.0248588
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0243981   -0.0389125   -0.0098836
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0323232   -0.0485004   -0.0161460
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                -0.0701455   -0.0931843   -0.0471068
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                -0.0772492   -0.0933620   -0.0611364
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                -0.0736743   -0.1280294   -0.0193192
6-12 months    ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0900294   -0.1048624   -0.0751963
6-12 months    ki1114097-CMIN             PERU                           >5%                  NA                -0.0998961   -0.1148219   -0.0849702
6-12 months    ki1114097-CMIN             PERU                           0%                   NA                -0.0860132   -0.2036044    0.0315780
6-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]             NA                -0.0222043   -0.0383075   -0.0061010
6-12 months    ki1114097-CONTENT          PERU                           >5%                  NA                -0.0213794   -0.0415991   -0.0011596
6-12 months    ki1114097-CONTENT          PERU                           0%                   NA                -0.0495359   -0.1068776    0.0078057
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0406386   -0.0457851   -0.0354922
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0385719   -0.0516731   -0.0254707
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0325781   -0.0418370   -0.0233192
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                -0.0229198   -0.0292716   -0.0165680
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                -0.0115037   -0.0208794   -0.0021280
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.0103792   -0.0346191    0.0553775
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             NA                -0.0285162   -0.0350371   -0.0219953
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  NA                -0.0303234   -0.0387910   -0.0218558
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   NA                -0.0364747   -0.0603845   -0.0125649
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0395409   -0.0489112   -0.0301706
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                -0.0365514   -0.0510210   -0.0220819
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0565595   -0.1033366   -0.0097824
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0427077   -0.0485663   -0.0368490
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                -0.0373255   -0.0451517   -0.0294993
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                -0.0046748   -0.0209586    0.0116090
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             NA                -0.0070190   -0.0119018   -0.0021363
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  NA                -0.0105101   -0.0168004   -0.0042197
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   NA                -0.0121198   -0.0281248    0.0038851
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0037493   -0.0094514    0.0019528
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                -0.0142792   -0.0226714   -0.0058869
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0025706   -0.0097471    0.0046058
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             NA                -0.0316455   -0.0398290   -0.0234619
12-24 months   ki1114097-CMIN             PERU                           >5%                  NA                -0.0251781   -0.0354471   -0.0149091
12-24 months   ki1114097-CMIN             PERU                           0%                   NA                -0.0483655   -0.1012246    0.0044937
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0147895   -0.0169113   -0.0126676
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                -0.0151777   -0.0214655   -0.0088899
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0139172   -0.0179006   -0.0099338


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
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]           0.0387941   -0.0339450    0.1115332
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0586422   -0.1210786    0.2383630
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]           0.0218876   -0.0451161    0.0888912
0-3 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]           0.0054775   -0.1245972    0.1355521
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0766476   -0.1754466    0.0221513
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]           0.0785701   -0.1590829    0.3162230
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]           0.1182386   -0.0925942    0.3290714
0-3 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]           0.1230126   -0.0007413    0.2467665
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]           0.2824636    0.0084754    0.5564518
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]           0.2903046   -0.3580699    0.9386791
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]           0.0302003   -0.0275796    0.0879803
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0034433   -0.1290440    0.1359305
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0240624   -0.0656606    0.0175358
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0479928   -0.1573319    0.0613463
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0147110   -0.0309627    0.0603848
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          -0.0388867   -0.0792271    0.0014538
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0283529   -0.0147012    0.0714069
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0088397   -0.0316754    0.0493547
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          -0.0197385   -0.0674861    0.0280091
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0550644   -0.1797537    0.0696249
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0349339   -0.0944270    0.0245591
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]           0.0334784   -0.0913051    0.1582619
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          -0.0135399   -0.0773026    0.0502228
3-6 months     ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          -0.0647134   -0.2295587    0.1001319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]           0.0113798   -0.0593669    0.0821266
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.1171873   -0.3011718    0.0667973
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          -0.1034168   -0.2008730   -0.0059606
3-6 months     ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          -0.0267971   -0.0992939    0.0456997
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          -0.0783130   -0.2269376    0.0703115
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          -0.0715163   -0.3472519    0.2042194
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0152158   -0.0629322    0.0325005
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0264378   -0.0999003    0.1527759
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]           0.0156709   -0.0192433    0.0505852
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0784645   -0.2116572    0.0547283
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0166663   -0.0535661    0.0202334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0665753    0.0205135    0.1126372
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          -0.0532061   -0.0991826   -0.0072295
3-6 months     ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0167521   -0.1113544    0.0778503
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           >5%                  (0%, 5%]           0.0110977   -0.0405319    0.0627272
3-6 months     ki1114097-CONTENT          PERU                           0%                   (0%, 5%]           0.0233716   -0.1205506    0.1672938
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0108758   -0.0248512    0.0466027
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0061698   -0.0272039    0.0395435
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0091738   -0.0118048    0.0301524
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          -0.0006745   -0.0851283    0.0837793
6-12 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0133566   -0.0373493    0.0106361
6-12 months    ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]          -0.0205681   -0.0715177    0.0303816
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          -0.0311526   -0.0671539    0.0048487
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          -0.0311937   -0.1429843    0.0805970
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]          -0.0208064   -0.1186590    0.0770461
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]           0.0569183   -0.0775469    0.1913835
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          -0.0238572   -0.0429549   -0.0047596
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]           0.0522017   -0.0103603    0.1147637
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  (0%, 5%]          -0.0036080   -0.0198878    0.0126719
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   (0%, 5%]          -0.0264495   -0.0816885    0.0287896
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]           0.0103241   -0.0072245    0.0278728
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0023990   -0.0165480    0.0213460
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
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]           0.0020667   -0.0117378    0.0158712
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0080606   -0.0025121    0.0186332
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]           0.0114161    0.0000914    0.0227408
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]           0.0332990   -0.0121454    0.0787434
12-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  (0%, 5%]          -0.0018072   -0.0124946    0.0088803
12-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   (0%, 5%]          -0.0079585   -0.0327415    0.0168246
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
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          -0.0105299   -0.0206759   -0.0003838
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]           0.0011787   -0.0079873    0.0103446
12-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]           0.0064674   -0.0066637    0.0195984
12-24 months   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          -0.0167200   -0.0702089    0.0367689
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]           0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          -0.0003883   -0.0069343    0.0061577
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]           0.0008723   -0.0035028    0.0052474
