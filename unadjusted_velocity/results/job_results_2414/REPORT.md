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
![](/tmp/709db1a6-78f5-4f0b-9fba-50a01ad6e701/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/709db1a6-78f5-4f0b-9fba-50a01ad6e701/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0926715   -0.2105989    0.0252558
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0141438   -0.0901845    0.0618969
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0301387   -0.0745386    0.0142613
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0387059   -0.0996243    0.0222125
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0033740   -0.1277516    0.1210035
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0161656   -0.0820544    0.0497233
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0227630   -0.0826670    0.0371409
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0363517   -0.1427379    0.0700346
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                 0.0971946   -0.0267336    0.2211229
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                 0.0563663   -0.0164576    0.1291903
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                 0.0655851    0.0116572    0.1195129
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                 0.0942308    0.0316313    0.1568304
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.1649381   -0.2911065   -0.0387697
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.1695044   -0.2780322   -0.0609766
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                -0.1616157   -0.2131259   -0.1101055
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                -0.1526354   -0.2001465   -0.1051244
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0144942   -0.1000529    0.1290413
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0380582   -0.1045132    0.0283969
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0437494   -0.1032703    0.0157715
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1044308   -0.2019651   -0.0068966
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   NA                -0.3677959   -0.4124454   -0.3231465
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   NA                -0.5228915   -0.6749798   -0.3708032
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   NA                -0.4661162   -0.6429182   -0.2893143
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   NA                -0.3483357   -0.5314398   -0.1652316
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.1631325   -0.2631999   -0.0630650
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.1451726   -0.2033094   -0.0870357
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.1077272   -0.1489540   -0.0665005
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.1048934   -0.1546570   -0.0551298
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0418136   -0.1080710    0.0244438
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0293965   -0.0615763    0.0027833
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0436035   -0.0720678   -0.0151393
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0493713   -0.0879729   -0.0107697
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.1618650   -0.1917445   -0.1319855
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.1386050   -0.1720482   -0.1051618
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0815994   -0.1193701   -0.0438287
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.1108304   -0.1523418   -0.0693190
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                 0.0603657   -0.4466624    0.5673938
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                 0.0229990   -0.1424419    0.1884400
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.1851663   -0.3808588    0.0105263
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.0994199   -0.2421543    0.0433145
0-3 months     ki1114097-CMIN             PERU                           Q1                   NA                 0.0356476   -0.2926807    0.3639760
0-3 months     ki1114097-CMIN             PERU                           Q2                   NA                -0.1165000   -0.2530046    0.0200046
0-3 months     ki1114097-CMIN             PERU                           Q3                   NA                -0.0842753   -0.2237869    0.0552363
0-3 months     ki1114097-CMIN             PERU                           Q4                   NA                -0.1549233   -0.2378972   -0.0719494
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0638043    0.0369489    0.0906598
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                 0.0721445    0.0471343    0.0971547
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                 0.0584658    0.0255794    0.0913522
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                 0.0913557    0.0490087    0.1337027
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.1067815   -0.1798468   -0.0337162
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0055646   -0.0550208    0.0438915
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0098259   -0.0472537    0.0276019
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0328288   -0.0726288    0.0069712
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0995478   -0.1684165   -0.0306790
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0272553   -0.0771405    0.0226299
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0290089   -0.0719033    0.0138854
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0551634   -0.1388889    0.0285621
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                 0.0029097   -0.0866471    0.0924666
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0299022   -0.0757419    0.0159375
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                 0.0090948   -0.0337556    0.0519451
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0528159   -0.1064381    0.0008063
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.0188478   -0.1799775    0.1422819
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                 0.0130983   -0.0841609    0.1103575
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                 0.0371324   -0.0166118    0.0908766
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                 0.0270115   -0.0155769    0.0696000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0917873   -0.1959677    0.0123931
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0942893   -0.1548460   -0.0337326
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0570639   -0.1078667   -0.0062611
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0542465   -0.1205940    0.0121011
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   NA                 0.0698686    0.0371843    0.1025529
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   NA                 0.1256342    0.0281421    0.2231263
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   NA                 0.0578106   -0.0296215    0.1452427
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   NA                -0.0151387   -0.0901254    0.0598479
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.1718798   -0.0639523    0.4077119
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   NA                 0.1136110   -0.1213337    0.3485558
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   NA                 0.0765414   -0.0767832    0.2298659
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   NA                 0.0086435   -0.0718001    0.0890871
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0190899   -0.0947991    0.0566192
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0336643   -0.0762706    0.0089421
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0625871   -0.0985596   -0.0266145
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0539444   -0.0949393   -0.0129496
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0908012   -0.1562215   -0.0253809
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0381197   -0.0678873   -0.0083521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0171480   -0.0442834    0.0099875
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0137914   -0.0443110    0.0167281
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.0893592    0.0537433    0.1249752
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                 0.0476525    0.0123488    0.0829563
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0229973   -0.0539189    0.0079243
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0005842   -0.0304580    0.0292896
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                -0.0815914   -0.4891546    0.3259718
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                -0.1420089   -0.2915256    0.0075078
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.1493693   -0.3434216    0.0446829
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.1521914   -0.2693151   -0.0350678
3-6 months     ki1114097-CMIN             PERU                           Q1                   NA                -0.0823643   -0.1435380   -0.0211905
3-6 months     ki1114097-CMIN             PERU                           Q2                   NA                -0.0217952   -0.0604828    0.0168924
3-6 months     ki1114097-CMIN             PERU                           Q3                   NA                -0.0286231   -0.0779595    0.0207133
3-6 months     ki1114097-CMIN             PERU                           Q4                   NA                -0.0882850   -0.1232452   -0.0533247
3-6 months     ki1114097-CONTENT          PERU                           Q1                   NA                 0.0180460   -0.0555752    0.0916672
3-6 months     ki1114097-CONTENT          PERU                           Q2                   NA                 0.0036017   -0.0345668    0.0417703
3-6 months     ki1114097-CONTENT          PERU                           Q3                   NA                 0.0082987   -0.0287515    0.0453489
3-6 months     ki1114097-CONTENT          PERU                           Q4                   NA                 0.0266666   -0.0211253    0.0744584
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0093693   -0.0322946    0.0135560
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0073679   -0.0312020    0.0164661
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0143267   -0.0413751    0.0127216
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                 0.0020743   -0.0343939    0.0385426
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0931265   -0.1427037   -0.0435494
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0933652   -0.1188039   -0.0679265
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0789452   -0.0943373   -0.0635530
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0729682   -0.0900931   -0.0558433
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0825836   -0.1233336   -0.0418336
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0839114   -0.1041306   -0.0636922
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0828239   -0.1006717   -0.0649761
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0477439   -0.0827325   -0.0127552
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0561883   -0.0856415   -0.0267351
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0406354   -0.0616432   -0.0196275
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0527815   -0.0687013   -0.0368617
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0500735   -0.0718153   -0.0283316
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1266206   -0.1691446   -0.0840966
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.1035670   -0.1357039   -0.0714301
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.1254594   -0.1477537   -0.1031650
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1498693   -0.1860474   -0.1136912
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   NA                -0.1153806   -0.2396516    0.0088905
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   NA                -0.0220941   -0.1021118    0.0579235
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   NA                 0.0091965   -0.0982225    0.1166156
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   NA                -0.0046326   -0.0455384    0.0362731
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                -0.0281587   -0.1310703    0.0747530
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                -0.1473698   -0.1919947   -0.1027448
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                -0.1439089   -0.2256296   -0.0621882
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                -0.1235295   -0.1559402   -0.0911188
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0117884   -0.0479508    0.0243739
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0426505   -0.0629436   -0.0223574
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0482289   -0.0629224   -0.0335353
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0748008   -0.0901156   -0.0594861
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0496257   -0.0735980   -0.0256534
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0557177   -0.0689108   -0.0425246
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0675739   -0.0776246   -0.0575233
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0653526   -0.0809255   -0.0497797
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0354285   -0.0494606   -0.0213963
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.0314634   -0.0452585   -0.0176684
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0326597   -0.0477586   -0.0175607
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0262483   -0.0416011   -0.0108955
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                -0.0797417   -0.1227319   -0.0367514
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                -0.0318954   -0.0631464   -0.0006445
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                -0.0830232   -0.1094783   -0.0565682
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                -0.0782280   -0.0950248   -0.0614312
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   NA                -0.0397898   -0.1175989    0.0380192
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   NA                 0.0021114   -0.0470667    0.0512895
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.0107798   -0.0760068    0.0544472
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.0954402   -0.1411639   -0.0497165
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0498322   -0.1243588    0.0246945
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                -0.1002174   -0.1399787   -0.0604561
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                -0.1238935   -0.1646499   -0.0831370
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                -0.1298969   -0.1642150   -0.0955787
6-12 months    ki1114097-CMIN             PERU                           Q1                   NA                -0.0730068   -0.1161265   -0.0298872
6-12 months    ki1114097-CMIN             PERU                           Q2                   NA                -0.0774147   -0.1003997   -0.0544297
6-12 months    ki1114097-CMIN             PERU                           Q3                   NA                -0.1052150   -0.1254228   -0.0850071
6-12 months    ki1114097-CMIN             PERU                           Q4                   NA                -0.1000318   -0.1154347   -0.0846290
6-12 months    ki1114097-CONTENT          PERU                           Q1                   NA                -0.0142005   -0.0636183    0.0352173
6-12 months    ki1114097-CONTENT          PERU                           Q2                   NA                -0.0105151   -0.0365711    0.0155409
6-12 months    ki1114097-CONTENT          PERU                           Q3                   NA                -0.0319759   -0.0518929   -0.0120588
6-12 months    ki1114097-CONTENT          PERU                           Q4                   NA                -0.0246501   -0.0456119   -0.0036883
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0344451   -0.0418894   -0.0270008
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0391624   -0.0462232   -0.0321016
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0425273   -0.0516177   -0.0334368
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0412015   -0.0552577   -0.0271453
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0062352   -0.0326623    0.0201920
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0191191   -0.0302331   -0.0080052
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0233080   -0.0311405   -0.0154755
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0119757   -0.0220191   -0.0019322
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   NA                -0.0019079   -0.0151078    0.0112921
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   NA                 0.0004965   -0.0178814    0.0188744
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   NA                -0.0056794   -0.0512280    0.0398692
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0092552   -0.0231713    0.0046609
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0176146   -0.0268033   -0.0084259
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0044292   -0.0125553    0.0036969
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0085602   -0.0202774    0.0031571
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0271844   -0.0443381   -0.0100307
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0333634   -0.0430831   -0.0236437
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0260378   -0.0345260   -0.0175497
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0300421   -0.0392444   -0.0208397
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0360434   -0.0584475   -0.0136393
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0415315   -0.0549725   -0.0280905
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0393293   -0.0528822   -0.0257765
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0377850   -0.0528283   -0.0227416
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0322866   -0.0520655   -0.0125076
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0387232   -0.0474047   -0.0300417
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0442149   -0.0521080   -0.0363219
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0375385   -0.0454422   -0.0296348
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0227075   -0.0366904   -0.0087246
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0100949   -0.0182443   -0.0019455
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0023506   -0.0083457    0.0036446
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0117712   -0.0184780   -0.0050643
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0036943   -0.0103731    0.0029844
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                 0.0049491   -0.0028529    0.0127511
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0159972   -0.0240654   -0.0079290
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0131036   -0.0225501   -0.0036571
12-24 months   ki1114097-CMIN             PERU                           Q1                   NA                -0.0357514   -0.0585790   -0.0129237
12-24 months   ki1114097-CMIN             PERU                           Q2                   NA                -0.0368464   -0.0514665   -0.0222264
12-24 months   ki1114097-CMIN             PERU                           Q3                   NA                -0.0271818   -0.0369818   -0.0173819
12-24 months   ki1114097-CMIN             PERU                           Q4                   NA                -0.0255236   -0.0366210   -0.0144262
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0152758   -0.0185652   -0.0119864
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0131114   -0.0159663   -0.0102566
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0162354   -0.0197151   -0.0127557
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0130321   -0.0197408   -0.0063234


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0853247   -0.1864247    0.0157752
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1431730   -0.2334590   -0.0528870
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0402665   -0.0712609   -0.0092722
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1201166   -0.1424803   -0.0977529
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383413   -0.0427080   -0.0339747
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145970   -0.0164717   -0.0127223


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.0785277   -0.0617899    0.2188454
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0625329   -0.0634759    0.1885417
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0539656   -0.0787668    0.1866981
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0127916   -0.1535435    0.1279604
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0193890   -0.1574407    0.1186626
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                -0.0329776   -0.1966475    0.1306922
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0408283   -0.1845695    0.1029129
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0316096   -0.1667629    0.1035437
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0029638   -0.1418051    0.1358775
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                -0.0045663   -0.1709897    0.1618571
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                 0.0033223   -0.1329559    0.1396006
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0123026   -0.1225149    0.1471202
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0525524   -0.1849809    0.0798762
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0582436   -0.1873318    0.0708447
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.1189250   -0.2693709    0.0315209
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                -0.1550955   -0.3136024    0.0034113
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.0983203   -0.2806730    0.0840324
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                 0.0194603   -0.1690091    0.2079296
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                 0.0179599   -0.0977699    0.1336897
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                 0.0554052   -0.0528220    0.1636325
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                 0.0582391   -0.0535192    0.1699974
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0124171   -0.0612415    0.0860756
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0017900   -0.0739028    0.0703228
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0075577   -0.0842397    0.0691243
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0232600   -0.0215868    0.0681068
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.0802656    0.0321053    0.1284259
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0510346   -0.0001121    0.1021812
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0373667   -0.5707036    0.4959702
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.2455320   -0.7890143    0.2979504
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1597856   -0.6865214    0.3669502
0-3 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           Q2                   Q1                -0.1521476   -0.5077218    0.2034266
0-3 months     ki1114097-CMIN             PERU                           Q3                   Q1                -0.1199229   -0.4766624    0.2368165
0-3 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.1905710   -0.5292215    0.1480796
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0083402   -0.0285139    0.0451942
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0053385   -0.0476855    0.0370085
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0275514   -0.0231414    0.0782441
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.1012169    0.0129874    0.1894464
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0969556    0.0148619    0.1790493
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0739528   -0.0092493    0.1571548
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.0722924   -0.0127454    0.1573303
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0705388   -0.0105958    0.1516735
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0443843   -0.0640263    0.1527950
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0328119   -0.1334186    0.0677948
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0061850   -0.0930953    0.1054653
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0557256   -0.1601084    0.0486571
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                 0.0319460   -0.1562616    0.2201537
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                 0.0559802   -0.1138763    0.2258366
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0458593   -0.1208036    0.2125223
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0025020   -0.1230038    0.1179998
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0347234   -0.0811838    0.1506306
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                 0.0375408   -0.0859726    0.1610542
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                 0.0557656   -0.0470593    0.1585905
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.0120580   -0.1053995    0.0812835
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.0850073   -0.1668075   -0.0032072
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   Q1                -0.0582687   -0.3911589    0.2746214
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   Q1                -0.0953384   -0.3766304    0.1859536
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   Q1                -0.1632363   -0.4124108    0.0859383
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0145744   -0.1014488    0.0723001
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0434972   -0.1273178    0.0403235
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0348545   -0.1209501    0.0512411
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0526815   -0.0191929    0.1245560
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0736533    0.0028284    0.1444781
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0770098    0.0048207    0.1491989
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                -0.0417067   -0.0918550    0.0084416
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.1123565   -0.1595227   -0.0651904
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0899434   -0.1364294   -0.0434575
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0604174   -0.4945407    0.3737058
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.0677779   -0.5191803    0.3836244
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.0706000   -0.4946586    0.3534586
3-6 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           Q2                   Q1                 0.0605691   -0.0118116    0.1329497
3-6 months     ki1114097-CMIN             PERU                           Q3                   Q1                 0.0537412   -0.0248483    0.1323307
3-6 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.0059207   -0.0763795    0.0645381
3-6 months     ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Q2                   Q1                -0.0144442   -0.0973714    0.0684829
3-6 months     ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0097473   -0.0921657    0.0726711
3-6 months     ki1114097-CONTENT          PERU                           Q4                   Q1                 0.0086206   -0.0791527    0.0963938
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0020014   -0.0306309    0.0346337
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0049574   -0.0401307    0.0302159
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0114437   -0.0315100    0.0543973
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0002387   -0.0559614    0.0554840
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0141813   -0.0377302    0.0660929
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0201583   -0.0322931    0.0726098
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0013278   -0.0468182    0.0441626
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0002403   -0.0447275    0.0442468
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0348397   -0.0188703    0.0885498
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                 0.0155529   -0.0206247    0.0517305
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0034067   -0.0300736    0.0368870
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.0061148   -0.0304939    0.0427235
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.0230536   -0.0302481    0.0763553
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0011612   -0.0468526    0.0491750
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0232487   -0.0790800    0.0325827
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   Q1                 0.0932864   -0.0545179    0.2410908
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   Q1                 0.1245771   -0.0396853    0.2888395
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   Q1                 0.1107479   -0.0200824    0.2415782
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                -0.1192111   -0.2313815   -0.0070407
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                -0.1157502   -0.2471621    0.0156616
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                -0.0953708   -0.2032655    0.0125239
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0308621   -0.0723292    0.0106051
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0364405   -0.0754740    0.0025931
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0630124   -0.1022840   -0.0237408
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                -0.0060921   -0.0334550    0.0212709
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0179483   -0.0439422    0.0080457
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0157269   -0.0443134    0.0128595
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0039650   -0.0157125    0.0236425
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.0027688   -0.0178438    0.0233814
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0091801   -0.0116191    0.0299794
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                 0.0478462   -0.0053025    0.1009949
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                -0.0032816   -0.0537596    0.0471964
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                 0.0015136   -0.0446415    0.0476688
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   Q1                 0.0419012   -0.0501462    0.1339487
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   Q1                 0.0290100   -0.0725223    0.1305423
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.0556504   -0.1458995    0.0345988
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                -0.0503853   -0.1348553    0.0340847
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                -0.0740613   -0.1590043    0.0108817
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                -0.0800647   -0.1621132    0.0019838
6-12 months    ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           Q2                   Q1                -0.0044079   -0.0532711    0.0444554
6-12 months    ki1114097-CMIN             PERU                           Q3                   Q1                -0.0322081   -0.0798281    0.0154118
6-12 months    ki1114097-CMIN             PERU                           Q4                   Q1                -0.0270250   -0.0728131    0.0187631
6-12 months    ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Q2                   Q1                 0.0036854   -0.0521808    0.0595516
6-12 months    ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0177754   -0.0710558    0.0355051
6-12 months    ki1114097-CONTENT          PERU                           Q4                   Q1                -0.0104496   -0.0641293    0.0432301
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                -0.0047173   -0.0151802    0.0057455
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0080822   -0.0195650    0.0034006
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0067564   -0.0225128    0.0090000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0128840   -0.0415530    0.0157850
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                -0.0170728   -0.0446362    0.0104906
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                -0.0057405   -0.0340118    0.0225308
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   Q1                 0.0024043   -0.0202228    0.0250315
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   Q1                -0.0037715   -0.0511942    0.0436512
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0083594   -0.0250354    0.0083166
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0048260   -0.0112889    0.0209409
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0006950   -0.0174971    0.0188871
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0061790   -0.0258950    0.0135371
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0011466   -0.0179923    0.0202855
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0028577   -0.0223238    0.0166085
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0054881   -0.0316148    0.0206386
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0032859   -0.0294703    0.0228985
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0017415   -0.0287276    0.0252445
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0064366   -0.0280370    0.0151637
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0119284   -0.0332241    0.0093673
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0052519   -0.0265516    0.0160477
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0126126   -0.0035718    0.0287969
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0203569    0.0051430    0.0355708
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0109363   -0.0045719    0.0264445
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0086434   -0.0016268    0.0189136
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.0123028   -0.0227767   -0.0018290
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0094092   -0.0209782    0.0021597
12-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                -0.0010950   -0.0282031    0.0260130
12-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                 0.0085696   -0.0162728    0.0334119
12-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                 0.0102278   -0.0151544    0.0356099
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0021644   -0.0021070    0.0064358
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0009596   -0.0056258    0.0037066
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0022437   -0.0052627    0.0097501
