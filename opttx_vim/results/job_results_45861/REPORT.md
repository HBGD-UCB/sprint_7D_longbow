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

**Intervention Variable:** anywast06

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

agecat                       studyid                    country                        anywast06    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       0       76    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                       1       92    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       0       28    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       0      167    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                       1       27    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       0       12    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                       1        2    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       0       62    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                       1       82    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       0       39    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                       1       26    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       0      132    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                       1       45    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       0       25    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                       1       10    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       0      112    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                       1      146    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       0        3    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                       1        5    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      124    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      127    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       19    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       10    280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       40    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      170    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        8    219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      118    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1      148    293
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       0       46    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                       1       92    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       0      101    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                       1      121    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       25    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      152    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        8    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       64    249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       0       56    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                       1       71    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       0       41    202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                       1       34    202
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       0      307    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                       1      168    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       0       89    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                       1       70    634
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1358   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      558   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      209   2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      110   2235
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       0      962   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                       1      905   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       0      145   2234
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                       1      222   2234
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      137    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       82    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    223
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        3    223
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      143    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      228    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       53    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      111    535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       0       32    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                       1      105    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       0        9    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                       1       22    168
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       0      424    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                       1      190    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       0       21    658
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                       1       23    658
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       0      148    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                       1       45    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       0        4    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                       1        0    197
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       0      130    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                       1       38    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       0       41    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                       1        8    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       0      174    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                       1       20    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       0       14    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       0      112    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                       1       32    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       0       53    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                       1       12    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       0      165    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                       1       12    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       0       33    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                       1        2    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       0      168    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                       1       90    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       0        6    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                       1        2    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      176    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       75    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       25    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        4    280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      149    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       61    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        4    219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       86    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       51    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       94    292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       61    292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       0       82    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                       1       56    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       0      154    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                       1       68    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0       70    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      107    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       29    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       43    249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       0       64    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                       1       63    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       0       50    202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                       1       25    202
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       0      407    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                       1       68    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       0      126    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                       1       33    634
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1656   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      260   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      273   2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       46   2235
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       0     1448   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                       1      419   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       0      247   2234
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                       1      120   2234
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      200    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       19    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        2    223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        2    223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      298    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1       73    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      137    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       27    535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       0      101    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                       1       36    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       0       19    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                       1       12    168
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       0      577    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                       1       37    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       0       32    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                       1       12    658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       0      163    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                       1       30    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       0        4    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                       1        0    197
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       0       67    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                       1       54    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       0       25    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                       1       13    159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       0      147    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                       1        7    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       0       12    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                       1        2    168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       0       54    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                       1       50    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       0       37    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                       1       14    155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       0      131    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                       1       33    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       0       23    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                       1        8    195
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       0       87    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                       1       56    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       0        3    149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                       1        3    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       88    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       52    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       13    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6    159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       31    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      109    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        4    145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       19    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       67    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        8    181
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       87    181
6-24 months                  ki1000108-IRC              INDIA                          0                       0       46    236
6-24 months                  ki1000108-IRC              INDIA                          0                       1       36    236
6-24 months                  ki1000108-IRC              INDIA                          1                       0      101    236
6-24 months                  ki1000108-IRC              INDIA                          1                       1       53    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       23     97
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       45     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        8     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       21     97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       0       42     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                       1        8     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       0       36     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                       1        9     95
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       0      250    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                       1      100    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       0       70    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                       1       37    457
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1067   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      298   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      173   1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       64   1602
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       0      851   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         0                       1      486   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       0      128   1567
6-24 months                  ki1101329-Keneba           GAMBIA                         1                       1      102   1567
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       0      110    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0                       1       63    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    175
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    175
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      135    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      155    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       52    426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       84    426
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       0       26    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                       1       69    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       0        6    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                       1       10    111
6-24 months                  ki1114097-CMIN             PERU                           0                       0      383    567
6-24 months                  ki1114097-CMIN             PERU                           0                       1      153    567
6-24 months                  ki1114097-CMIN             PERU                           1                       0       20    567
6-24 months                  ki1114097-CMIN             PERU                           1                       1       11    567
6-24 months                  ki1114097-CONTENT          PERU                           0                       0      148    167
6-24 months                  ki1114097-CONTENT          PERU                           0                       1       15    167
6-24 months                  ki1114097-CONTENT          PERU                           1                       0        4    167
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ef63639e-9401-4488-b0ed-ff43a0d54437/177cb6e9-3bf8-492a-8a3c-c1db2ae73269/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef63639e-9401-4488-b0ed-ff43a0d54437/177cb6e9-3bf8-492a-8a3c-c1db2ae73269/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4412995   0.3087077   0.5738912
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4043565   0.2821446   0.5265684
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2848544   0.1891624   0.3805463
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3325452   0.1566770   0.5084134
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8635232   0.8055278   0.9215185
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5369343   0.4704601   0.6034085
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8579022   0.8061296   0.9096748
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4548487   0.3393848   0.5703126
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3552724   0.3121024   0.3984424
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2913996   0.2710448   0.3117543
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4872290   0.4645879   0.5098700
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6162987   0.5649963   0.6676011
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.7675396   0.6161346   0.9189446
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.3096974   0.2730803   0.3463145
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1687540   0.0578789   0.2796292
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2330328   0.1318524   0.3342131
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4569116   0.3761890   0.5376343
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3014257   0.2389976   0.3638539
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.6775141   0.5948886   0.7601395
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3370388   0.2291371   0.4449406
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1431674   0.1116607   0.1746742
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1320731   0.1061805   0.1579656
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2254981   0.2065092   0.2444869
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1504012   0.0999726   0.2008297
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.3082414   0.2154450   0.4010379
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0603584   0.0414903   0.0792265
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3964993   0.2419128   0.5510859
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2688629   0.1436628   0.3940631
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2014139   0.1398116   0.2630163
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3713825   0.1544670   0.5882979
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7768197   0.6876066   0.8660328
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3539699   0.2778693   0.4300705
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6566620   0.5418221   0.7715019
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                0.2115529   0.0900997   0.3330062
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2858027   0.2382893   0.3333161
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2184951   0.1965660   0.2404243
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3646915   0.3389234   0.3904595
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5345440   0.4769024   0.5921857
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                0.7339759   0.5289012   0.9390507
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.2854081   0.2471307   0.3236855


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9078498   0.8746748   0.9410249
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.3237082   0.2879308   0.3594857
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3647799   0.2897219   0.4398379
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8508287   0.7987841   0.9028733
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1000109-EE               PAKISTAN                       observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000109-ResPak           PAKISTAN                       observed             NA                0.1789474   0.1014597   0.2564350
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             BANGLADESH                     observed             NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.2892416   0.2518881   0.3265951


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1800090   0.9073491   1.5346037
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2779476   0.9896534   1.6502242
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9107600   0.6941035   1.1950435
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4713359   0.8874243   2.4394524
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0513323   1.0072792   1.0973121
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.1019348   1.0210014   1.1892837
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0111524   0.9807705   1.0424755
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.1428019   0.9329024   1.3999280
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0566380   0.9918349   1.1256752
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0256756   0.9977844   1.0543466
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0353987   1.0160606   1.0551049
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0281457   0.9778413   1.0810380
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9849034   0.8241409   1.1770254
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.0452403   1.0090899   1.0826858
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2561572   0.6931446   2.2764815
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9034194   0.6425135   1.2702716
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8394657   0.7373222   0.9557595
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.1427174   0.9966909   1.3101385
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           0.8891471   0.8106444   0.9752520
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.2925619   0.9939915   1.6808154
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1127252   0.9839337   1.2583748
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0366440   0.8763470   1.2262616
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0699482   1.0298361   1.1116226
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2427823   0.9305391   1.6597989
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9269172   0.7603925   1.1299105
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             optimal           1.2337658   1.0611898   1.4344068
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0627600   0.7589180   1.4882488
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5357387   1.0269039   2.2967031
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.0439019   0.9146224   1.1914548
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9822216   0.5700586   1.6923862
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0952718   1.0158618   1.1808894
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           1.0653975   0.9241095   1.2282871
6-24 months                  ki1000109-EE               PAKISTAN                       observed             optimal           1.0361684   0.9439378   1.1374106
6-24 months                  ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8458751   0.5911571   1.2103461
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0489096   0.9640224   1.1412716
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0341993   0.9924205   1.0777370
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0289227   1.0003948   1.0582641
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0495540   0.9880555   1.1148804
6-24 months                  ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9696663   0.7455152   1.2612120
6-24 months                  ki1114097-CMIN             PERU                           observed             optimal           1.0134316   0.9799700   1.0480358


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0794379   -0.0362226    0.1950983
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1123899    0.0098781    0.2149017
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0254204   -0.1024151    0.0515743
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1567405   -0.0109440    0.3244250
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0443266    0.0080290    0.0806243
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0547323    0.0142676    0.0951970
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0095677   -0.0165548    0.0356902
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0649533   -0.0268585    0.1567650
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0201219   -0.0023492    0.0425931
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0074819   -0.0005544    0.0155181
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0172473    0.0080861    0.0264084
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0173462   -0.0135467    0.0482390
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0115872   -0.1483592    0.1251848
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0140108    0.0031046    0.0249170
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0432276   -0.0572867    0.1437418
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0225064   -0.1022470    0.0572341
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0733500   -0.1316523   -0.0150477
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0430187    0.0019531    0.0840843
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0751044   -0.1365972   -0.0136116
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0986047    0.0103635    0.1868459
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0161386   -0.0016249    0.0339021
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0048397   -0.0173609    0.0270402
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0157732    0.0071244    0.0244220
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0365147   -0.0076411    0.0806706
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0225272   -0.0834606    0.0384063
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0141097    0.0043534    0.0238660
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0248843   -0.1085133    0.1582819
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1440403    0.0359041    0.2521765
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0088425   -0.0178390    0.0355240
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0066026   -0.2086850    0.1954798
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0740090    0.0172509    0.1307671
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0231487   -0.0274376    0.0737351
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0237504   -0.0371578    0.0846586
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0326056   -0.1103178    0.0451067
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0139785   -0.0101512    0.0381082
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0074724   -0.0015490    0.0164938
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0105479    0.0002935    0.0208022
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0264888   -0.0056650    0.0586426
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0222642   -0.2150078    0.1704793
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                 0.0038335   -0.0057517    0.0134187


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1525488   -0.1021117    0.3483659
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2174953   -0.0104548    0.3940217
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0979840   -0.4407073    0.1632103
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3203456   -0.1268566    0.5900719
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0488260    0.0072265    0.0886823
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0925053    0.0205695    0.1591578
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0110294   -0.0196066    0.0407449
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1249577   -0.0719234    0.2856776
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0536021   -0.0082324    0.1116443
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0250329   -0.0022205    0.0515453
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0341885    0.0158067    0.0522270
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0273752   -0.0226608    0.0749631
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0153280   -0.2133847    0.1504006
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0432822    0.0090081    0.0763710
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2039213   -0.4427004    0.5607256
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1069056   -0.5563875    0.2127668
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1912339   -0.3562593   -0.0462884
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.1248930   -0.0033201    0.2367219
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.1246733   -0.2335866   -0.0253760
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2263427   -0.0060448    0.4050507
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1013055   -0.0163286    0.2053242
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0353487   -0.1411005    0.1845134
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0653753    0.0289717    0.1004141
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1953538   -0.0746459    0.3975174
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0788450   -0.3151103    0.1149741
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.1894734    0.0576615    0.3028477
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0590538   -0.3176654    0.3280694
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3488476    0.0261990    0.5645933
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0420556   -0.0933474    0.1606899
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0181002   -0.7542056    0.4091183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0869847    0.0156141    0.1531806
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0613832   -0.0821228    0.1858581
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0349059   -0.0593918    0.1208100
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1822076   -0.6915978    0.1737901
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0466290   -0.0373203    0.1237844
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0330684   -0.0076374    0.0721298
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0281097    0.0003946    0.0550563
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0472144   -0.0120889    0.1030428
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0312826   -0.3413543    0.2071119
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                 0.0132536   -0.0204394    0.0458342
