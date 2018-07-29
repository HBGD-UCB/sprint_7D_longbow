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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
* feducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
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
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1               16    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2               49    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3               97    244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4               82    244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1               43    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2              122    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3              223    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4              178    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1               52    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2              163    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3              253    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              166    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1              168    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2              184    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3              191    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4              177    720
0-3 months     ki1114097-CMIN             BANGLADESH                     Q2                4     43
0-3 months     ki1114097-CMIN             BANGLADESH                     Q3               17     43
0-3 months     ki1114097-CMIN             BANGLADESH                     Q4               22     43
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1              667   1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              584   1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3              421   1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4              135   1807
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q1              112    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q2               53    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q3               14    180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Q4                1    180
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                7     81
0-3 months     ki1114097-CMIN             BRAZIL                         Q2               17     81
0-3 months     ki1114097-CMIN             BRAZIL                         Q3               24     81
0-3 months     ki1114097-CMIN             BRAZIL                         Q4               33     81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Q1                3     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Q2                3     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Q3                5     21
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Q4               10     21
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1               24    201
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2               67    201
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3               77    201
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4               33    201
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1               19    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2               49    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3               57    175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4               50    175
0-3 months     ki1000109-EE               PAKISTAN                       Q1              220    297
0-3 months     ki1000109-EE               PAKISTAN                       Q2               32    297
0-3 months     ki1000109-EE               PAKISTAN                       Q3               31    297
0-3 months     ki1000109-EE               PAKISTAN                       Q4               14    297
0-3 months     ki1000109-ResPak           PAKISTAN                       Q1                8     78
0-3 months     ki1000109-ResPak           PAKISTAN                       Q2                3     78
0-3 months     ki1000109-ResPak           PAKISTAN                       Q3               19     78
0-3 months     ki1000109-ResPak           PAKISTAN                       Q4               48     78
0-3 months     ki0047075b-MAL-ED          PERU                           Q1               13    271
0-3 months     ki0047075b-MAL-ED          PERU                           Q2               30    271
0-3 months     ki0047075b-MAL-ED          PERU                           Q3               91    271
0-3 months     ki0047075b-MAL-ED          PERU                           Q4              137    271
0-3 months     ki1114097-CMIN             PERU                           Q1                7     93
0-3 months     ki1114097-CMIN             PERU                           Q2               25     93
0-3 months     ki1114097-CMIN             PERU                           Q3               17     93
0-3 months     ki1114097-CMIN             PERU                           Q4               44     93
0-3 months     ki1114097-CONTENT          PERU                           Q1                2     29
0-3 months     ki1114097-CONTENT          PERU                           Q2                6     29
0-3 months     ki1114097-CONTENT          PERU                           Q3                8     29
0-3 months     ki1114097-CONTENT          PERU                           Q4               13     29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              131    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2               76    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3               20    229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                2    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1               28    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2               64    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3               95    229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               42    229
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1               14    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2               46    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3               94    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4               77    231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1               29    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2              119    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3              212    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4              163    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1               42    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2              152    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3              235    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4              145    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1              162    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2              179    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3              187    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4              167    695
3-6 months     ki1114097-CMIN             BANGLADESH                     Q1                1    185
3-6 months     ki1114097-CMIN             BANGLADESH                     Q2               25    185
3-6 months     ki1114097-CMIN             BANGLADESH                     Q3               75    185
3-6 months     ki1114097-CMIN             BANGLADESH                     Q4               84    185
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1              692   1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2              610   1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3              415   1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4              123   1840
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q1              123    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q2               70    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q3               14    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Q4                1    208
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                7     81
3-6 months     ki1114097-CMIN             BRAZIL                         Q2               16     81
3-6 months     ki1114097-CMIN             BRAZIL                         Q3               26     81
3-6 months     ki1114097-CMIN             BRAZIL                         Q4               32     81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Q1                4    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Q2               21    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Q3               46    129
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Q4               58    129
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1               25    229
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2               76    229
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3               93    229
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4               35    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1               24    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2               66    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3               72    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4               71    233
3-6 months     ki1000109-EE               PAKISTAN                       Q1              239    331
3-6 months     ki1000109-EE               PAKISTAN                       Q2               38    331
3-6 months     ki1000109-EE               PAKISTAN                       Q3               35    331
3-6 months     ki1000109-EE               PAKISTAN                       Q4               19    331
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                8    156
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2               11    156
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3               33    156
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4              104    156
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                9    267
3-6 months     ki0047075b-MAL-ED          PERU                           Q2               28    267
3-6 months     ki0047075b-MAL-ED          PERU                           Q3               89    267
3-6 months     ki0047075b-MAL-ED          PERU                           Q4              141    267
3-6 months     ki1114097-CMIN             PERU                           Q1               41    407
3-6 months     ki1114097-CMIN             PERU                           Q2               88    407
3-6 months     ki1114097-CMIN             PERU                           Q3              107    407
3-6 months     ki1114097-CMIN             PERU                           Q4              171    407
3-6 months     ki1114097-CONTENT          PERU                           Q1               17    214
3-6 months     ki1114097-CONTENT          PERU                           Q2               59    214
3-6 months     ki1114097-CONTENT          PERU                           Q3               80    214
3-6 months     ki1114097-CONTENT          PERU                           Q4               58    214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              135    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q2               83    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q3               21    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                2    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1               27    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2               65    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3               99    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               48    239
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1               12    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2               45    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3               92    220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4               71    220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1               23    482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2              115    482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3              200    482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4              144    482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1               38    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2              144    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3              222    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4              141    545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1              166    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2              177    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3              179    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4              154    676
6-12 months    ki1114097-CMIN             BANGLADESH                     Q1                1    164
6-12 months    ki1114097-CMIN             BANGLADESH                     Q2               20    164
6-12 months    ki1114097-CMIN             BANGLADESH                     Q3               65    164
6-12 months    ki1114097-CMIN             BANGLADESH                     Q4               78    164
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1             1164   3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2             1045   3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3              722   3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4              229   3160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q1              111    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q2               68    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q3               14    194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Q4                1    194
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                8     93
6-12 months    ki1114097-CMIN             BRAZIL                         Q2               22     93
6-12 months    ki1114097-CMIN             BRAZIL                         Q3               30     93
6-12 months    ki1114097-CMIN             BRAZIL                         Q4               33     93
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                9    181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2               16    181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3               37    181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4              119    181
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                7    173
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2               27    173
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3               55    173
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4               84    173
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1               23    224
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2               73    224
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3               93    224
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4               35    224
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1               64    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2               10    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3               35    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4              223    332
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1               23    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2               66    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3               71    230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4               70    230
6-12 months    ki1000109-EE               PAKISTAN                       Q1                4      4
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                5    138
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                9    138
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3               27    138
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4               97    138
6-12 months    ki0047075b-MAL-ED          PERU                           Q1                3    237
6-12 months    ki0047075b-MAL-ED          PERU                           Q2               27    237
6-12 months    ki0047075b-MAL-ED          PERU                           Q3               80    237
6-12 months    ki0047075b-MAL-ED          PERU                           Q4              127    237
6-12 months    ki1114097-CMIN             PERU                           Q1               27    360
6-12 months    ki1114097-CMIN             PERU                           Q2               80    360
6-12 months    ki1114097-CMIN             PERU                           Q3              100    360
6-12 months    ki1114097-CMIN             PERU                           Q4              153    360
6-12 months    ki1114097-CONTENT          PERU                           Q1               17    213
6-12 months    ki1114097-CONTENT          PERU                           Q2               58    213
6-12 months    ki1114097-CONTENT          PERU                           Q3               80    213
6-12 months    ki1114097-CONTENT          PERU                           Q4               58    213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              129    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2               80    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3               21    232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                2    232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1               23    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2               65    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3               91    223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               44    223
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1               12    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2               41    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3               87    206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4               66    206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1               17    421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2               99    421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3              178    421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4              127    421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1               30    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2              117    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3              189    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4              122    458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1              152    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2              141    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3              113    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4               89    495
12-24 months   ki1114097-CMIN             BANGLADESH                     Q1                3    138
12-24 months   ki1114097-CMIN             BANGLADESH                     Q2               20    138
12-24 months   ki1114097-CMIN             BANGLADESH                     Q3               48    138
12-24 months   ki1114097-CMIN             BANGLADESH                     Q4               67    138
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1             1320   3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2             1220   3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3              822   3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4              275   3637
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1               90    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2               62    165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3               13    165
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q1                2     50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q2                9     50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q3                9     50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Q4               30     50
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1               23    225
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2               74    225
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3               94    225
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4               34    225
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1               22    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2               66    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3               69    226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4               69    226
12-24 months   ki0047075b-MAL-ED          PERU                           Q1                2    191
12-24 months   ki0047075b-MAL-ED          PERU                           Q2               19    191
12-24 months   ki0047075b-MAL-ED          PERU                           Q3               70    191
12-24 months   ki0047075b-MAL-ED          PERU                           Q4              100    191
12-24 months   ki1114097-CMIN             PERU                           Q1               18    199
12-24 months   ki1114097-CMIN             PERU                           Q2               40    199
12-24 months   ki1114097-CMIN             PERU                           Q3               60    199
12-24 months   ki1114097-CMIN             PERU                           Q4               81    199
12-24 months   ki1114097-CONTENT          PERU                           Q1                2     38
12-24 months   ki1114097-CONTENT          PERU                           Q2                8     38
12-24 months   ki1114097-CONTENT          PERU                           Q3               19     38
12-24 months   ki1114097-CONTENT          PERU                           Q4                9     38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1              129    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2               81    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3               19    230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4                1    230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1               23    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2               60    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3               87    207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4               37    207


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

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/d748406e-e049-4fe2-8ba7-e74fec843db0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d748406e-e049-4fe2-8ba7-e74fec843db0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                3.4620302   3.2384279   3.6856326
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                3.6247629   3.4739437   3.7755820
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                3.5669848   3.4820838   3.6518857
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                3.5424223   3.4258002   3.6590445
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                3.8066687   3.5675068   4.0458307
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                3.6170547   3.4885885   3.7455210
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                3.5912221   3.4864742   3.6959701
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                3.6001555   3.3875006   3.8128103
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                3.6900736   3.4568342   3.9233130
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                3.7130166   3.5659278   3.8601054
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                3.7357799   3.6254418   3.8461180
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                3.8149386   3.6963667   3.9335106
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                4.4189163   4.2690580   4.5687746
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                3.8567207   3.6933914   4.0200501
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                3.4354151   3.3379608   3.5328695
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                3.4152790   3.3266503   3.5039076
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                3.2863214   3.0802480   3.4923949
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                3.3729256   3.2389560   3.5068952
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                3.4325069   3.3176435   3.5473704
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                3.2197199   3.0571641   3.3822756
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   NA                2.7057594   2.6175778   2.7939411
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   NA                2.4240507   2.1570254   2.6910761
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   NA                2.5389429   2.1941533   2.8837325
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   NA                2.6992111   2.3420006   3.0564217
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                3.1075775   2.9151077   3.3000472
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                3.2141950   3.1108216   3.3175685
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                3.3309783   3.2518289   3.4101278
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                3.3680379   3.2737804   3.4622953
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                3.2982608   3.1784816   3.4180400
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                3.4538718   3.3886627   3.5190810
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                3.4673164   3.4079298   3.5267029
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                3.4587269   3.3844070   3.5330469
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                3.0447066   2.9914030   3.0980103
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                3.1919864   3.1280137   3.2559592
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                3.3236150   3.2541790   3.3930510
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                3.2729800   3.1990421   3.3469180
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                3.8015124   2.9195493   4.6834755
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                3.7405686   3.4576085   4.0235287
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                3.3155298   2.9420628   3.6889967
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                3.4806536   3.1784827   3.7828246
0-3 months     ki1114097-CMIN             PERU                           Q1                   NA                3.6939319   3.0732035   4.3146602
0-3 months     ki1114097-CMIN             PERU                           Q2                   NA                3.3767521   3.1243758   3.6291284
0-3 months     ki1114097-CMIN             PERU                           Q3                   NA                3.3570822   3.1002245   3.6139400
0-3 months     ki1114097-CMIN             PERU                           Q4                   NA                3.2017923   3.0329554   3.3706292
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                3.6348852   3.5844894   3.6852811
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                3.6469473   3.5974808   3.6964137
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                3.6240402   3.5640887   3.6839917
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                3.6562075   3.5855743   3.7268408
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.7836776   1.6653857   1.9019695
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                1.9653469   1.8815314   2.0491625
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.9551875   1.8866831   2.0236919
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.8963630   1.8293122   1.9634139
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.7636827   1.6242857   1.9030796
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.9148808   1.8085027   2.0212589
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.9060338   1.8129325   1.9991350
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.8424830   1.6572166   2.0277493
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                2.0155347   1.8296848   2.2013845
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.9485610   1.8525524   2.0445696
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                2.0233206   1.9305477   2.1160934
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.9142287   1.8015241   2.0269334
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                1.9345607   1.6088896   2.2602318
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                1.9582927   1.7797994   2.1367860
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                2.0411093   1.9301110   2.1521076
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                2.0215916   1.9344522   2.1087309
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.8118297   1.6313909   1.9922686
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.7965558   1.6787250   1.9143867
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.8739623   1.7729747   1.9749500
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.9244313   1.7998291   2.0490336
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   NA                2.0226888   1.9531703   2.0922074
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   NA                2.1183853   1.9229361   2.3138344
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   NA                1.9748236   1.8047642   2.1448831
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   NA                1.7620464   1.6127037   1.9113890
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   NA                2.3201186   1.8121622   2.8280750
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   NA                2.2562009   1.7913916   2.7210102
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   NA                2.1701422   1.8407674   2.4995170
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   NA                1.9979604   1.8268708   2.1690500
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                1.9490426   1.8402225   2.0578627
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                1.8750848   1.7909052   1.9592645
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                1.8090256   1.7358865   1.8821647
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                1.8357107   1.7522954   1.9191260
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.8222183   1.6897624   1.9546742
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.9361897   1.8737602   1.9986191
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.9843086   1.9279105   2.0407067
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                2.0064124   1.9422900   2.0705348
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                2.1408697   2.0857838   2.1959556
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                2.0689481   2.0092805   2.1286156
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.9430883   1.8910848   1.9950918
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.9922485   1.9418231   2.0426738
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                1.8362644   0.9932928   2.6792361
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                1.7112665   1.3914983   2.0310346
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                1.6872470   1.2796526   2.0948414
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                1.6654018   1.4231851   1.9076185
3-6 months     ki1114097-CMIN             PERU                           Q1                   NA                1.8488852   1.7226040   1.9751664
3-6 months     ki1114097-CMIN             PERU                           Q2                   NA                1.9720740   1.8876261   2.0565219
3-6 months     ki1114097-CMIN             PERU                           Q3                   NA                1.9541571   1.8481632   2.0601509
3-6 months     ki1114097-CMIN             PERU                           Q4                   NA                1.8271439   1.7541182   1.9001696
3-6 months     ki1114097-CONTENT          PERU                           Q1                   NA                2.1001838   1.9521680   2.2481997
3-6 months     ki1114097-CONTENT          PERU                           Q2                   NA                2.0525173   1.9729742   2.1320604
3-6 months     ki1114097-CONTENT          PERU                           Q3                   NA                2.0865353   2.0091849   2.1638856
3-6 months     ki1114097-CONTENT          PERU                           Q4                   NA                2.1108505   2.0127093   2.2089916
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.8945770   1.8472857   1.9418683
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.9059445   1.8575416   1.9543473
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.8899546   1.8336480   1.9462613
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.9115241   1.8361392   1.9869091
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.0942252   0.9877507   1.2006998
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                1.0850295   1.0329210   1.1371379
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.1253783   1.0912251   1.1595314
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.1242395   1.0874830   1.1609960
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.1047004   1.0218624   1.1875383
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.1144464   1.0718594   1.1570335
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.1069100   1.0682797   1.1455403
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.1839021   1.1127318   1.2550725
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.2191650   1.1536374   1.2846926
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.2398290   1.1909234   1.2887347
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.2096519   1.1723587   1.2469451
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.2199616   1.1701640   1.2697592
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.9031819   0.8407983   0.9655654
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.0265260   0.9725633   1.0804886
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.9880769   0.9444128   1.0317410
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.9064813   0.8505259   0.9624368
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   NA                1.1010090   0.9033817   1.2986363
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   NA                1.2932463   1.1166986   1.4697940
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   NA                1.3284643   1.0935015   1.5634272
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   NA                1.3012092   1.2061198   1.3962985
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                2.7232812   2.5224480   2.9241144
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.8368561   0.8093826   0.8643296
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.8566844   0.7814187   0.9319501
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.9827786   0.9066722   1.0588851
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                1.2679862   1.1953695   1.3406030
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                1.1931734   1.1452027   1.2411441
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                1.1806488   1.1455989   1.2156987
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                1.1154292   1.0796706   1.1511878
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.2426148   1.2095663   1.2756634
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.1932256   1.1681110   1.2183402
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.1615683   1.1407527   1.1823840
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                1.1739643   1.1447764   1.2031523
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.2095310   1.1836745   1.2353876
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                1.2186345   1.1927814   1.2444876
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.2111813   1.1825957   1.2397669
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.2194935   1.1917452   1.2472418
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                1.0454041   0.9564071   1.1344010
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                1.1593993   1.0887642   1.2300343
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                1.0750777   1.0128034   1.1373519
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                1.0942228   1.0544713   1.1339743
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   NA                1.2563396   1.1098373   1.4028420
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   NA                1.3617939   1.2558210   1.4677669
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   NA                1.3118178   1.1761536   1.4474820
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   NA                1.0987058   0.9996515   1.1977600
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                1.2423405   1.1032072   1.3814738
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                1.0313990   0.9544249   1.1083731
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                1.0462291   0.9517821   1.1406762
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                1.0192462   0.9393660   1.0991265
6-12 months    ki1114097-CMIN             PERU                           Q1                   NA                1.1659079   1.0664928   1.2653231
6-12 months    ki1114097-CMIN             PERU                           Q2                   NA                1.1559710   1.1019298   1.2100122
6-12 months    ki1114097-CMIN             PERU                           Q3                   NA                1.0867769   1.0411425   1.1324113
6-12 months    ki1114097-CMIN             PERU                           Q4                   NA                1.0914660   1.0545311   1.1284010
6-12 months    ki1114097-CONTENT          PERU                           Q1                   NA                1.2937257   1.1879727   1.3994788
6-12 months    ki1114097-CONTENT          PERU                           Q2                   NA                1.3125524   1.2540545   1.3710502
6-12 months    ki1114097-CONTENT          PERU                           Q3                   NA                1.2819095   1.2343679   1.3294511
6-12 months    ki1114097-CONTENT          PERU                           Q4                   NA                1.2999372   1.2505668   1.3493076
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.2142663   1.1968776   1.2316550
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.2015788   1.1857933   1.2173644
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.1933409   1.1736073   1.2130744
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.1897478   1.1589556   1.2205401
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.8676194   0.7863506   0.9488881
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.8331990   0.7978597   0.8685383
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.8418470   0.8185767   0.8651173
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.8554220   0.8265044   0.8843396
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   NA                0.7948334   0.7556253   0.8340415
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   NA                0.7279278   0.6885437   0.7673119
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   NA                0.5959592   0.5764410   0.6154773
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.8754424   0.8269309   0.9239539
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.8613709   0.8330079   0.8897338
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.8944803   0.8680846   0.9208760
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.8872579   0.8475716   0.9269442
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                0.8861383   0.8400397   0.9322370
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                0.8506096   0.8230791   0.8781401
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                0.8679705   0.8394639   0.8964772
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                0.8582730   0.8302037   0.8863422
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7716514   0.7065036   0.8367992
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7681715   0.7273769   0.8089660
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7656074   0.7261525   0.8050623
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.7616068   0.7165092   0.8067045
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.8374586   0.7990981   0.8758191
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.7570412   0.7297909   0.7842914
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.7408771   0.7176815   0.7640727
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.7537292   0.7305042   0.7769543
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.8063386   0.7864242   0.8262530
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.8507544   0.8346783   0.8668305
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.8695854   0.8555022   0.8836685
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.8400632   0.8253579   0.8547685
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.8715423   0.8557941   0.8872905
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.9170632   0.8984352   0.9356912
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.8436225   0.8251968   0.8620483
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.8289166   0.8090790   0.8487543
12-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.8354713   0.7757776   0.8951650
12-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.8262668   0.7857175   0.8668160
12-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.8465755   0.8159605   0.8771904
12-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.8385697   0.8084523   0.8686871
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.8499009   0.8409578   0.8588439
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.8547353   0.8466572   0.8628134
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.8417031   0.8322475   0.8511586
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.8440058   0.8269610   0.8610505


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                3.5146220   3.3089330   3.7203110
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                1.6962691   1.5066453   1.8858929
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                1.2407866   1.1634646   1.3181086
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                1.0550158   1.0038610   1.1061707
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2032186   1.1928228   1.2136143
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8491886   0.8437514   0.8546258


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.1627326   -0.1062190    0.4316843
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.1049545   -0.1336473    0.3435564
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0803921   -0.1709564    0.3317406
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.1896140   -0.4598039    0.0805758
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.2154466   -0.4754386    0.0445453
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                -0.2065133   -0.5258225    0.1127960
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                 0.0229430   -0.2479220    0.2938080
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0457063   -0.2085042    0.2999168
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.1248650   -0.1329301    0.3826602
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                -0.5621955   -0.7834580   -0.3409331
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                -0.9835011   -1.1622388   -0.8047634
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                -1.0036373   -1.1784110   -0.8288636
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.0866041   -0.1593292    0.3325375
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.1461855   -0.0899562    0.3823272
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0666016   -0.3296152    0.1964121
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                -0.2817087   -0.5611675   -0.0022500
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.1668166   -0.5219605    0.1883273
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.0065483   -0.3742038    0.3611072
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                 0.1066176   -0.1111709    0.3244060
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                 0.2234009    0.0164527    0.4303490
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                 0.2604604    0.0473070    0.4736138
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.1556111    0.0192111    0.2920110
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.1690556    0.0352965    0.3028147
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.1604662    0.0194130    0.3015194
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.1472798    0.0638562    0.2307034
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.2789084    0.1909970    0.3668197
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.2282734    0.1365707    0.3199761
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0609438   -0.9682704    0.8463828
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.4859826   -1.4274617    0.4554964
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.3208588   -1.2371861    0.5954685
0-3 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           Q2                   Q1                -0.3171797   -0.9858440    0.3514845
0-3 months     ki1114097-CMIN             PERU                           Q3                   Q1                -0.3368496   -1.0089893    0.3352901
0-3 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.4921396   -1.1301776    0.1458985
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0120621   -0.0556247    0.0797488
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0108450   -0.0858949    0.0642049
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0213223   -0.0644850    0.1071296
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.1816693    0.0422158    0.3211228
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.1715099    0.0409572    0.3020626
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.1126854   -0.0174848    0.2428557
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.1511981   -0.0241129    0.3265091
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.1423511   -0.0252368    0.3099390
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0788003   -0.1530301    0.3106307
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0669737   -0.2761574    0.1422100
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0077859   -0.1999326    0.2155044
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.1013059   -0.3186593    0.1160475
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                 0.0237321   -0.3455616    0.3930257
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                 0.1065486   -0.2363222    0.4494194
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0870309   -0.2486864    0.4227482
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0152739   -0.2302621    0.1997142
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0621326   -0.1436105    0.2678756
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                 0.1126016   -0.1058110    0.3310142
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                 0.0956965   -0.1112076    0.3026005
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.0478652   -0.2308370    0.1351067
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.2606425   -0.4250162   -0.0962687
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   Q1                -0.0639177   -0.7522811    0.6244457
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   Q1                -0.1499764   -0.7551234    0.4551706
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   Q1                -0.3221582   -0.8576997    0.2133833
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0739578   -0.2098749    0.0619593
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.1400170   -0.2694640   -0.0105701
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.1133319   -0.2492615    0.0225976
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.1139713   -0.0320702    0.2600128
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.1620902    0.0185941    0.3055864
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.1841941    0.0374308    0.3309573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                -0.0719216   -0.1489504    0.0051071
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.1977814   -0.2703492   -0.1252136
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.1486212   -0.2201679   -0.0770746
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.1249980   -1.0265466    0.7765507
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.1490174   -1.0849359    0.7869011
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1708626   -1.0476711    0.7059459
3-6 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           Q2                   Q1                 0.1231888   -0.0286602    0.2750377
3-6 months     ki1114097-CMIN             PERU                           Q3                   Q1                 0.1052719   -0.0595220    0.2700657
3-6 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.0217413   -0.1676989    0.1242163
3-6 months     ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Q2                   Q1                -0.0476665   -0.2151706    0.1198376
3-6 months     ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0136486   -0.1802163    0.1529191
3-6 months     ki1114097-CONTENT          PERU                           Q4                   Q1                 0.0106666   -0.1659114    0.1872446
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0113674   -0.0532170    0.0759519
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0046224   -0.0760968    0.0668520
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0169471   -0.0701402    0.1040344
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0091958   -0.1266056    0.1082141
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0311530   -0.0793610    0.1416671
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0300143   -0.0811685    0.1411971
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.0097461   -0.0813541    0.1008463
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0022097   -0.0872589    0.0916782
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0792018   -0.0283399    0.1867434
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                 0.0206641   -0.0603278    0.1016560
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0095131   -0.0842042    0.0651781
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.0007966   -0.0806724    0.0822656
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.1233441    0.0444419    0.2022463
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0848950    0.0126278    0.1571623
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                 0.0032995   -0.0774742    0.0840731
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   Q1                 0.1922373   -0.0727866    0.4572613
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   Q1                 0.2274553   -0.0790526    0.5339633
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   Q1                 0.2002002   -0.0191362    0.4195366
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                -1.8864251   -2.0866072   -1.6862430
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                -1.8665968   -2.0779636   -1.6552300
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                -1.7405026   -1.9537032   -1.5273019
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0748128   -0.1618354    0.0122098
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0873374   -0.1679812   -0.0066935
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.1525570   -0.2335197   -0.0715943
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                -0.0493892   -0.0890219   -0.0097564
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0810465   -0.1184232   -0.0436697
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0686505   -0.1104945   -0.0268064
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0091034   -0.0257996    0.0440065
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.0016503   -0.0353481    0.0386486
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0099624   -0.0266728    0.0465976
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                 0.1139952    0.0004432    0.2275472
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                 0.0296736   -0.0791924    0.1385395
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                 0.0488187   -0.0484778    0.1461153
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   Q1                 0.1054543   -0.0701211    0.2810297
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   Q1                 0.0554782   -0.1405492    0.2515056
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1576338   -0.3329298    0.0176621
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                -0.2109415   -0.3720488   -0.0498342
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                -0.1961113   -0.3647954   -0.0274273
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                -0.2230942   -0.3830845   -0.0631040
6-12 months    ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           Q2                   Q1                -0.0099369   -0.1230270    0.1031531
6-12 months    ki1114097-CMIN             PERU                           Q3                   Q1                -0.0791311   -0.1883382    0.0300761
6-12 months    ki1114097-CMIN             PERU                           Q4                   Q1                -0.0744419   -0.1804199    0.0315360
6-12 months    ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Q2                   Q1                 0.0188266   -0.1018971    0.1395504
6-12 months    ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0118163   -0.1276695    0.1040370
6-12 months    ki1114097-CONTENT          PERU                           Q4                   Q1                 0.0062114   -0.1104756    0.1228985
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                -0.0126874   -0.0361315    0.0107566
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0209254   -0.0462084    0.0043576
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0245185   -0.0591759    0.0101390
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0344203   -0.1230379    0.0541972
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                -0.0257723   -0.1103052    0.0587606
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                -0.0121973   -0.0984554    0.0740607
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   Q1                -0.0669056   -0.1358216    0.0020103
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   Q1                -0.1988743   -0.2460869   -0.1516617
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0140715   -0.0697875    0.0416445
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0190379   -0.0354742    0.0735500
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0118155   -0.0503030    0.0739341
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0355288   -0.0892225    0.0181650
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0181678   -0.0723685    0.0360329
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0278654   -0.0818373    0.0261066
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0034799   -0.0800589    0.0730991
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0060440   -0.0818353    0.0697473
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0100446   -0.0890660    0.0689769
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0804175   -0.1272546   -0.0335803
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0965815   -0.1410257   -0.0521373
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0837294   -0.1283217   -0.0391370
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0444158    0.0202373    0.0685943
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0632467    0.0402425    0.0862510
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0337245    0.0101647    0.0572844
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0455209    0.0211251    0.0699167
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.0279198   -0.0521537   -0.0036859
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0426257   -0.0679649   -0.0172865
12-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                -0.0092045   -0.0812949    0.0628859
12-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                 0.0111042   -0.0559829    0.0781912
12-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                 0.0030984   -0.0635884    0.0697852
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0048345   -0.0067340    0.0164029
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0081978   -0.0204331    0.0040375
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0058951   -0.0251585    0.0133682
