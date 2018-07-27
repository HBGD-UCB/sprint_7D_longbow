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
      W: []
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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/27b683b8-15bb-4e16-a454-409a25c86559/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/27b683b8-15bb-4e16-a454-409a25c86559/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                3.4622433   3.2323363   3.6921502
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                3.6260590   3.4724934   3.7796246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                3.5644637   3.4789457   3.6499818
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                3.5445701   3.4260669   3.6630733
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                3.6602637   3.3950171   3.9255102
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                3.5804929   3.4452658   3.7157200
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                3.5650999   3.4552751   3.6749246
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                3.5337772   3.3081836   3.7593709
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                3.8644764   3.5883472   4.1406056
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                3.7758566   3.6143824   3.9373308
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                3.7774933   3.6598590   3.8951277
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                3.8965443   3.7698863   4.0232024
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                3.2946021   3.0274653   3.5617389
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                3.2996259   3.0910539   3.5081979
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                3.2874244   3.1852422   3.3896066
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                3.3403209   3.2493992   3.4312427
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                3.5569517   3.3221929   3.7917106
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                3.4851029   3.3425943   3.6276116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                3.4937643   3.3749374   3.6125912
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                3.3990060   3.2193731   3.5786388
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   NA                2.7060532   2.6176272   2.7944792
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   NA                2.4097296   2.1262235   2.6932357
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   NA                2.5478434   2.1963867   2.8993000
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   NA                2.7050331   2.3449051   3.0651611
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                3.1637346   2.9590086   3.3684605
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                3.2289271   3.1159585   3.3418956
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                3.3437424   3.2593205   3.4281643
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                3.3679301   3.2658566   3.4700035
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                3.4322356   3.2779314   3.5865398
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                3.4850649   3.4152921   3.5548377
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                3.4856181   3.4238245   3.5474116
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                3.4916262   3.4111594   3.5720930
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                3.1883817   3.1251879   3.2515754
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                3.2713454   3.1996313   3.3430596
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                3.3887630   3.3095890   3.4679369
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                3.3516035   3.2669488   3.4362582
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                3.8204869   2.7733204   4.8676533
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                3.7225021   3.3840695   4.0609348
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                3.3304052   2.9520878   3.7087225
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                3.4766276   3.1742751   3.7789801
0-3 months     ki1114097-CMIN             PERU                           Q1                   NA                3.7709570   3.0865587   4.4553553
0-3 months     ki1114097-CMIN             PERU                           Q2                   NA                3.3604955   3.1035576   3.6174335
0-3 months     ki1114097-CMIN             PERU                           Q3                   NA                3.3724294   3.1028108   3.6420480
0-3 months     ki1114097-CMIN             PERU                           Q4                   NA                3.1955877   3.0214608   3.3697146
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                3.6225560   3.5668966   3.6782153
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                3.6520289   3.5981486   3.7059092
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                3.6358896   3.5685140   3.7032652
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                3.6617596   3.5840295   3.7394898
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.7463685   1.5959572   1.8967798
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                1.9693540   1.8614226   2.0772853
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.9563603   1.8750743   2.0376463
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.9018358   1.8200962   1.9835753
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.7634718   1.6239328   1.9030108
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.9149464   1.8084726   2.0214201
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.9060320   1.8128539   1.9992100
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.8425616   1.6570799   2.0280433
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                2.0155347   1.8296848   2.2013845
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.9485610   1.8525524   2.0445696
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                2.0233206   1.9305477   2.1160934
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.9142287   1.8015241   2.0269334
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                1.9268211   1.5821712   2.2714710
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                1.9837890   1.7765054   2.1910726
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                2.0314073   1.9165053   2.1463092
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                2.0227592   1.9331505   2.1123679
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                1.7669041   1.5427193   1.9910889
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.7737488   1.6467592   1.9007383
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                1.8626074   1.7561769   1.9690379
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                1.8748613   1.7348628   2.0148598
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   NA                2.0246019   1.9546787   2.0945250
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   NA                2.1385655   1.9303342   2.3467967
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   NA                2.0016456   1.8138955   2.1893957
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   NA                1.8305703   1.6574656   2.0036750
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   NA                2.2941860   1.7843781   2.8039940
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   NA                2.2445049   1.7494444   2.7395654
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   NA                2.1727122   1.8442565   2.5011679
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   NA                2.0008415   1.8289288   2.1727541
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                1.8821622   1.7161720   2.0481525
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                1.8565442   1.7609665   1.9521219
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                1.8116704   1.7336528   1.8896879
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                1.8338163   1.7462551   1.9213776
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.8140701   1.6784767   1.9496634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.9334026   1.8699066   1.9968986
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.9874021   1.9298281   2.0449760
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                2.0072969   1.9415929   2.0730008
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                2.1236589   2.0464522   2.2008657
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                2.0505846   1.9743275   2.1268417
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.9043757   1.8376346   1.9711169
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.9570266   1.8905644   2.0234889
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                1.8444349   1.0012533   2.6876165
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                1.7114863   1.3915315   2.0314410
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                1.6841576   1.2746285   2.0936867
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                1.6660898   1.4225075   1.9096721
3-6 months     ki1114097-CMIN             PERU                           Q1                   NA                1.8495756   1.7226888   1.9764625
3-6 months     ki1114097-CMIN             PERU                           Q2                   NA                1.9732954   1.8883800   2.0582108
3-6 months     ki1114097-CMIN             PERU                           Q3                   NA                1.9522354   1.8459352   2.0585355
3-6 months     ki1114097-CMIN             PERU                           Q4                   NA                1.8275168   1.7544220   1.9006116
3-6 months     ki1114097-CONTENT          PERU                           Q1                   NA                2.1007878   1.9413036   2.2602721
3-6 months     ki1114097-CONTENT          PERU                           Q2                   NA                2.0519716   1.9707959   2.1331472
3-6 months     ki1114097-CONTENT          PERU                           Q3                   NA                2.0820285   2.0030184   2.1610387
3-6 months     ki1114097-CONTENT          PERU                           Q4                   NA                2.1150586   2.0137807   2.2163365
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.8963773   1.8464322   1.9463224
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.9037611   1.8527508   1.9547714
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.8899995   1.8309744   1.9490246
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.9110509   1.8292812   1.9928206
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                1.0857238   0.9629711   1.2084765
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                1.0860293   1.0259624   1.1460962
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                1.1235207   1.0864683   1.1605730
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                1.1253875   1.0845925   1.1661824
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                1.1052772   1.0110523   1.1995021
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                1.1126246   1.0657359   1.1595132
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                1.1069874   1.0649441   1.1490307
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                1.1863913   1.1048814   1.2679011
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                1.2186969   1.1492420   1.2881517
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                1.2404264   1.1890372   1.2918157
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                1.2090778   1.1700899   1.2480657
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                1.2202822   1.1680786   1.2724857
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.9879320   0.8876163   1.0882477
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                1.0494918   0.9714864   1.1274972
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.9996858   0.9472583   1.0521134
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.9437400   0.8603056   1.0271745
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   NA                1.0373089   0.7591820   1.3154358
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   NA                1.2941565   1.0840575   1.5042554
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   NA                1.3413253   1.1045053   1.5781453
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   NA                1.2975626   1.2025978   1.3925273
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                1.2050122   0.9537323   1.4562921
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                0.9183583   0.8067661   1.0299505
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                0.9270033   0.7327711   1.1212355
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                0.9757922   0.8955807   1.0560037
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                1.2652276   1.1761886   1.3542666
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                1.1902182   1.1407848   1.2396517
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                1.1809086   1.1453908   1.2164264
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                1.1165787   1.0802435   1.1529139
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                1.2101051   1.1456762   1.2745340
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                1.1907708   1.1579217   1.2236199
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                1.1583265   1.1331297   1.1835232
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                1.1686352   1.1306006   1.2066698
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                1.2211318   1.1875583   1.2547053
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                1.2303233   1.1971680   1.2634786
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                1.2254931   1.1894159   1.2615703
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                1.2362231   1.1995990   1.2728472
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                1.1169266   1.0143468   1.2195064
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                1.2140293   1.1356415   1.2924171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                1.0973511   1.0332900   1.1614121
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                1.0969655   1.0570759   1.1368550
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   NA                1.2420470   1.0598597   1.4242343
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   NA                1.3686623   1.2463543   1.4909704
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   NA                1.3132445   1.1524831   1.4740059
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   NA                1.0893599   0.9754178   1.2033020
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                1.2320413   1.0787001   1.3853825
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                1.1157333   1.0285579   1.2029087
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                1.0488425   0.9552619   1.1424231
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                1.0247894   0.9461830   1.1033958
6-12 months    ki1114097-CMIN             PERU                           Q1                   NA                1.1657128   1.0654335   1.2659922
6-12 months    ki1114097-CMIN             PERU                           Q2                   NA                1.1548442   1.1001450   1.2095433
6-12 months    ki1114097-CMIN             PERU                           Q3                   NA                1.0883809   1.0416275   1.1351343
6-12 months    ki1114097-CMIN             PERU                           Q4                   NA                1.0910900   1.0542404   1.1279397
6-12 months    ki1114097-CONTENT          PERU                           Q1                   NA                1.3097501   1.2016789   1.4178213
6-12 months    ki1114097-CONTENT          PERU                           Q2                   NA                1.3161372   1.2573816   1.3748927
6-12 months    ki1114097-CONTENT          PERU                           Q3                   NA                1.2849160   1.2366738   1.3331582
6-12 months    ki1114097-CONTENT          PERU                           Q4                   NA                1.3056727   1.2556987   1.3556467
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                1.2152316   1.1972693   1.2331940
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                1.2012753   1.1847659   1.2177847
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                1.1923298   1.1712862   1.2133734
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                1.1853546   1.1521925   1.2185167
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                0.8676080   0.7863113   0.9489046
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                0.8331878   0.7978416   0.8685340
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                0.8418563   0.8185853   0.8651273
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                0.8554188   0.8264973   0.8843403
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   NA                0.9815193   0.9431372   1.0199014
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   NA                0.9904406   0.9365295   1.0443516
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   NA                0.9403065   0.8179463   1.0626667
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                0.8739756   0.8219521   0.9259991
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                0.8621884   0.8327421   0.8916346
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                0.8931013   0.8653124   0.9208901
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                0.8890892   0.8473217   0.9308568
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                0.8861383   0.8400397   0.9322370
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                0.8506096   0.8230791   0.8781401
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                0.8679705   0.8394639   0.8964772
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                0.8582730   0.8302037   0.8863422
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                0.7719410   0.7055759   0.8383060
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                0.7702891   0.7288092   0.8117691
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                0.7652807   0.7252013   0.8053600
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                0.7587836   0.7130741   0.8044931
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                0.8092504   0.7531874   0.8653135
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                0.7580324   0.7289959   0.7870690
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                0.7424479   0.7181167   0.7667791
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                0.7507057   0.7263478   0.7750637
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                0.8327019   0.7848565   0.8805473
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                0.8576245   0.8328988   0.8823502
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                0.8700404   0.8516685   0.8884123
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                0.8442460   0.8219209   0.8665711
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                0.8750279   0.8555460   0.8945097
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                0.9126799   0.8897046   0.9356553
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                0.8515705   0.8279933   0.8751477
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                0.8481913   0.8197108   0.8766718
12-24 months   ki1114097-CMIN             PERU                           Q1                   NA                0.8373214   0.7757735   0.8988694
12-24 months   ki1114097-CMIN             PERU                           Q2                   NA                0.8273048   0.7867321   0.8678776
12-24 months   ki1114097-CMIN             PERU                           Q3                   NA                0.8477902   0.8170332   0.8785472
12-24 months   ki1114097-CMIN             PERU                           Q4                   NA                0.8375326   0.8072687   0.8677964
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                0.8501372   0.8408557   0.8594188
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                0.8544524   0.8460333   0.8628714
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                0.8418152   0.8319765   0.8516539
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                0.8433227   0.8253109   0.8613346


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.1638157   -0.1126614    0.4402929
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.1022205   -0.1430764    0.3475174
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0823268   -0.1763240    0.3409776
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0797708   -0.3774990    0.2179575
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0951638   -0.3822477    0.1919202
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                -0.1264864   -0.4746936    0.2217207
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0886198   -0.4084967    0.2312572
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0869831   -0.3871250    0.2131589
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.0320679   -0.2717241    0.3358600
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                 0.0050238   -0.3338926    0.3439402
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                -0.0071777   -0.2931904    0.2788349
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0457188   -0.2364669    0.3279046
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0718488   -0.3464766    0.2027790
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0631875   -0.3263064    0.1999315
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.1579458   -0.4535463    0.1376548
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                -0.2963235   -0.5932997    0.0006527
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.1582098   -0.5206197    0.2042001
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.0010201   -0.3718453    0.3698051
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                 0.0651925   -0.1686335    0.2990185
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                 0.1800078   -0.0414414    0.4014571
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                 0.2041955   -0.0245658    0.4329567
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0528293   -0.1165166    0.2221752
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0533825   -0.1128350    0.2195999
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0593906   -0.1146344    0.2334156
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0829638   -0.0126206    0.1785481
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.2003813    0.0990799    0.3016827
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.1632218    0.0575815    0.2688621
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0979847   -1.1984820    1.0025126
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.4900817   -1.6034916    0.6233282
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.3438593   -1.4338018    0.7460832
0-3 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           Q2                   Q1                -0.4104615   -1.1415006    0.3205776
0-3 months     ki1114097-CMIN             PERU                           Q3                   Q1                -0.3985276   -1.1341194    0.3370641
0-3 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.5753694   -1.2815713    0.1308326
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0294729   -0.0481803    0.1071262
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                 0.0133336   -0.0739850    0.1006522
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0392036   -0.0573685    0.1357758
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.2229855    0.0378565    0.4081145
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.2099918    0.0390211    0.3809625
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.1554673   -0.0157195    0.3266541
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.1514745   -0.0240470    0.3269960
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.1425601   -0.0252293    0.3103495
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0790897   -0.1530193    0.3111988
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0669737   -0.2761574    0.1422100
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0077859   -0.1999326    0.2155044
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.1013059   -0.3186593    0.1160475
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                 0.0569680   -0.3452137    0.4591496
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                 0.1045862   -0.2587126    0.4678850
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0959381   -0.2601704    0.4520467
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.0068447   -0.2508085    0.2644979
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0957033   -0.1524626    0.3438691
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                 0.1079572   -0.1563503    0.3722646
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                 0.1139636   -0.1056941    0.3336213
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.0229563   -0.2233044    0.1773917
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.1940316   -0.3807252   -0.0073380
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   Q1                -0.0496811   -0.7603069    0.6609447
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   Q1                -0.1214738   -0.7279285    0.4849809
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   Q1                -0.2933446   -0.8313577    0.2446686
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0256180   -0.2171588    0.1659228
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0704919   -0.2539027    0.1129189
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0483459   -0.2360151    0.1393233
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.1193325   -0.0303916    0.2690566
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.1733320    0.0260217    0.3206423
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.1932268    0.0425531    0.3439005
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                -0.0730743   -0.1815917    0.0354430
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.2192832   -0.3213384   -0.1172281
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.1666323   -0.2685053   -0.0647593
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.1329487   -1.0347947    0.7688974
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.1602773   -1.0976509    0.7770963
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1783451   -1.0560054    0.6993151
3-6 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           Q2                   Q1                 0.1237198   -0.0289593    0.2763988
3-6 months     ki1114097-CMIN             PERU                           Q3                   Q1                 0.1026597   -0.0628697    0.2681891
3-6 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.0220588   -0.1684935    0.1243758
3-6 months     ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Q2                   Q1                -0.0488163   -0.2277708    0.1301382
3-6 months     ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0187593   -0.1967420    0.1592234
3-6 months     ki1114097-CONTENT          PERU                           Q4                   Q1                 0.0142708   -0.1746537    0.2031952
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0073838   -0.0628055    0.0775731
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0063778   -0.0829851    0.0702295
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0146736   -0.0806278    0.1099749
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.0003055   -0.1363556    0.1369666
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0377969   -0.0904260    0.1660197
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0396637   -0.0896903    0.1690177
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.0073474   -0.0978993    0.1125941
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0017102   -0.1014691    0.1048896
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0811141   -0.0434740    0.2057022
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                 0.0217296   -0.0646697    0.1081288
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0096190   -0.0892685    0.0700304
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.0015853   -0.0853007    0.0884713
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.0615598   -0.0655153    0.1886349
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0117538   -0.1014358    0.1249434
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0441920   -0.1746701    0.0862862
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   Q1                 0.2568476   -0.0917154    0.6054105
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   Q1                 0.3040164   -0.0612756    0.6693085
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   Q1                 0.2602537   -0.0336390    0.5541463
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                -0.2866539   -0.5615983   -0.0117095
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                -0.2780089   -0.5956057    0.0395879
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                -0.2292200   -0.4929917    0.0345516
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0750094   -0.1768505    0.0268317
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0843190   -0.1801807    0.0115426
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.1486489   -0.2448164   -0.0524814
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                -0.0193343   -0.0916540    0.0529855
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0517786   -0.1209592    0.0174020
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0414699   -0.1162878    0.0333479
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0091915   -0.0379938    0.0563768
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.0043613   -0.0449210    0.0536436
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0150913   -0.0345927    0.0647754
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                 0.0971027   -0.0319990    0.2262045
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                -0.0195755   -0.1405153    0.1013643
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                -0.0199611   -0.1300238    0.0901016
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   Q1                 0.1266153   -0.0928191    0.3460497
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   Q1                 0.0711975   -0.1717766    0.3141716
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1526871   -0.3675708    0.0621966
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                -0.1163080   -0.2926970    0.0600810
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                -0.1831987   -0.3628397   -0.0035578
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                -0.2072518   -0.3795669   -0.0349368
6-12 months    ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           Q2                   Q1                -0.0108687   -0.1250963    0.1033589
6-12 months    ki1114097-CMIN             PERU                           Q3                   Q1                -0.0773319   -0.1879747    0.0333109
6-12 months    ki1114097-CMIN             PERU                           Q4                   Q1                -0.0746228   -0.1814584    0.0322128
6-12 months    ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Q2                   Q1                 0.0063871   -0.1166235    0.1293976
6-12 months    ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0248341   -0.1431839    0.0935158
6-12 months    ki1114097-CONTENT          PERU                           Q4                   Q1                -0.0040774   -0.1231437    0.1149889
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                -0.0139563   -0.0387680    0.0108553
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0229018   -0.0499359    0.0041322
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0298770   -0.0671072    0.0073531
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0344201   -0.1230683    0.0542281
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                -0.0257517   -0.1103134    0.0588101
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                -0.0121891   -0.0984770    0.0740988
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   Q1                 0.0089213   -0.0572572    0.0750997
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   Q1                -0.0412128   -0.1694517    0.0870260
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0117872   -0.0715662    0.0479918
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0191257   -0.0398545    0.0781059
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0151137   -0.0516020    0.0818293
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0355288   -0.0892225    0.0181650
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0181678   -0.0723685    0.0360329
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0278654   -0.0818373    0.0261066
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0016518   -0.0799136    0.0766099
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0066603   -0.0841888    0.0708682
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0131574   -0.0937407    0.0674260
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0512180   -0.1143543    0.0119183
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0668025   -0.1279178   -0.0056872
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0585447   -0.1196706    0.0025812
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0249226   -0.0289341    0.0787793
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0373385   -0.0139129    0.0885900
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0115441   -0.0412536    0.0643417
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0376521    0.0075288    0.0677753
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.0234574   -0.0540421    0.0071274
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0268365   -0.0613428    0.0076697
12-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                -0.0100166   -0.0837343    0.0637011
12-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                 0.0104688   -0.0583364    0.0792739
12-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                 0.0002111   -0.0683750    0.0687973
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0043151   -0.0079471    0.0165774
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0083220   -0.0212480    0.0046039
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0068145   -0.0272577    0.0136288
