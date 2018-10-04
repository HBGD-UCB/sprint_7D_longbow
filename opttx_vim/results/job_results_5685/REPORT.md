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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       50    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      304    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0       16    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1      128    498
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      286   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      456   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0      106   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1      222   1070
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0      140    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      214    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       58    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       86    498
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      596   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1      146   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      274   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       54   1070
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       46    194
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1       90    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0       16    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       42    194
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      270    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      310    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0      104    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1      168    852
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
![](/tmp/2beec748-7df5-40e1-8801-2e83fae576c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2beec748-7df5-40e1-8801-2e83fae576c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4186908   0.2959200   0.5414616
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4069995   0.2875575   0.5264414
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2534929   0.1892775   0.3177084
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3199285   0.1680986   0.4717585
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8597548   0.8017812   0.9177283
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5483061   0.4832703   0.6133420
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.8319946   0.7754862   0.8885029
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4534404   0.3409624   0.5659184
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2641027   0.2132521   0.3149533
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2918752   0.2715985   0.3121520
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4868991   0.4643753   0.5094229
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5307083   0.4707929   0.5906237
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.7096946   0.5494311   0.8699580
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.3096512   0.2730456   0.3462568
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1647500   0.0610219   0.2684781
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2082684   0.1345374   0.2819995
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3719029   0.2909300   0.4528757
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2684084   0.2104125   0.3264043
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5978162   0.5265895   0.6690428
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3354675   0.2290008   0.4419342
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1356899   0.1050890   0.1662909
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1358996   0.1206189   0.1511803
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2236533   0.2048495   0.2424571
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1652361   0.1085388   0.2219335
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.2646318   0.1908144   0.3384491
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0602526   0.0414008   0.0791045
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3217864   0.1803428   0.4632300
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2766359   0.1537378   0.3995340
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2000873   0.1385708   0.2616038
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3206804   0.1110008   0.5303599
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.7807463   0.6928198   0.8686727
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3489598   0.2744603   0.4234594
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.6147368   0.4602996   0.7691741
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1804655   0.0743104   0.2866206
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3025036   0.2308715   0.3741358
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2182676   0.1964343   0.2401009
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3587064   0.3331110   0.3843018
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5603958   0.4975522   0.6232394
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              NA                0.6164789   0.3781557   0.8548022
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.2859883   0.2477062   0.3242703


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5242810   0.4576590   0.5909029
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5169223   0.4490109   0.5848337
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2595724   0.2004296   0.3187153
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.4919789   0.4333224   0.5506354
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9074125   0.8742374   0.9405875
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5921241   0.5412792   0.6429689
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             NA                0.8682347   0.8260353   0.9104342
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5197463   0.4506780   0.5888147
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3783048   0.3405830   0.4160267
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2991375   0.2801550   0.3181199
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5043897   0.4836522   0.5251272
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6337026   0.5928376   0.6745676
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     observed             NA                0.7569764   0.6918325   0.8221204
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.3233951   0.2876177   0.3591726
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2122855   0.1577802   0.2667908
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2079729   0.1525692   0.2633765
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3835656   0.3276975   0.4394338
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3464217   0.2972670   0.3955765
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6003117   0.5394020   0.6612213
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4352734   0.3667257   0.5038210
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1594321   0.1309231   0.1879410
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1369870   0.1227324   0.1512416
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2413615   0.2236155   0.2591075
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1868195   0.1537545   0.2198845
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     observed             NA                0.2864069   0.2178909   0.3549228
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0746022   0.0545276   0.0946768
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4225241   0.3455306   0.4995175
6-24 months                  ki0047075b-MAL-ED          INDIA                          observed             NA                0.4114211   0.3336592   0.4891829
6-24 months                  ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2110626   0.1537217   0.2684036
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3648589   0.2898009   0.4399170
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8511210   0.7990764   0.9031656
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3776014   0.3156351   0.4395678
6-24 months                  ki1000109-EE               PAKISTAN                       observed             NA                0.6801202   0.5868391   0.7734012
6-24 months                  ki1000109-ResPak           PAKISTAN                       observed             NA                0.1798193   0.1023317   0.2573070
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2999508   0.2578989   0.3420026
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2260198   0.2055339   0.2465057
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3752695   0.3512888   0.3992503
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5613942   0.5142136   0.6085749
6-24 months                  ki1114097-CMIN             BANGLADESH                     observed             NA                0.7125084   0.6278603   0.7971565
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.2895789   0.2522254   0.3269324


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7986000   0.6183323   1.0314227
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7873514   0.6150700   1.0078889
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9765787   0.8781450   1.0860462
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.6502891   0.4133393   1.0230722
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9474796   0.9075141   0.9892051
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.9259988   0.8618308   0.9949444
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              observed          0.9582600   0.9240765   0.9937080
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              observed          0.8724263   0.7160152   1.0630049
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6981213   0.5993899   0.8131158
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9757228   0.9494629   1.0027091
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9653233   0.9475315   0.9834491
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8374722   0.7731059   0.9071975
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     optimal              observed          0.9375385   0.7661476   1.1472704
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              observed          0.9575012   0.9243744   0.9918152
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7760775   0.4394997   1.3704133
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0014211   0.7560866   1.3263616
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9695938   0.8271398   1.1365818
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.7748025   0.6669512   0.9000942
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.9958430   0.9339885   1.0617940
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              observed          0.7707053   0.5943214   0.9994369
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8510831   0.7455046   0.9716137
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9920622   0.9499187   1.0360754
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.9266320   0.8918144   0.9628088
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.8844695   0.6608404   1.1837750
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     optimal              observed          0.9239715   0.8116239   1.0518706
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              observed          0.8076521   0.6944895   0.9392539
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.7615812   0.5237615   1.1073857
6-24 months                  ki0047075b-MAL-ED          INDIA                          optimal              observed          0.6723912   0.4590761   0.9848259
6-24 months                  ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9479996   0.8301697   1.0825538
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8789160   0.4745109   1.6279781
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9173153   0.8525641   0.9869843
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.9241486   0.8118482   1.0519832
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              observed          0.9038650   0.7530614   1.0848677
6-24 months                  ki1000109-ResPak           PAKISTAN                       optimal              observed          1.0035935   0.6524839   1.5436396
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          1.0085111   0.8434391   1.2058898
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9657015   0.9268752   1.0061541
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.9558633   0.9281127   0.9844436
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9982214   0.9280734   1.0736716
6-24 months                  ki1114097-CMIN             BANGLADESH                     optimal              observed          0.8652234   0.6063398   1.2346402
6-24 months                  ki1114097-CMIN             PERU                           optimal              observed          0.9876006   0.9552723   1.0210230
