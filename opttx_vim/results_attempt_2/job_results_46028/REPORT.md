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
![](/tmp/ae14e197-6315-450c-84a3-ad1e624b36ac/3d8c3175-2980-4a28-a69e-157b20515778/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae14e197-6315-450c-84a3-ad1e624b36ac/3d8c3175-2980-4a28-a69e-157b20515778/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4820876   0.3427276   0.6214477
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4042438   0.2817134   0.5267742
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2614521   0.1735237   0.3493805
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3269660   0.1514568   0.5024753
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8600165   0.8013644   0.9186685
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5442565   0.4783144   0.6101987
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8580189   0.8063313   0.9097065
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4560639   0.3412510   0.5708769
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3565029   0.3131821   0.3998237
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2914861   0.2711180   0.3118542
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4868794   0.4642332   0.5095255
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6250939   0.5748825   0.6753054
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.7183189   0.5550656   0.8815721
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.3096203   0.2730001   0.3462404
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1578403   0.0531622   0.2625183
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1839495   0.0878233   0.2800757
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3742635   0.2922395   0.4562874
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3069998   0.2446056   0.3693940
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.6776056   0.5895272   0.7656840
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3392292   0.2305216   0.4479369
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1448210   0.1132192   0.1764229
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1244105   0.0990179   0.1498031
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2255218   0.2065531   0.2444905
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1800287   0.1219249   0.2381326
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.2872681   0.1725983   0.4019379
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0602437   0.0413985   0.0790889
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3534363   0.1938704   0.5130023
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2723696   0.1459441   0.3987951
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2443441   0.1469502   0.3417381
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3707208   0.1612357   0.5802058
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7755968   0.6860096   0.8651841
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3655725   0.2874132   0.4437317
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6603479   0.5460026   0.7746932
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                0.2088791   0.0926218   0.3251364
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2864941   0.2389642   0.3340240
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2183382   0.1964157   0.2402608
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3646269   0.3388690   0.3903848
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5340345   0.4763301   0.5917390
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                0.7842569   0.5788529   0.9896609
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.3007550   0.2128260   0.3886840


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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0801715   0.8399114   1.3891590
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2783038   0.9892195   1.6518687
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9922811   0.7579480   1.2990624
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.4964420   0.8955288   2.5005771
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0556191   1.0103643   1.1029009
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.0871099   1.0097988   1.1703400
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0110149   0.9807193   1.0422463
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.1397568   0.9322780   1.3934100
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0529910   0.9882297   1.1219962
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0253712   0.9974275   1.0540978
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0361423   1.0167959   1.0558567
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0136794   0.9684742   1.0609946
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0523911   0.8585872   1.2899412
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.0455008   1.0094185   1.0828728
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3430134   0.7373493   2.4461742
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1444789   0.7343298   1.7837108
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0248439   0.8743098   1.2012963
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.1219697   0.9824087   1.2813567
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           0.8890269   0.8011484   0.9865448
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.2842158   0.9873312   1.6703719
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1000197   0.9739854   1.2423630
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1004919   0.9221748   1.3132894
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0698357   1.0298324   1.1113928
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0382560   0.7943182   1.3571080
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9945911   0.7405761   1.3357325
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             optimal           1.2361139   1.0629710   1.4374594
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1922477   0.7973548   1.7827129
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5159665   1.0156456   2.2627523
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8604929   0.6464199   1.1454599
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9839748   0.5795194   1.6707058
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0969987   1.0166007   1.1837550
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           1.0315839   0.8970649   1.1862745
6-24 months                  ki1000109-EE               PAKISTAN                       observed             optimal           1.0303847   0.9394223   1.1301547
6-24 months                  ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8567030   0.5937189   1.2361741
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0463783   0.9619077   1.1382667
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0349426   0.9930399   1.0786134
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0291048   1.0005674   1.0584561
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0505554   0.9888982   1.1160569
6-24 months                  ki1114097-CMIN             BANGLADESH                     observed             optimal           0.9074982   0.7067556   1.1652584
6-24 months                  ki1114097-CMIN             PERU                           observed             optimal           0.9617184   0.7457684   1.2402004


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0386497   -0.0824340    0.1597333
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1125026    0.0097623    0.2152429
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0020181   -0.0724098    0.0683735
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1623197   -0.0050775    0.3297168
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0478334    0.0108789    0.0847878
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0474101    0.0076500    0.0871703
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0094510   -0.0166048    0.0355067
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0637380   -0.0274456    0.1549216
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0188914   -0.0037219    0.0415048
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0073954   -0.0006608    0.0154515
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0175969    0.0084470    0.0267468
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0085509   -0.0199514    0.0370532
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0376335   -0.1083441    0.1836111
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0140880    0.0032104    0.0249655
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0541413   -0.0408842    0.1491668
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0265768   -0.0551428    0.1082964
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0092982   -0.0501269    0.0687232
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0374447   -0.0032207    0.0781100
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.0751960   -0.1446205   -0.0057715
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0964143    0.0075588    0.1852699
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0144850   -0.0032813    0.0322512
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0125022   -0.0095445    0.0345490
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0157495    0.0071209    0.0243780
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0068872   -0.0413276    0.0551019
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0015538   -0.0863101    0.0832025
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.0142244    0.0044630    0.0239857
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0679473   -0.0740544    0.2099491
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1405336    0.0316632    0.2494040
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0340877   -0.1047571    0.0365816
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0059409   -0.2021862    0.1903044
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0752319    0.0179258    0.1325380
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0115462   -0.0396012    0.0626936
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0200644   -0.0407407    0.0808696
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0299318   -0.1071216    0.0472581
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0132871   -0.0108395    0.0374137
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0076293   -0.0014070    0.0166656
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0106124    0.0003576    0.0208671
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0269983   -0.0051702    0.0591668
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0725452   -0.2676337    0.1225433
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.0115134   -0.0881051    0.0650784


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0742211   -0.1906018    0.2801400
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2177134   -0.0108980    0.3946250
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0077790   -0.3193518    0.2302140
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.3317482   -0.1166587    0.6000923
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0526886    0.0102580    0.0933002
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0801298    0.0097037    0.1455474
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0108949   -0.0196597    0.0405339
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1226198   -0.0726414    0.2823361
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0503242   -0.0119105    0.1087314
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0247435   -0.0025791    0.0513214
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0348816    0.0165185    0.0529018
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0134948   -0.0325520    0.0574881
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0497829   -0.1647041    0.2247709
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.0435205    0.0093307    0.0765305
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2554058   -0.3562093    0.5911984
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1262399   -0.3617859    0.4393710
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0242417   -0.1437594    0.1675659
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.1087103   -0.0179063    0.2195772
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                -0.1248253   -0.2482082   -0.0136387
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2213147   -0.0128314    0.4013309
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0909254   -0.0267094    0.1950822
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0913154   -0.0843931    0.2385532
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0652770    0.0289682    0.1002281
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0368464   -0.2589414    0.2631390
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.0054383   -0.3503002    0.2513471
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                 0.1910131    0.0592405    0.3043282
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1612481   -0.2541469    0.4390572
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3403548    0.0154046    0.5580603
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1621246   -0.5469821    0.1269882
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0162862   -0.7255679    0.4014506
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0884219    0.0163296    0.1552306
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                 0.0306169   -0.1147465    0.1570248
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                 0.0294887   -0.0644840    0.1151654
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1672657   -0.6842987    0.1910525
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0443227   -0.0396008    0.1214713
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0337628   -0.0070089    0.0728838
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0282817    0.0005671    0.0552277
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0481225   -0.0112265    0.1039883
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                -0.1019306   -0.4149162    0.1418213
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                -0.0398054   -0.3408989    0.1936787
