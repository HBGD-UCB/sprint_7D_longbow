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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* month
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        pers_wast    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       98    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1      112    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0        6    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1        1    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      178    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       29    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0        1    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       89    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1      101    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       12    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1        7    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      153    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       54    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0        4    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1        1    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0      115    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      151    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        0    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        0    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      136    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      137    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        7    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       41    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      178    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       24    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      228    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        3    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       38    293
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0      114    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1      181    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0       33    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1       32    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       33    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      195    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        0    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       21    249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       0       84    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       1       97    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       0       13    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       1        8    202
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      380    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      229    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0       16    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1        9    634
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1524   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      648   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       43   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       20   2235
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0     1083   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1     1088   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0       24   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1       39   2234
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      137    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       82    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        3    223
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      178    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      293    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       18    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1       46    535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       0       38    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       1      123    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       0        3    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       1        4    168
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       0      439    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       1      205    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       0        6    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       1        8    658
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       0      152    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       1       45    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       0        0    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       1        0    197
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      164    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       46    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0        7    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        0    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      187    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       20    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0        1    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      151    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       39    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       14    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1        5    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      193    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       14    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0        5    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        0    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      174    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       92    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        0    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        0    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      194    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       79    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        7    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      154    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       65    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      152    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      100    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       28    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       12    292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0      186    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1      109    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0       50    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1       15    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       92    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      136    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0        7    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       14    249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       0       99    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       1       82    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       0       15    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       1        6    202
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      514    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       95    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0       19    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1        6    634
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1875   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      297   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       54   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        9   2235
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0     1652   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      519   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0       43   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1       20   2234
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      200    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       19    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        2    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        2    223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      379    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       92    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0       56    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1        8    535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       0      116    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       1       45    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       0        4    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       1        3    168
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       0      600    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       1       44    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       0        9    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       1        5    658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       0      167    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       1       30    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       0        0    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       1        0    197
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       87    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       66    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1        1    159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      158    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        9    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0        1    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        0    168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       80    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       62    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       11    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1        2    155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      151    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       40    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0        3    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        1    195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       90    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       59    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        0    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        0    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       99    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       58    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        2    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       32    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      113    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       24    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      128    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        3    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       26    181
6-24 months                  ki1000108-IRC              INDIA                          0                       0      114    236
6-24 months                  ki1000108-IRC              INDIA                          0                       1       72    236
6-24 months                  ki1000108-IRC              INDIA                          1                       0       33    236
6-24 months                  ki1000108-IRC              INDIA                          1                       1       17    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       31     97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       59     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        0     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1        7     97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       0       67     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       1       15     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       0       11     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       1        2     95
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      317    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      134    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0        3    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1        3    457
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1211   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      351   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       29   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       11   1602
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      964   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      569   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0       15   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1       19   1567
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       0      110    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       1       63    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    175
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      170    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      201    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       17    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       38    426
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       0       31    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       1       78    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       0        1    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       1        1    111
6-24 months                  ki1114097-CMIN             PERU                           0                       0      398    567
6-24 months                  ki1114097-CMIN             PERU                           0                       1      161    567
6-24 months                  ki1114097-CMIN             PERU                           1                       0        5    567
6-24 months                  ki1114097-CMIN             PERU                           1                       1        3    567
6-24 months                  ki1114097-CONTENT          PERU                           0                       0      152    167
6-24 months                  ki1114097-CONTENT          PERU                           0                       1       15    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       0        0    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       1        0    167


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a756ad24-63e9-4aa9-963d-23315a3515af/a13879d5-5c6e-488e-921b-47d6800c0a0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a756ad24-63e9-4aa9-963d-23315a3515af/a13879d5-5c6e-488e-921b-47d6800c0a0b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3950115   0.1405425   0.6494805
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.4909057   0.3668520   0.6149595
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3803466   0.1517467   0.6089466
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.5131231   0.3712529   0.6549933
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3132517   0.2482182   0.3782852
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5536617   0.5327485   0.5745748
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6391215   0.5760119   0.7022312
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.3183204   0.2821763   0.3544645
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2051636   0.1475470   0.2627802
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3062216   0.1518652   0.4605779
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2439203   0.1417043   0.3461364
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.6505439   0.5884513   0.7126364
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3014465   0.0887336   0.5141593
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1558644   0.1270298   0.1846990
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1892754   0.1225882   0.2559626
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2539963   0.1964361   0.3115565
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1262575   0.0426919   0.2098230
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0683098   0.0487339   0.0878856
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.4531515   0.3324827   0.5738204
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2733704   0.2107475   0.3359932
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3562248   0.3112529   0.4011967
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5342467   0.4701483   0.5983451


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.3237082   0.2879308   0.3594857
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3081807   0.7041480   2.4303652
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.2052551   0.9583916   1.5157061
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.3666534   0.7700016   2.4256332
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.7315872   0.5587527   0.9578833
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9541255   0.7817716   1.1644776
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9111635   0.8941381   0.9285130
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9914309   0.9179684   1.0707725
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.0169258   0.9970716   1.0371754
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0261386   0.9348310   1.1263646
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.2525625   0.7794465   2.0128551
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.4121187   0.9576544   2.0822536
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           0.9260093   0.8802118   0.9741895
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.4451773   0.7346964   2.8427215
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0220809   0.9784388   1.0676697
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7233520   0.5145229   1.0169386
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           0.9499008   0.7645096   1.1802487
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.4804343   0.7860003   2.7884032
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             optimal           1.0901527   0.9973593   1.1915796
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.8322131   0.6575330   1.0532986
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8265985   0.6632038   1.0302490
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0533779   0.9443454   1.1749991
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0501382   0.9711447   1.1355571


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1217349   -0.1220758    0.3655457
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.1007609   -0.0112143    0.2127361
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1394554   -0.0777922    0.3567030
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1377288   -0.2751028   -0.0003548
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0143703   -0.0767643    0.0480238
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0491854   -0.0589985   -0.0393723
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0054767   -0.0546696    0.0437163
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0053878   -0.0008773    0.0116530
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0053627   -0.0137825    0.0245078
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0773401   -0.0677169    0.2223970
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.1005241    0.0052824    0.1957659
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0481342   -0.0797103   -0.0165581
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1341971   -0.0692980    0.3376923
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0034416   -0.0033762    0.0102595
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0523627   -0.1168595    0.0121342
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0127250   -0.0678463    0.0423963
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0606584   -0.0197150    0.1410319
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0061583   -0.0000897    0.0124063
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0760329   -0.1816464    0.0295806
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0474028   -0.1073046    0.0124989
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0190145   -0.0199349    0.0579639
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0267862   -0.0148465    0.0684188


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2355796   -0.4201560    0.5885392
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.1703002   -0.0434149    0.3402415
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2682856   -0.2986986    0.5877365
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.3668910   -0.7897006   -0.0439685
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0480802   -0.2791460    0.1412458
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0974979   -0.1183954   -0.0769909
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0086432   -0.0893622    0.0660948
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0166441   -0.0029370    0.0358430
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0254728   -0.0697121    0.1121880
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2016366   -0.2829617    0.5031932
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.2918442   -0.0442180    0.5197511
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0799028   -0.1360902   -0.0264943
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.3080434   -0.3611064    0.6482244
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0216039   -0.0220364    0.0633807
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3824528   -0.9435482    0.0166564
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0527415   -0.3080280    0.1527210
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.3245226   -0.2722641    0.6413718
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0826973   -0.0026477    0.1607778
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.2016153   -0.5208362    0.0506016
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2097772   -0.5078322    0.0293608
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0506731   -0.0589346    0.1489355
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0477444   -0.0297127    0.1193750
