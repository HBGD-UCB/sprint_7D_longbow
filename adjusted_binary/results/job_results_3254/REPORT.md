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
![](/tmp/7f4fd8c8-332d-4e33-8739-d13fb0b6c27d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7f4fd8c8-332d-4e33-8739-d13fb0b6c27d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7f4fd8c8-332d-4e33-8739-d13fb0b6c27d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7f4fd8c8-332d-4e33-8739-d13fb0b6c27d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5551979   0.4812009   0.6291949
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4846264   0.3668159   0.6024368
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5693563   0.4883693   0.6503434
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4001741   0.2807624   0.5195858
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2546303   0.1904519   0.3188087
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2989772   0.1573437   0.4406107
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5054088   0.4435064   0.5673113
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2832651   0.1270814   0.4394488
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8613139   0.8033406   0.9192871
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9487179   0.9140459   0.9833900
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6660326   0.5879920   0.7440732
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5455015   0.4799971   0.6110060
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8554938   0.8042146   0.9067729
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.9018364   0.8370384   0.9666343
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5573044   0.4709110   0.6436979
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4564171   0.3439569   0.5688773
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3580727   0.3154932   0.4006522
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4800815   0.4089457   0.5512174
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2915767   0.2712983   0.3118550
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3553538   0.3076180   0.4030896
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4872037   0.4646971   0.5097104
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.5904544   0.5446300   0.6362787
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6146022   0.5650506   0.6641539
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6766757   0.6051537   0.7481977
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.3096320   0.2730263   0.3462378
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.5153231   0.3695732   0.6610729
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1632653   0.0595378   0.2669928
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2208688   0.1528603   0.2888772
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1781324   0.0844007   0.2718641
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3718306   0.2908547   0.4528065
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3939381   0.3171666   0.4707096
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4198325   0.3395851   0.5000800
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3095995   0.2492953   0.3699037
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5911085   0.5200643   0.6621528
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5639228   0.4578867   0.6699589
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4956298   0.4084737   0.5827860
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3375884   0.2312504   0.4439263
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1440875   0.1127116   0.1754633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2057885   0.1446024   0.2669747
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1361501   0.1208574   0.1514428
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1477183   0.1118813   0.1835554
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2251809   0.2063420   0.2440199
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3060544   0.2632276   0.3488812
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1975797   0.1572101   0.2379494
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1630875   0.1067730   0.2194020
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2635934   0.1896503   0.3375365
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3732306   0.2123621   0.5340991
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0603323   0.0414805   0.0791842
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2675568   0.1379624   0.3971513
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4619393   0.3742522   0.5496264
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4248713   0.2829458   0.5667968
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4807872   0.3844591   0.5771154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2744808   0.1515772   0.3973845
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2012195   0.1397030   0.2627360
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2580645   0.1036348   0.4124942
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3714286   0.2911372   0.4517200
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3157895   0.1061201   0.5254589
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7790698   0.6911437   0.8669958
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9157895   0.8597918   0.9717872
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.4481976   0.3447476   0.5516475
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3490238   0.2744418   0.4236057
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6599003   0.5482866   0.7715140
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7286526   0.5711236   0.8861816
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2840366   0.2370129   0.3310602
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3238552   0.2416348   0.4060757
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2180943   0.1962344   0.2399543
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2682369   0.2161751   0.3202986
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3642036   0.3386054   0.3898017
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4378424   0.3803499   0.4953349
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5344850   0.4770176   0.5919525
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6176266   0.5359074   0.6993458
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.2855384   0.2472732   0.3238037
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3524953   0.1843592   0.5206314


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4892857   0.4306292   0.5479422
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9078498   0.8746748   0.9410249
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.3237082   0.2879308   0.3594857
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8508287   0.7987841   0.9028733
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1789474   0.1014597   0.2564350
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months                  ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.2892416   0.2518881   0.3265951


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8728894   0.6624401   1.1501960
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7028535   0.5050984   0.9780333
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1741616   0.6866580   2.0077762
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.5604674   0.3186391   0.9858291
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1014776   1.0202655   1.1891541
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8190313   0.6930485   0.9679153
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0541706   0.9608295   1.1565794
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8189726   0.6126535   1.0947723
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3407376   1.1092298   1.6205635
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2187318   1.0478230   1.4175173
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2119249   1.1078529   1.3257735
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1009978   0.9639924   1.2574749
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9259601   0.7253921   1.1819842
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.6643079   1.2251444   2.2608933
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7218045   0.3604397   1.4454618
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.8065079   0.4383527   1.4838622
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0594559   0.7915515   1.4180338
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.7374356   0.5616971   0.9681577
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9540089   0.7637570   1.1916525
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 0.6811300   0.4750565   0.9765957
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4282196   0.9903128   2.0597645
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0849667   0.8305770   1.4172711
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.3591488   1.1553801   1.5988551
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8254260   0.5532635   1.2314713
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.4159331   0.8502263   2.3580385
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 4.4347188   2.4924872   7.8904039
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9197558   0.6256790   1.3520522
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.5708988   0.3495502   0.9324139
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.2825024   0.6549659   2.5112951
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8502024   0.4229346   1.7091157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1754910   1.0338870   1.3364894
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.7787275   0.5689820   1.0657922
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.1041858   0.8417728   1.4484030
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1401884   0.8421227   1.5437532
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2299121   0.9885784   1.5301608
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2021914   1.0366632   1.3941501
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1555546   0.9744475   1.3703217
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.2344933   0.7522439   2.0259036


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0344606   -0.0705313    0.0016102
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0526099   -0.0986991   -0.0065207
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0048036   -0.0221681    0.0317754
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0161231   -0.0360281    0.0037819
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0465360    0.0102244    0.0828475
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0743659   -0.1372250   -0.0115068
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0119761   -0.0134866    0.0374388
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0375025   -0.0904571    0.0154522
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0173216   -0.0046615    0.0393047
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073048   -0.0006812    0.0152908
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0172725    0.0082542    0.0262908
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0190426   -0.0077505    0.0458358
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0140762    0.0031603    0.0249920
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0142089   -0.0418843    0.0134665
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0103425   -0.0466411    0.0259562
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0117310   -0.0473680    0.0708301
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0753881   -0.1371109   -0.0136653
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0113011   -0.0270832    0.0496854
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0599862   -0.1123074   -0.0076651
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0152185   -0.0023173    0.0327543
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0007626   -0.0051410    0.0066663
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0160903    0.0075558    0.0246248
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0106639   -0.0319041    0.0105764
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0221209   -0.0125648    0.0568066
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0141358    0.0043765    0.0238950
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0405556   -0.0833106    0.0021993
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0678840   -0.1215001   -0.0142679
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0090369   -0.0175510    0.0356248
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0066487   -0.0336250    0.0203276
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0717590    0.0161437    0.1273742
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0710789   -0.1539732    0.0118154
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0205120   -0.0375245    0.0785486
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0157446   -0.0081631    0.0396523
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078732   -0.0011271    0.0168736
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0110357    0.0009593    0.0211122
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0265478   -0.0055612    0.0586569
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0037032   -0.0058138    0.0132202


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0661765   -0.1387864    0.0018038
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1018099   -0.1961990   -0.0148689
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0185158   -0.0910924    0.1171131
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0329523   -0.0746535    0.0071307
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0512595    0.0096051    0.0911621
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.1256889   -0.2385285   -0.0231298
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0138058   -0.0160606    0.0427942
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0721476   -0.1796733    0.0255772
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0461425   -0.0141706    0.1028687
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244404   -0.0026271    0.0507770
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0342385    0.0161576    0.0519872
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0300525   -0.0132756    0.0715280
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0434841    0.0091840    0.0765968
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0670290   -0.2053590    0.0554259
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0491267   -0.2361916    0.1096309
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0305845   -0.1364459    0.1730654
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.2188687   -0.4137776   -0.0508307
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0187598   -0.0470436    0.0804278
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1376957   -0.2659911   -0.0224018
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0955302   -0.0203966    0.1982866
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0055702   -0.0384873    0.0477586
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0666898    0.0308376    0.1012157
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0570517   -0.1768366    0.0505409
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0774231   -0.0520298    0.1909467
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1898233    0.0580637    0.3031522
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0962440   -0.2044048    0.0022036
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1644066   -0.3043970   -0.0394402
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0429804   -0.0919047    0.1612028
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0182266   -0.0949479    0.0531189
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0843401    0.0145466    0.1491905
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.1884789   -0.4325769    0.0140270
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0301465   -0.0592835    0.1120264
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0525203   -0.0305399    0.1288860
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0348422   -0.0057481    0.0737944
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0294098    0.0021993    0.0558783
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0473196   -0.0118765    0.1030526
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0128031   -0.0206456    0.0451556
