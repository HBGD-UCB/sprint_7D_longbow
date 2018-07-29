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

**Outcome Variable:** y_rate_haz

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
![](/tmp/90382e1a-63e6-4809-b197-e4de8f373130/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/90382e1a-63e6-4809-b197-e4de8f373130/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0914746   -0.2060008    0.0230516
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0139426   -0.0887181    0.0608329
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0295653   -0.0734884    0.0143579
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0397171   -0.0995472    0.0201130
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0558986   -0.0390112    0.1508084
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0026995   -0.0631947    0.0577957
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0147608   -0.0695424    0.0400208
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0173149   -0.1090414    0.0744116
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                 0.2876864    0.1944699    0.3809029
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                 0.1145796    0.0497458    0.1794133
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                 0.1122342    0.0622569    0.1622114
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                 0.1508689    0.0946890    0.2070488
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.1598003   -0.2529038   -0.0666967
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                -0.1664524   -0.2447399   -0.0881648
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                -0.1636772   -0.2072141   -0.1201404
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                -0.1506093   -0.1923337   -0.1088850
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                 0.0072500   -0.1034696    0.1179696
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0405575   -0.1059097    0.0247948
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0447024   -0.1036667    0.0142619
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1074582   -0.2019763   -0.0129401
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   NA                -0.3682730   -0.4129163   -0.3236298
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   NA                -0.5144576   -0.6551134   -0.3738019
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   NA                -0.4697556   -0.6449226   -0.2945887
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   NA                -0.3494268   -0.5314846   -0.1673689
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.2169608   -0.3065115   -0.1274101
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.1601142   -0.2119789   -0.1082496
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.1103663   -0.1495130   -0.0712197
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0980082   -0.1440386   -0.0519777
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                 0.0053674   -0.0333398    0.0440746
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0158793   -0.0420158    0.0102572
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0423406   -0.0659186   -0.0187626
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0366747   -0.0663030   -0.0070464
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.2388231   -0.2642001   -0.2134460
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.1842277   -0.2141166   -0.1543388
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.1212603   -0.1546700   -0.0878507
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.1596243   -0.1957240   -0.1235245
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                 0.0529088   -0.3848441    0.4906618
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                 0.0231930   -0.1154002    0.1617861
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.1873901   -0.3746080   -0.0001721
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.0968575   -0.2387384    0.0450235
0-3 months     ki1114097-CMIN             PERU                           Q1                   NA                 0.0270105   -0.3012487    0.3552698
0-3 months     ki1114097-CMIN             PERU                           Q2                   NA                -0.1131472   -0.2483466    0.0220522
0-3 months     ki1114097-CMIN             PERU                           Q3                   NA                -0.0831504   -0.2221234    0.0558227
0-3 months     ki1114097-CMIN             PERU                           Q4                   NA                -0.1559527   -0.2389719   -0.0729335
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                 0.0674370    0.0432516    0.0916225
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                 0.0710459    0.0479835    0.0941082
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                 0.0584070    0.0295670    0.0872471
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                 0.0815809    0.0460210    0.1171407
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.1052491   -0.1764101   -0.0340880
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0057803   -0.0537181    0.0421574
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0100967   -0.0467613    0.0265679
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0329228   -0.0716980    0.0058525
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0993735   -0.1680638   -0.0306831
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0272839   -0.0770625    0.0224946
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0290184   -0.0718273    0.0137904
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0553741   -0.1388392    0.0280910
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   NA                 0.0029097   -0.0866471    0.0924666
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0299022   -0.0757419    0.0159375
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   NA                 0.0090948   -0.0337556    0.0519451
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0528159   -0.1064381    0.0008063
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   NA                -0.0154257   -0.1734053    0.1425539
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   NA                 0.0015948   -0.0848911    0.0880807
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   NA                 0.0396739   -0.0131054    0.0924533
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   NA                 0.0274525   -0.0143556    0.0692607
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0532931   -0.1341113    0.0275252
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0748759   -0.1256772   -0.0240746
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0512165   -0.0961404   -0.0062926
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0356679   -0.0905036    0.0191677
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   NA                 0.0690684    0.0365226    0.1016141
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   NA                 0.1241371    0.0291926    0.2190815
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   NA                 0.0597925   -0.0229258    0.1425107
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   NA                -0.0160703   -0.0868090    0.0546685
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   NA                 0.1786915   -0.0695292    0.4269121
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   NA                 0.1037257   -0.0909840    0.2984354
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   NA                 0.0746205   -0.0805597    0.2298008
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   NA                 0.0090393   -0.0705523    0.0886309
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                 0.0067600   -0.0449566    0.0584766
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0261074   -0.0644531    0.0122383
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0622947   -0.0962562   -0.0283332
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0520358   -0.0913745   -0.0126970
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.1829899   -0.2254885   -0.1404914
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0568533   -0.0831671   -0.0305395
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0282997   -0.0533163   -0.0032831
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0311766   -0.0577894   -0.0045638
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                 0.1047340    0.0760503    0.1334177
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                 0.0603309    0.0297044    0.0909574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0129555   -0.0398601    0.0139492
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                 0.0114234   -0.0138847    0.0367316
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   NA                -0.0762459   -0.3912939    0.2388021
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   NA                -0.1417936   -0.2635539   -0.0200333
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.1477407   -0.3061592    0.0106778
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.1588642   -0.2606507   -0.0570777
3-6 months     ki1114097-CMIN             PERU                           Q1                   NA                -0.0822024   -0.1434622   -0.0209426
3-6 months     ki1114097-CMIN             PERU                           Q2                   NA                -0.0204581   -0.0589964    0.0180803
3-6 months     ki1114097-CMIN             PERU                           Q3                   NA                -0.0287402   -0.0778516    0.0203713
3-6 months     ki1114097-CMIN             PERU                           Q4                   NA                -0.0888469   -0.1235349   -0.0541589
3-6 months     ki1114097-CONTENT          PERU                           Q1                   NA                 0.0154833   -0.0463507    0.0773173
3-6 months     ki1114097-CONTENT          PERU                           Q2                   NA                 0.0039920   -0.0322257    0.0402097
3-6 months     ki1114097-CONTENT          PERU                           Q3                   NA                 0.0150495   -0.0198308    0.0499298
3-6 months     ki1114097-CONTENT          PERU                           Q4                   NA                 0.0243259   -0.0202326    0.0688845
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0108473   -0.0324401    0.0107456
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0065401   -0.0289364    0.0158562
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0132208   -0.0390080    0.0125664
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                 0.0026272   -0.0299116    0.0351660
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0930838   -0.1425848   -0.0435829
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0933615   -0.1187539   -0.0679691
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0789314   -0.0943075   -0.0635552
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0729835   -0.0900865   -0.0558806
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   NA                -0.0824886   -0.1169859   -0.0479913
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0828560   -0.1007557   -0.0649564
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   NA                -0.0832565   -0.0993715   -0.0671414
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   NA                -0.0477351   -0.0771627   -0.0183076
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0559609   -0.0851311   -0.0267907
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0407506   -0.0616471   -0.0198542
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0528073   -0.0685885   -0.0370260
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0500101   -0.0716423   -0.0283779
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.1668805   -0.1974133   -0.1363477
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.1134971   -0.1409711   -0.0860230
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.1321256   -0.1524427   -0.1118085
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.1705318   -0.2001141   -0.1409495
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   NA                -0.0939310   -0.2129080    0.0250461
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   NA                -0.0128253   -0.0930085    0.0673579
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   NA                 0.0014789   -0.1039943    0.1069521
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   NA                -0.0024962   -0.0436057    0.0386133
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   NA                 0.6523819    0.5663867    0.7383771
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   NA                -0.1850829   -0.1958563   -0.1743094
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   NA                -0.1658452   -0.1962148   -0.1354757
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   NA                -0.1202407   -0.1510810   -0.0894005
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0072073   -0.0377535    0.0233390
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0410261   -0.0608607   -0.0211915
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0481553   -0.0626337   -0.0336768
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0747398   -0.0897547   -0.0597249
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0352124   -0.0499612   -0.0204636
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0531282   -0.0637001   -0.0425562
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0663314   -0.0748793   -0.0577835
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0635463   -0.0761382   -0.0509543
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0408300   -0.0515239   -0.0301360
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                -0.0359897   -0.0466635   -0.0253160
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0385062   -0.0504481   -0.0265643
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0342808   -0.0458680   -0.0226935
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   NA                -0.0797423   -0.1227242   -0.0367605
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   NA                -0.0318951   -0.0631471   -0.0006431
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   NA                -0.0830237   -0.1094779   -0.0565695
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   NA                -0.0782279   -0.0950244   -0.0614313
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   NA                -0.0385626   -0.1099688    0.0328437
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   NA                 0.0021822   -0.0439711    0.0483355
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   NA                -0.0122268   -0.0728013    0.0483477
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   NA                -0.0942710   -0.1372784   -0.0512635
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   NA                -0.0450933   -0.1112851    0.0210986
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   NA                -0.1375609   -0.1770618   -0.0980601
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   NA                -0.1249149   -0.1662767   -0.0835532
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   NA                -0.1318020   -0.1665649   -0.0970390
6-12 months    ki1114097-CMIN             PERU                           Q1                   NA                -0.0727013   -0.1151291   -0.0302734
6-12 months    ki1114097-CMIN             PERU                           Q2                   NA                -0.0771522   -0.0998201   -0.0544842
6-12 months    ki1114097-CMIN             PERU                           Q3                   NA                -0.1056454   -0.1255054   -0.0857854
6-12 months    ki1114097-CMIN             PERU                           Q4                   NA                -0.1001162   -0.1155499   -0.0846825
6-12 months    ki1114097-CONTENT          PERU                           Q1                   NA                -0.0144414   -0.0626385    0.0337557
6-12 months    ki1114097-CONTENT          PERU                           Q2                   NA                -0.0113480   -0.0369138    0.0142178
6-12 months    ki1114097-CONTENT          PERU                           Q3                   NA                -0.0313608   -0.0507085   -0.0120131
6-12 months    ki1114097-CONTENT          PERU                           Q4                   NA                -0.0245243   -0.0447141   -0.0043345
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0346626   -0.0418386   -0.0274867
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0388633   -0.0455238   -0.0322028
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0426123   -0.0510610   -0.0341635
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0399059   -0.0527480   -0.0270637
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   NA                -0.0062352   -0.0326623    0.0201920
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   NA                -0.0191191   -0.0302331   -0.0080052
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   NA                -0.0233080   -0.0311405   -0.0154755
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   NA                -0.0119757   -0.0220191   -0.0019322
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   NA                -0.0712980   -0.0854254   -0.0571706
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   NA                -0.0967261   -0.1109271   -0.0825251
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   NA                -0.1460164   -0.1536942   -0.1383387
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   NA                 0.0187106    0.0080509    0.0293702
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   NA                -0.0112626   -0.0198935   -0.0026316
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   NA                 0.0006121   -0.0072129    0.0084372
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   NA                 0.0082689   -0.0017562    0.0182941
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   NA                -0.0186254   -0.0354059   -0.0018450
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   NA                -0.0309811   -0.0406130   -0.0213491
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   NA                -0.0239903   -0.0324189   -0.0155617
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   NA                -0.0279608   -0.0370748   -0.0188469
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   NA                -0.0352508   -0.0572515   -0.0132501
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   NA                -0.0418105   -0.0550062   -0.0286148
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   NA                -0.0398054   -0.0529914   -0.0266194
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   NA                -0.0367048   -0.0513736   -0.0220361
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   NA                -0.0187829   -0.0322499   -0.0053160
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   NA                -0.0381237   -0.0463806   -0.0298668
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   NA                -0.0440999   -0.0518126   -0.0363873
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   NA                -0.0363218   -0.0439383   -0.0287053
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   NA                -0.0287995   -0.0353131   -0.0222858
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   NA                -0.0099857   -0.0157710   -0.0042003
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   NA                -0.0029810   -0.0077150    0.0017531
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   NA                -0.0134141   -0.0180793   -0.0087489
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   NA                -0.0079442   -0.0134870   -0.0024015
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   NA                 0.0022422   -0.0044271    0.0089115
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   NA                -0.0229233   -0.0295841   -0.0162624
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   NA                -0.0241310   -0.0311244   -0.0171377
12-24 months   ki1114097-CMIN             PERU                           Q1                   NA                -0.0356994   -0.0585054   -0.0128934
12-24 months   ki1114097-CMIN             PERU                           Q2                   NA                -0.0367039   -0.0513098   -0.0220980
12-24 months   ki1114097-CMIN             PERU                           Q3                   NA                -0.0273386   -0.0370318   -0.0176454
12-24 months   ki1114097-CMIN             PERU                           Q4                   NA                -0.0255598   -0.0366373   -0.0144824
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   NA                -0.0160448   -0.0192269   -0.0128627
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   NA                -0.0135331   -0.0162508   -0.0108155
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   NA                -0.0176703   -0.0209731   -0.0143676
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   NA                -0.0175302   -0.0236476   -0.0114129


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.0775320   -0.0588647    0.2139288
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0619094   -0.0604079    0.1842266
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0517575   -0.0769861    0.1805012
0-3 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0585981   -0.1704759    0.0532797
0-3 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0706594   -0.1794223    0.0381035
0-3 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                -0.0732135   -0.2049086    0.0584817
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.1731068   -0.2852516   -0.0609621
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.1754522   -0.2801538   -0.0707507
0-3 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.1368175   -0.2444734   -0.0291616
0-3 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                -0.0066521   -0.1244517    0.1111475
0-3 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                -0.0038770   -0.1035132    0.0957592
0-3 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0091909   -0.0886925    0.1070744
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0478075   -0.1761061    0.0804911
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0519524   -0.1771232    0.0732183
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.1147082   -0.2599244    0.0305080
0-3 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                -0.1461846   -0.2926164    0.0002473
0-3 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.1014826   -0.2819980    0.0790328
0-3 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                 0.0188463   -0.1684860    0.2061786
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                 0.0568466   -0.0461675    0.1598606
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                 0.1065944    0.0092021    0.2039868
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                 0.1189526    0.0186346    0.2192706
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                -0.0212467   -0.0662914    0.0237980
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0477080   -0.0909245   -0.0044914
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0420421   -0.0888413    0.0047572
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0545954    0.0153381    0.0938526
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.1175627    0.0754054    0.1597201
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0791988    0.0347649    0.1236327
0-3 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0297159   -0.4804173    0.4209856
0-3 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.2402989   -0.7085989    0.2280010
0-3 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.1497663   -0.6030224    0.3034899
0-3 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           Q2                   Q1                -0.1401577   -0.4950137    0.2146983
0-3 months     ki1114097-CMIN             PERU                           Q3                   Q1                -0.1101609   -0.4665912    0.2462694
0-3 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.1829632   -0.5215661    0.1556396
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0036088   -0.0283122    0.0355299
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0090300   -0.0447927    0.0267328
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0141438   -0.0281030    0.0563906
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                 0.0994687    0.0139511    0.1849864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0951524    0.0153774    0.1749273
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0723263   -0.0083799    0.1530325
3-6 months     ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Q2                   Q1                 0.0720895   -0.0126981    0.1568771
3-6 months     ki0047075b-MAL-ED          INDIA                          Q3                   Q1                 0.0703550   -0.0105362    0.1512463
3-6 months     ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0439993   -0.0640750    0.1520737
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0328119   -0.1334186    0.0677948
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0061850   -0.0930953    0.1054653
3-6 months     ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0557256   -0.1601084    0.0486571
3-6 months     ki0047075b-MAL-ED          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Q2                   Q1                 0.0170205   -0.1624141    0.1964550
3-6 months     ki0047075b-MAL-ED          PERU                           Q3                   Q1                 0.0550996   -0.1111944    0.2213936
3-6 months     ki0047075b-MAL-ED          PERU                           Q4                   Q1                 0.0428782   -0.1201871    0.2059435
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0215828   -0.1140159    0.0708502
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0020766   -0.0868826    0.0910357
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                 0.0176251   -0.0770642    0.1123144
3-6 months     ki1000109-EE               PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Q2                   Q1                 0.0550687   -0.0450924    0.1552298
3-6 months     ki1000109-EE               PAKISTAN                       Q3                   Q1                -0.0092759   -0.0977830    0.0792312
3-6 months     ki1000109-EE               PAKISTAN                       Q4                   Q1                -0.0851386   -0.1628457   -0.0074315
3-6 months     ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Q2                   Q1                -0.0749657   -0.3904532    0.2405218
3-6 months     ki1000109-ResPak           PAKISTAN                       Q3                   Q1                -0.1040709   -0.3967981    0.1886562
3-6 months     ki1000109-ResPak           PAKISTAN                       Q4                   Q1                -0.1696522   -0.4302481    0.0909437
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0328674   -0.0968324    0.0310976
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0690547   -0.1303531   -0.0077563
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0587957   -0.1233563    0.0057648
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.1261366    0.0764847    0.1757886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.1546902    0.1056894    0.2036911
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.1518133    0.1019817    0.2016450
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                -0.0444031   -0.0858803   -0.0029259
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.1176895   -0.1566247   -0.0787542
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0933106   -0.1311552   -0.0554659
3-6 months     ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         Q2                   Q1                -0.0655477   -0.3956866    0.2645912
3-6 months     ki1114097-CMIN             BRAZIL                         Q3                   Q1                -0.0714948   -0.4170391    0.2740495
3-6 months     ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.0826183   -0.4053126    0.2400760
3-6 months     ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           Q2                   Q1                 0.0617444   -0.0106444    0.1341331
3-6 months     ki1114097-CMIN             PERU                           Q3                   Q1                 0.0534623   -0.0250483    0.1319728
3-6 months     ki1114097-CMIN             PERU                           Q4                   Q1                -0.0066444   -0.0770418    0.0637529
3-6 months     ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Q2                   Q1                -0.0114913   -0.0825337    0.0595511
3-6 months     ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0004338   -0.0708650    0.0699974
3-6 months     ki1114097-CONTENT          PERU                           Q4                   Q1                 0.0088426   -0.0664961    0.0841814
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0043072   -0.0253765    0.0339909
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0023735   -0.0350305    0.0302834
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                 0.0134744   -0.0247826    0.0517315
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0002777   -0.0559055    0.0553502
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                 0.0141525   -0.0376750    0.0659799
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                 0.0201003   -0.0322654    0.0724659
6-12 months    ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0003675   -0.0381446    0.0374097
6-12 months    ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0007679   -0.0377365    0.0362007
6-12 months    ki0047075b-MAL-ED          INDIA                          Q4                   Q1                 0.0347534   -0.0097025    0.0792094
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                 0.0152103   -0.0206201    0.0510406
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                 0.0031536   -0.0299547    0.0362619
6-12 months    ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                 0.0059508   -0.0303114    0.0422129
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                 0.0533835    0.0126531    0.0941138
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                 0.0347550   -0.0014812    0.0709912
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0036513   -0.0459120    0.0386094
6-12 months    ki1000109-ResPak           PAKISTAN                       Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       Q2                   Q1                 0.0811057   -0.0621552    0.2243665
6-12 months    ki1000109-ResPak           PAKISTAN                       Q3                   Q1                 0.0954099   -0.0633943    0.2542141
6-12 months    ki1000109-ResPak           PAKISTAN                       Q4                   Q1                 0.0914348   -0.0343289    0.2171985
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2                   Q1                -0.8374648   -0.9229898   -0.7519397
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3                   Q1                -0.8182271   -0.9082014   -0.7282529
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4                   Q1                -0.7726226   -0.8632374   -0.6820078
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0338188   -0.0702355    0.0025979
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0409480   -0.0747554   -0.0071406
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0675325   -0.1015683   -0.0334967
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                -0.0179157   -0.0355424   -0.0002891
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                -0.0311189   -0.0475378   -0.0147000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                -0.0283339   -0.0470608   -0.0096069
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0048402   -0.0095451    0.0192256
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                 0.0023238   -0.0129867    0.0176343
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                 0.0065492   -0.0085560    0.0216544
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2                   Q1                 0.0478473   -0.0052949    0.1009894
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3                   Q1                -0.0032814   -0.0537513    0.0471886
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4                   Q1                 0.0015145   -0.0446321    0.0476611
6-12 months    ki1114097-CMIN             BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         Q2                   Q1                 0.0407448   -0.0434899    0.1249794
6-12 months    ki1114097-CMIN             BRAZIL                         Q3                   Q1                 0.0263357   -0.0660696    0.1187411
6-12 months    ki1114097-CMIN             BRAZIL                         Q4                   Q1                -0.0557084   -0.1384322    0.0270154
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q2                   Q1                -0.0924676   -0.1703204   -0.0146148
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q3                   Q1                -0.0798217   -0.1580536   -0.0015897
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Q4                   Q1                -0.0867087   -0.1613249   -0.0120925
6-12 months    ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           Q2                   Q1                -0.0044509   -0.0525115    0.0436097
6-12 months    ki1114097-CMIN             PERU                           Q3                   Q1                -0.0329442   -0.0797270    0.0138387
6-12 months    ki1114097-CMIN             PERU                           Q4                   Q1                -0.0274149   -0.0725232    0.0176934
6-12 months    ki1114097-CONTENT          PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Q2                   Q1                 0.0030934   -0.0512637    0.0574504
6-12 months    ki1114097-CONTENT          PERU                           Q3                   Q1                -0.0169194   -0.0686336    0.0347948
6-12 months    ki1114097-CONTENT          PERU                           Q4                   Q1                -0.0100829   -0.0621103    0.0419445
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                -0.0042006   -0.0139633    0.0055620
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0079496   -0.0185647    0.0026655
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0052432   -0.0196758    0.0091893
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2                   Q1                -0.0128840   -0.0415530    0.0157850
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3                   Q1                -0.0170728   -0.0446362    0.0104906
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4                   Q1                -0.0057405   -0.0340118    0.0225308
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q2                   Q1                -0.0254281   -0.0505327   -0.0003234
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Q3                   Q1                -0.0747184   -0.0922109   -0.0572259
12-24 months   ki0047075b-MAL-ED          INDIA                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Q2                   Q1                -0.0299731   -0.0437244   -0.0162219
12-24 months   ki0047075b-MAL-ED          INDIA                          Q3                   Q1                -0.0180984   -0.0313191   -0.0048778
12-24 months   ki0047075b-MAL-ED          INDIA                          Q4                   Q1                -0.0104416   -0.0250724    0.0041891
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q2                   Q1                -0.0123556   -0.0316960    0.0069847
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q3                   Q1                -0.0053649   -0.0241368    0.0134071
12-24 months   ki0047075b-MAL-ED          NEPAL                          Q4                   Q1                -0.0093354   -0.0284366    0.0097658
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2                   Q1                -0.0065597   -0.0321027    0.0189833
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3                   Q1                -0.0045546   -0.0300273    0.0209182
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4                   Q1                -0.0014540   -0.0277916    0.0248836
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2                   Q1                -0.0193408   -0.0351227   -0.0035589
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3                   Q1                -0.0253170   -0.0407678   -0.0098662
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4                   Q1                -0.0175388   -0.0329676   -0.0021101
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2                   Q1                 0.0188138    0.0104355    0.0271921
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3                   Q1                 0.0258185    0.0181571    0.0334800
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4                   Q1                 0.0153854    0.0077607    0.0230100
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2                   Q1                 0.0101864    0.0015053    0.0188676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3                   Q1                -0.0149791   -0.0236459   -0.0063123
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4                   Q1                -0.0161868   -0.0251120   -0.0072617
12-24 months   ki1114097-CMIN             PERU                           Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           Q2                   Q1                -0.0010045   -0.0280808    0.0260718
12-24 months   ki1114097-CMIN             PERU                           Q3                   Q1                 0.0083608   -0.0164046    0.0331261
12-24 months   ki1114097-CMIN             PERU                           Q4                   Q1                 0.0101395   -0.0152067    0.0354858
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1                   Q1                 0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2                   Q1                 0.0025116   -0.0015376    0.0065609
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3                   Q1                -0.0016255   -0.0060283    0.0027773
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4                   Q1                -0.0014854   -0.0083602    0.0053893
