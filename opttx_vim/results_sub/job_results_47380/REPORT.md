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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0%                8    246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        145    246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              93    246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0%              115    218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    218
0-3 months     ki0047075b-MAL-ED          INDIA                          0%                5    238
0-3 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        190    238
0-3 months     ki0047075b-MAL-ED          INDIA                          >5%              43    238
0-3 months     ki0047075b-MAL-ED          NEPAL                          0%               14    232
0-3 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        140    232
0-3 months     ki0047075b-MAL-ED          NEPAL                          >5%              78    232
0-3 months     ki0047075b-MAL-ED          PERU                           0%               10    282
0-3 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        113    282
0-3 months     ki0047075b-MAL-ED          PERU                           >5%             159    282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               90    272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        179    272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               3    272
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%               10    237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        172    237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    237
0-3 months     ki1000109-EE               PAKISTAN                       0%              219    298
0-3 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         64    298
0-3 months     ki1000109-EE               PAKISTAN                       >5%              15    298
0-3 months     ki1000109-ResPak           PAKISTAN                       0%                6     78
0-3 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         24     78
0-3 months     ki1000109-ResPak           PAKISTAN                       >5%              48     78
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0%               29    565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        340    565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             196    565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0%               21    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        425    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             194    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              136    723
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        385    723
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             202    723
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
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              455   1795
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1178   1795
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             162   1795
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        138    233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              89    233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0%              105    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    208
3-6 months     ki0047075b-MAL-ED          INDIA                          0%                3    230
3-6 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        185    230
3-6 months     ki0047075b-MAL-ED          INDIA                          >5%              42    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          0%               13    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >5%              79    233
3-6 months     ki0047075b-MAL-ED          PERU                           0%                6    267
3-6 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]        106    267
3-6 months     ki0047075b-MAL-ED          PERU                           >5%             155    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               75    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        164    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                9    238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        170    238
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              59    238
3-6 months     ki1000109-EE               PAKISTAN                       0%              236    331
3-6 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         74    331
3-6 months     ki1000109-EE               PAKISTAN                       >5%              21    331
3-6 months     ki1000109-ResPak           PAKISTAN                       0%                5    156
3-6 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         46    156
3-6 months     ki1000109-ResPak           PAKISTAN                       >5%             105    156
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0%               15    522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        326    522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             181    522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0%               12    601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        406    601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             183    601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              129    701
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        377    701
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             195    701
3-6 months     ki1114097-CMIN             BANGLADESH                     0%                0    184
3-6 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         89    184
3-6 months     ki1114097-CMIN             BANGLADESH                     >5%              95    184
3-6 months     ki1114097-CMIN             BRAZIL                         0%                1     81
3-6 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         44     81
3-6 months     ki1114097-CMIN             BRAZIL                         >5%              36     81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  0%                2    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         67    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%              60    129
3-6 months     ki1114097-CMIN             PERU                           0%               18    406
3-6 months     ki1114097-CMIN             PERU                           (0%, 5%]        207    406
3-6 months     ki1114097-CMIN             PERU                           >5%             181    406
3-6 months     ki1114097-CONTENT          PERU                           0%                6    214
3-6 months     ki1114097-CONTENT          PERU                           (0%, 5%]        142    214
3-6 months     ki1114097-CONTENT          PERU                           >5%              66    214
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              473   1818
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1189   1818
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             156   1818
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0%                6    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]        133    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >5%              85    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0%               95    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]        101    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >5%               2    198
6-9 months     ki0047075b-MAL-ED          INDIA                          0%                3    229
6-9 months     ki0047075b-MAL-ED          INDIA                          (0%, 5%]        184    229
6-9 months     ki0047075b-MAL-ED          INDIA                          >5%              42    229
6-9 months     ki0047075b-MAL-ED          NEPAL                          0%               12    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          (0%, 5%]        141    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          >5%              77    230
6-9 months     ki0047075b-MAL-ED          PERU                           0%                3    245
6-9 months     ki0047075b-MAL-ED          PERU                           (0%, 5%]         99    245
6-9 months     ki0047075b-MAL-ED          PERU                           >5%             143    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0%               73    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        155    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               2    230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    224
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    224
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    224
6-9 months     ki1000109-EE               PAKISTAN                       0%              238    335
6-9 months     ki1000109-EE               PAKISTAN                       (0%, 5%]         77    335
6-9 months     ki1000109-EE               PAKISTAN                       >5%              20    335
6-9 months     ki1000109-ResPak           PAKISTAN                       0%                3    143
6-9 months     ki1000109-ResPak           PAKISTAN                       (0%, 5%]         35    143
6-9 months     ki1000109-ResPak           PAKISTAN                       >5%             105    143
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0%               53    309
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    309
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >5%             221    309
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0%                9    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        320    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >5%             169    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0%               10    576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        388    576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >5%             178    576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0%              131    694
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        374    694
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >5%             189    694
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0%                9    214
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         57    214
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >5%             148    214
6-9 months     ki1114097-CMIN             BANGLADESH                     0%                0    177
6-9 months     ki1114097-CMIN             BANGLADESH                     (0%, 5%]         75    177
6-9 months     ki1114097-CMIN             BANGLADESH                     >5%             102    177
6-9 months     ki1114097-CMIN             BRAZIL                         0%                1     92
6-9 months     ki1114097-CMIN             BRAZIL                         (0%, 5%]         50     92
6-9 months     ki1114097-CMIN             BRAZIL                         >5%              41     92
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  0%               13    480
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]        223    480
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  >5%             244    480
6-9 months     ki1114097-CMIN             PERU                           0%               17    399
6-9 months     ki1114097-CMIN             PERU                           (0%, 5%]        207    399
6-9 months     ki1114097-CMIN             PERU                           >5%             175    399
6-9 months     ki1114097-CONTENT          PERU                           0%                6    214
6-9 months     ki1114097-CONTENT          PERU                           (0%, 5%]        141    214
6-9 months     ki1114097-CONTENT          PERU                           >5%              67    214
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0%              805   3073
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       1988   3073
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     >5%             280   3073
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
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                5    223
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    223
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    223
9-12 months    ki1000109-EE               PAKISTAN                       0%                5      6
9-12 months    ki1000109-EE               PAKISTAN                       (0%, 5%]          1      6
9-12 months    ki1000109-EE               PAKISTAN                       >5%               0      6
9-12 months    ki1000109-ResPak           PAKISTAN                       0%                2    137
9-12 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]         39    137
9-12 months    ki1000109-ResPak           PAKISTAN                       >5%              96    137
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%               51    298
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    298
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%             212    298
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0%                9    481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        309    481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >5%             163    481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0%                9    569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        384    569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >5%             176    569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%              130    684
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        369    684
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%             185    684
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                8    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         48    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%             130    186
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              173   1120
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        727   1120
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             220   1120
9-12 months    ki1114097-CMIN             BANGLADESH                     0%                0    160
9-12 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]         68    160
9-12 months    ki1114097-CMIN             BANGLADESH                     >5%              92    160
9-12 months    ki1114097-CMIN             BRAZIL                         0%                1     93
9-12 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]         51     93
9-12 months    ki1114097-CMIN             BRAZIL                         >5%              41     93
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                1    188
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         82    188
9-12 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%             105    188
9-12 months    ki1114097-CMIN             PERU                           0%                7    373
9-12 months    ki1114097-CMIN             PERU                           (0%, 5%]        186    373
9-12 months    ki1114097-CMIN             PERU                           >5%             180    373
9-12 months    ki1114097-CONTENT          PERU                           0%                6    212
9-12 months    ki1114097-CONTENT          PERU                           (0%, 5%]        140    212
9-12 months    ki1114097-CONTENT          PERU                           >5%              66    212
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0%              924   3518
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2275   3518
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%             319   3518
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
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               67    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        159    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        163    225
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              56    225
12-15 months   ki1000109-EE               PAKISTAN                       0%                5      6
12-15 months   ki1000109-EE               PAKISTAN                       (0%, 5%]          1      6
12-15 months   ki1000109-EE               PAKISTAN                       >5%               0      6
12-15 months   ki1000109-ResPak           PAKISTAN                       0%                2     89
12-15 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]         28     89
12-15 months   ki1000109-ResPak           PAKISTAN                       >5%              59     89
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               54    300
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         35    300
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             211    300
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0%                9    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        299    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             153    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        359    537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             170    537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              127    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        355    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             184    666
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                2     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]         30     96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%              64     96
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              120    982
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        664    982
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             198    982
12-15 months   ki1114097-CMIN             BANGLADESH                     0%                2    159
12-15 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         69    159
12-15 months   ki1114097-CMIN             BANGLADESH                     >5%              88    159
12-15 months   ki1114097-CMIN             BRAZIL                         0%                1     92
12-15 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         52     92
12-15 months   ki1114097-CMIN             BRAZIL                         >5%              39     92
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                3    117
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         48    117
12-15 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              66    117
12-15 months   ki1114097-CMIN             PERU                           0%                7    349
12-15 months   ki1114097-CMIN             PERU                           (0%, 5%]        184    349
12-15 months   ki1114097-CMIN             PERU                           >5%             158    349
12-15 months   ki1114097-CONTENT          PERU                           0%                5    199
12-15 months   ki1114097-CONTENT          PERU                           (0%, 5%]        132    199
12-15 months   ki1114097-CONTENT          PERU                           >5%              62    199
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              920   3551
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2315   3551
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             316   3551
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
15-18 months   ki0047075b-MAL-ED          PERU                           0%                1    214
15-18 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    214
15-18 months   ki0047075b-MAL-ED          PERU                           >5%             127    214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        155    224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    224
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        159    220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              55    220
15-18 months   ki1000109-EE               PAKISTAN                       0%              223    307
15-18 months   ki1000109-EE               PAKISTAN                       (0%, 5%]         69    307
15-18 months   ki1000109-EE               PAKISTAN                       >5%              15    307
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%               56    290
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]         33    290
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%             201    290
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0%                7    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        295    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             147    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0%                8    533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        358    533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    533
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              125    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        321    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             159    605
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%              109   1053
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]        730   1053
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%             214   1053
15-18 months   ki1114097-CMIN             BANGLADESH                     0%                3    163
15-18 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         70    163
15-18 months   ki1114097-CMIN             BANGLADESH                     >5%              90    163
15-18 months   ki1114097-CMIN             BRAZIL                         0%                1     87
15-18 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         49     87
15-18 months   ki1114097-CMIN             BRAZIL                         >5%              37     87
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                1    136
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         57    136
15-18 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              78    136
15-18 months   ki1114097-CMIN             PERU                           0%                7    301
15-18 months   ki1114097-CMIN             PERU                           (0%, 5%]        163    301
15-18 months   ki1114097-CMIN             PERU                           >5%             131    301
15-18 months   ki1114097-CONTENT          PERU                           0%                5    189
15-18 months   ki1114097-CONTENT          PERU                           (0%, 5%]        124    189
15-18 months   ki1114097-CONTENT          PERU                           >5%              60    189
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0%              883   3510
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]       2309   3510
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%             318   3510
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
18-21 months   ki0047075b-MAL-ED          PERU                           0%                1    201
18-21 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         86    201
18-21 months   ki0047075b-MAL-ED          PERU                           >5%             114    201
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               68    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              52    208
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        274    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             143    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        368    542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             167    542
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              123    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        291    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             133    547
18-21 months   ki1114097-CMIN             BANGLADESH                     0%                2    165
18-21 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         72    165
18-21 months   ki1114097-CMIN             BANGLADESH                     >5%              91    165
18-21 months   ki1114097-CMIN             BRAZIL                         0%                1     84
18-21 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]         46     84
18-21 months   ki1114097-CMIN             BRAZIL                         >5%              37     84
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                2    154
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         63    154
18-21 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              89    154
18-21 months   ki1114097-CMIN             PERU                           0%                7    291
18-21 months   ki1114097-CMIN             PERU                           (0%, 5%]        151    291
18-21 months   ki1114097-CMIN             PERU                           >5%             133    291
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
21-24 months   ki0047075b-MAL-ED          PERU                           0%                1    188
21-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]         80    188
21-24 months   ki0047075b-MAL-ED          PERU                           >5%             107    188
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%               70    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]        163    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%               1    234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                6    206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]        150    206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%              50    206
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                5    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]        267    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%             139    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                7    470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]        318    470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%             145    470
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%              122    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]        261    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%             110    493
21-24 months   ki1114097-CMIN             BANGLADESH                     0%                2    133
21-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]         61    133
21-24 months   ki1114097-CMIN             BANGLADESH                     >5%              70    133
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                3     89
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]         41     89
21-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%              45     89
21-24 months   ki1114097-CMIN             PERU                           0%               13    255
21-24 months   ki1114097-CMIN             PERU                           (0%, 5%]        127    255
21-24 months   ki1114097-CMIN             PERU                           >5%             115    255
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



```
## Error in while (go <= 0) { : missing value where TRUE/FALSE needed
```




# Results Detail

## Results Plots
![](/tmp/06c365c2-364f-469b-a2a4-a93e9bf468ac/4b1d3053-f26e-4875-8cc9-8fba91e9434a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9626414   0.8591636   1.0661191
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed          0.6977951   0.6634820   0.7321081
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          1.0085037   0.9636105   1.0533970
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed          1.0101559   0.9762128   1.0440990
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8545779   0.7040055   1.0051503
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed          0.6063443   0.5602873   0.6524012
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          0.7935209   0.6644695   0.9225722
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.8487537   0.8207158   0.8767916
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9215961   0.8829810   0.9602112
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.9423330   0.9161838   0.9684823
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8927078   0.8691543   0.9162614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.5154427   0.4236621   0.6072232
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.5295508   0.4715628   0.5875387
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed          0.5048281   0.4782311   0.5314251
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.4741771   0.4379383   0.5104160
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed          0.4587300   0.4136686   0.5037915
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed          0.4441059   0.3509648   0.5372471
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.4475338   0.4240506   0.4710170
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.4899842   0.4668824   0.5130861
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5141930   0.4872527   0.5411333
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          0.6407935   0.5013712   0.7802159
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed          0.5460204   0.4944265   0.5976144
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.4589598   0.4345783   0.4833412
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.2588345   0.2328328   0.2848361
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.2860462   0.2514011   0.3206913
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed          0.3228703   0.2479117   0.3978289
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.1626191   0.1134218   0.2118165
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1583112   0.1106623   0.2059601
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.2424829   0.2195407   0.2654252
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.2992164   0.2744673   0.3239655
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.2533850   0.2304171   0.2763530
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.1595806   0.1161320   0.2030292
6-9 months     ki1114097-CMIN             PERU                           optimal              observed          0.2965855   0.2720481   0.3211230
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed          0.2929059   0.2473146   0.3384973
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.2457602   0.2342604   0.2572601
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.2397752   0.1700108   0.3095395
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.2162023   0.1798666   0.2525379
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1271559   0.0330699   0.2212419
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.1688820   0.1203198   0.2174442
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1496562   0.1167763   0.1825361
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.1694618   0.1535002   0.1854233
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.2088370   0.1884784   0.2291955
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.1832815   0.1506171   0.2159459
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.2591535   0.2017777   0.3165293
9-12 months    ki1114097-CMIN             PERU                           optimal              observed          0.3325431   0.2192202   0.4458661
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed          0.2301618   0.2086514   0.2516722
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.1603230   0.1507226   0.1699235
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.0824321   0.0526370   0.1122272
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.2047146   0.1083572   0.3010720
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.2456148   0.1245922   0.3666374
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.1482117   0.1251115   0.1713119
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1862099   0.1135462   0.2588736
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.1883977   0.1663652   0.2104301
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.1718606   0.1525862   0.1911350
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.1794857   0.1567598   0.2022115
12-15 months   ki1114097-CMIN             PERU                           optimal              observed          0.1744939   0.1417043   0.2072835
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          0.1841480   0.0964678   0.2718282
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.1271739   0.1179079   0.1364399
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.1579527   0.1321759   0.1837295
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.1454103   0.1083146   0.1825061
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1226366   0.0254029   0.2198703
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed          0.0641150   0.0204181   0.1078119
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.1675012   0.1370870   0.1979153
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1396331   0.1181514   0.1611148
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.1535831   0.1343949   0.1727712
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.1601949   0.1354795   0.1849103
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.1667969   0.1435221   0.1900717
15-18 months   ki1114097-CMIN             PERU                           optimal              observed          0.2030010   0.1757693   0.2302327
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed          0.1507864   0.1235948   0.1779781
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.1607443   0.1535758   0.1679127
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.1612605   0.1291880   0.1933331
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.1726019   0.1435189   0.2016848
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1395188   0.0784058   0.2006318
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1939369   0.1661714   0.2217025
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.1150189   0.1008076   0.1292302
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.1431886   0.1206103   0.1657669
18-21 months   ki1114097-CMIN             PERU                           optimal              observed          0.2343409   0.1210030   0.3476788
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.1508142   0.1325408   0.1690875
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.2537178   0.2005797   0.3068559
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.1116906   0.0479536   0.1754276
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.1193830   0.1049018   0.1338643
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.1462778   0.1322117   0.1603439
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.1856905   0.1613054   0.2100755
21-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.2175392   0.1872450   0.2478334


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.9015136   0.8785271   0.9245001
0-3 months     ki0047075b-MAL-ED          INDIA                          observed             observed          0.7894536   0.7682358   0.8106714
0-3 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          0.9779928   0.9520412   1.0039444
0-3 months     ki0047075b-MAL-ED          PERU                           observed             observed          0.9983673   0.9735390   1.0231956
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.8974775   0.8681903   0.9267648
0-3 months     ki1000109-EE               PAKISTAN                       observed             observed          0.6052932   0.5828591   0.6277273
0-3 months     ki1000109-ResPak           PAKISTAN                       observed             observed          0.8237882   0.7710347   0.8765418
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.8595174   0.8420576   0.8769772
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.9651437   0.9492044   0.9810829
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.9478196   0.9330069   0.9626323
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.8895446   0.8790300   0.9000593
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.4737462   0.4568245   0.4906678
3-6 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          0.5219447   0.5017908   0.5420987
3-6 months     ki0047075b-MAL-ED          PERU                           observed             observed          0.4989394   0.4800495   0.5178292
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.4534398   0.4303925   0.4764871
3-6 months     ki1000109-EE               PAKISTAN                       observed             observed          0.4496528   0.4321486   0.4671570
3-6 months     ki1000109-ResPak           PAKISTAN                       observed             observed          0.4825104   0.4545196   0.5105012
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.4976582   0.4865636   0.5087528
3-6 months     ki1114097-CMIN             PERU                           observed             observed          0.5575518   0.5381357   0.5769678
3-6 months     ki1114097-CONTENT          PERU                           observed             observed          0.5883606   0.5672514   0.6094698
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.4391655   0.4303725   0.4479585
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.2440183   0.2292319   0.2588047
6-9 months     ki0047075b-MAL-ED          NEPAL                          observed             observed          0.2695865   0.2551175   0.2840555
6-9 months     ki1000109-EE               PAKISTAN                       observed             observed          0.2603636   0.2444930   0.2762343
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.1982186   0.1818458   0.2145914
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.2677017   0.2571348   0.2782686
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          0.2458437   0.2280295   0.2636580
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          0.2191255   0.2016551   0.2365960
6-9 months     ki1114097-CMIN             PERU                           observed             observed          0.2894434   0.2721092   0.3067775
6-9 months     ki1114097-CONTENT          PERU                           observed             observed          0.3203724   0.3008854   0.3398595
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.2397565   0.2344749   0.2450382
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.1729325   0.1592757   0.1865892
9-12 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          0.1859531   0.1715470   0.2003592
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1649183   0.1449949   0.1848416
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.1410472   0.1219662   0.1601282
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.1975040   0.1870641   0.2079439
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          0.2074564   0.1866255   0.2282874
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          0.2429668   0.2299104   0.2560232
9-12 months    ki1114097-CMIN             PERU                           observed             observed          0.2363159   0.2190343   0.2535975
9-12 months    ki1114097-CONTENT          PERU                           observed             observed          0.2242885   0.2061680   0.2424089
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.1545451   0.1502955   0.1587946
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.1353663   0.1195497   0.1511829
12-15 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.1525297   0.1359454   0.1691140
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1614956   0.1370147   0.1859764
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.1752090   0.1590517   0.1913663
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.1645093   0.1539519   0.1750667
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          0.1929712   0.1819725   0.2039700
12-15 months   ki1114097-CMIN             PERU                           observed             observed          0.2158158   0.1980811   0.2335504
12-15 months   ki1114097-CONTENT          PERU                           observed             observed          0.1810659   0.1624244   0.1997074
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.1304878   0.1263700   0.1346055
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.1425231   0.1270241   0.1580221
15-18 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.1736635   0.1579639   0.1893631
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1438731   0.1208955   0.1668507
15-18 months   ki1000109-EE               PAKISTAN                       observed             observed          0.0806771   0.0658821   0.0954722
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          0.1648845   0.1491151   0.1806540
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.1615961   0.1511151   0.1720771
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             observed          0.1748246   0.1641572   0.1854921
15-18 months   ki1114097-CMIN             PERU                           observed             observed          0.1926284   0.1732853   0.2119716
15-18 months   ki1114097-CONTENT          PERU                           observed             observed          0.1713509   0.1529966   0.1897053
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          0.1594949   0.1548064   0.1641834
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.1426985   0.1257734   0.1596236
18-21 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.1475061   0.1298536   0.1651587
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1452387   0.1203914   0.1700861
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.1428647   0.1320231   0.1537064
18-21 months   ki1114097-CMIN             PERU                           observed             observed          0.1876554   0.1699118   0.2053991
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          0.1523357   0.1372224   0.1674491
21-24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          0.1658132   0.1474509   0.1841755
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          0.1413460   0.1136835   0.1690086
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          0.1432976   0.1318329   0.1547624
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          0.1751481   0.1624984   0.1877979
21-24 months   ki1114097-CMIN             PERU                           observed             observed          0.2040443   0.1838614   0.2242271


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0611277   -0.1643534    0.0420979
0-3 months     ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0916585    0.0536240    0.1296931
0-3 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0305109   -0.0670408    0.0060189
0-3 months     ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0117886   -0.0337638    0.0101866
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0428996   -0.1007839    0.1865832
0-3 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0010511   -0.0422789    0.0401768
0-3 months     ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0302674   -0.0875724    0.1481072
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0107637   -0.0115467    0.0330741
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0435476    0.0090635    0.0780316
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0054866   -0.0168147    0.0277879
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0031632   -0.0233467    0.0170203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0416965   -0.1329398    0.0495468
3-6 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0076060   -0.0650740    0.0498619
3-6 months     ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0058888   -0.0217266    0.0099491
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0207373   -0.0555394    0.0140648
3-6 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0090772   -0.0522507    0.0340963
3-6 months     ki1000109-ResPak           PAKISTAN                       optimal              observed           0.0384045   -0.0559606    0.1327696
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0118637   -0.0027187    0.0264461
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0009231   -0.0208895    0.0190433
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0165348   -0.0386031    0.0055334
3-6 months     ki1114097-CMIN             PERU                           optimal              observed          -0.0832418   -0.2180411    0.0515576
3-6 months     ki1114097-CONTENT          PERU                           optimal              observed           0.0423402   -0.0115478    0.0962281
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0197942   -0.0419950    0.0024066
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0148162   -0.0345247    0.0048924
6-9 months     ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0164597   -0.0511428    0.0182235
6-9 months     ki1000109-EE               PAKISTAN                       optimal              observed          -0.0625067   -0.1351298    0.0101164
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0355995   -0.0122215    0.0834204
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0779484    0.0300866    0.1258101
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0066824   -0.0106254    0.0239902
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0315147   -0.0539197   -0.0091097
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0075413   -0.0184585    0.0033759
6-9 months     ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0595449    0.0177358    0.1013540
6-9 months     ki1114097-CMIN             PERU                           optimal              observed          -0.0071421   -0.0241385    0.0098542
6-9 months     ki1114097-CONTENT          PERU                           optimal              observed           0.0274665   -0.0172921    0.0722251
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0060037   -0.0157104    0.0037030
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0668427   -0.1363801    0.0026947
9-12 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0302492   -0.0676382    0.0071398
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0377624   -0.0545246    0.1300493
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0278348   -0.0751063    0.0194367
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0139651   -0.0175648    0.0454950
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0080698   -0.0061079    0.0222476
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0113330   -0.0303283    0.0076623
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0241749   -0.0039280    0.0522779
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          -0.0161867   -0.0637958    0.0314225
9-12 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0962272   -0.2081562    0.0157018
9-12 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.0058734   -0.0194777    0.0077310
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0057780   -0.0143341    0.0027782
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0529342    0.0271160    0.0787523
12-15 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0521849   -0.1464011    0.0420313
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0841193   -0.2049156    0.0366771
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0269973    0.0075984    0.0463962
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0557037   -0.1276315    0.0162242
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0083653   -0.0261731    0.0094425
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0073513   -0.0232484    0.0085459
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed           0.0134856   -0.0064311    0.0334022
12-15 months   ki1114097-CMIN             PERU                           optimal              observed           0.0413219    0.0133330    0.0693107
12-15 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.0030821   -0.0868970    0.0807327
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0033138   -0.0047012    0.0113289
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0154296   -0.0357651    0.0049059
15-18 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0282532   -0.0094174    0.0659237
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0212365   -0.0729176    0.1153906
15-18 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.0165622   -0.0239018    0.0570261
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0026166   -0.0317153    0.0264820
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0133512    0.0005557    0.0261467
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0027684   -0.0134238    0.0189605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0014012   -0.0199818    0.0227842
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed           0.0080278   -0.0124805    0.0285360
15-18 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0103726   -0.0283743    0.0076292
15-18 months   ki1114097-CONTENT          PERU                           optimal              observed           0.0205645    0.0024619    0.0386670
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0012493   -0.0072481    0.0047494
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0185621   -0.0431882    0.0060640
18-21 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0250958   -0.0494162   -0.0007753
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0057199   -0.0585214    0.0699613
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0214977   -0.0441727    0.0011772
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0174693    0.0074113    0.0275273
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0003239   -0.0197118    0.0190641
18-21 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0466855   -0.1589015    0.0655306
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0015216   -0.0122944    0.0153376
21-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0879046   -0.1412774   -0.0345318
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0296554   -0.0245808    0.0838916
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0225900    0.0021531    0.0430269
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0029802   -0.0108494    0.0048891
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0105423   -0.0317944    0.0107098
21-24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0134949   -0.0360459    0.0090561
