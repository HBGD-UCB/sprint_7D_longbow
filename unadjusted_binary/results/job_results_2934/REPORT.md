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

unadjusted

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
![](/tmp/3821e4c9-61a2-460e-8c8b-edabb3c62c65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3821e4c9-61a2-460e-8c8b-edabb3c62c65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3821e4c9-61a2-460e-8c8b-edabb3c62c65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3821e4c9-61a2-460e-8c8b-edabb3c62c65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5476190   0.4721814   0.6230566
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4285714   0.2896895   0.5674533
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5694444   0.4883766   0.6505123
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4000000   0.2806181   0.5193819
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2542373   0.1899377   0.3185369
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2857143   0.1356965   0.4357321
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5059761   0.4440139   0.5679383
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3448276   0.1715251   0.5181301
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8613139   0.8033406   0.9192871
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9487179   0.9140459   0.9833900
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6666667   0.5879066   0.7454268
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5450450   0.4794492   0.6106408
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8587571   0.8073463   0.9101678
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.8888889   0.8161514   0.9616264
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5590551   0.4724899   0.6456203
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4533333   0.3403888   0.5662779
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3536842   0.3106539   0.3967145
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4402516   0.3630299   0.5174732
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2912317   0.2708839   0.3115796
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3448276   0.2926566   0.3969985
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.4847349   0.4620602   0.5074095
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.6049046   0.5548774   0.6549319
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6145553   0.5649841   0.6641264
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6768293   0.6051839   0.7484746
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.3094463   0.2728543   0.3460382
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.5227273   0.3750299   0.6704247
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1632653   0.0595378   0.2669928
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2222222   0.1541563   0.2902882
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1846154   0.0900683   0.2791625
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3722628   0.2911767   0.4533489
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3935484   0.3165070   0.4705898
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4057971   0.3237554   0.4878388
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3063063   0.2455855   0.3670271
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.6045198   0.5323421   0.6766975
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5972222   0.4837064   0.7107380
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4960630   0.4088903   0.5832357
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3333333   0.2263813   0.4402853
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1431579   0.1116367   0.1746790
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2075472   0.1444605   0.2706338
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356994   0.1203614   0.1510374
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1442006   0.1056422   0.1827591
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2244242   0.2054955   0.2433529
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3269755   0.2789706   0.3749803
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1967655   0.1562741   0.2372569
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1646341   0.1078234   0.2214449
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.2627737   0.1888514   0.3366960
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3870968   0.2151202   0.5590734
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0602606   0.0414235   0.0790977
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.2727273   0.1410336   0.4044210
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4462810   0.3574275   0.5351344
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3421053   0.1907894   0.4934211
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                0.4807692   0.3844339   0.5771045
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    NA                0.2745098   0.1516349   0.3973847
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2012195   0.1397030   0.2627360
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2580645   0.1036348   0.4124942
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3714286   0.2911372   0.4517200
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3157895   0.1061201   0.5254589
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7790698   0.6911437   0.8669958
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9157895   0.8597918   0.9717872
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.4390244   0.3313829   0.5466658
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3441558   0.2689611   0.4193506
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6617647   0.5487317   0.7747977
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7241379   0.5606235   0.8876523
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2857143   0.2383347   0.3330939
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3457944   0.2555754   0.4360134
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2183150   0.1963933   0.2402368
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2700422   0.2134998   0.3265846
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3635004   0.3377091   0.3892916
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.4434783   0.3792539   0.5077027
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5344828   0.4770057   0.5919598
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6176471   0.5358776   0.6994166
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                0.2854478   0.2471803   0.3237152
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.3548387   0.1862610   0.5234164


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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7826087   0.5503259   1.1129340
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7024390   0.5046620   0.9777249
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1238095   0.6274604   2.0127929
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6815096   0.4062743   1.1432064
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1014776   1.0202655   1.1891541
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8175676   0.6906884   0.9677544
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0350877   0.9352845   1.1455409
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.8108920   0.6047382   1.0873233
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2447589   1.0054896   1.5409655
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1840316   1.0022786   1.3987438
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2479082   1.1347968   1.3722941
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1013318   0.9640961   1.2581026
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9259601   0.7253921   1.1819842
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.6892344   1.2435591   2.2946340
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7218045   0.3604397   1.4454618
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.8307692   0.4574261   1.5088286
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0571790   0.7887884   1.4168914
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.7548263   0.5686934   1.0018801
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9879283   0.7893011   1.2365401
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 0.6719577   0.4660852   0.9687651
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4497780   0.9960854   2.1101166
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0626477   0.7949003   1.4205809
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.4569528   1.2300191   1.7257549
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8367023   0.5598639   1.2504302
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.4731183   0.8706918   2.4923601
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 4.5257985   2.5461126   8.0447552
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7665692   0.4719497   1.2451081
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                    0                 0.5709804   0.3496511   0.9324113
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                    0                 1.2825024   0.6549659   2.5112951
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8502024   0.4229346   1.7091157
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1754910   1.0338870   1.3364894
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.7839105   0.5644688   1.0886619
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.0942529   0.8244339   1.4523776
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2102804   0.8884369   1.6487143
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2369382   0.9806135   1.5602643
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.2200215   1.0383175   1.4335234
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1555977   0.9743902   1.3705045
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121
6-24 months                  ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           1                    0                 1.2430951   0.7587893   2.0365144


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0268817   -0.0631819    0.0094185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0526980   -0.0988262   -0.0065699
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0051967   -0.0217956    0.0321890
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0166904   -0.0366041    0.0032233
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0465360    0.0102244    0.0828475
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0750000   -0.1385028   -0.0114972
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0087128   -0.0170990    0.0345246
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0392531   -0.0925580    0.0140518
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0217101   -0.0006518    0.0440720
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076497   -0.0003807    0.0156801
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0197414    0.0105311    0.0289517
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0190896   -0.0077279    0.0459072
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0142620    0.0033017    0.0252222
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0142089   -0.0418843    0.0134665
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0116959   -0.0480049    0.0246131
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0112989   -0.0480859    0.0706836
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0613527   -0.1244931    0.0017878
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0021101   -0.0410095    0.0367892
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0604194   -0.1127891   -0.0080498
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0161481   -0.0016714    0.0339676
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012134   -0.0047108    0.0071375
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0168471    0.0082247    0.0254694
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0098496   -0.0312721    0.0115729
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0229406   -0.0123666    0.0582477
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0142075    0.0044296    0.0239854
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0248973   -0.0674030    0.0176083
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0678660   -0.1214718   -0.0142602
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0090369   -0.0175510    0.0356248
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0066487   -0.0336250    0.0203276
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0717590    0.0161437    0.1273742
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0619057   -0.1477821    0.0239706
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0186477   -0.0410552    0.0783506
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0140669   -0.0099063    0.0380401
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076525   -0.0013640    0.0166691
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0117389    0.0014843    0.0219936
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0265501   -0.0055708    0.0586710
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0037939   -0.0057463    0.0133341


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0516224   -0.1241225    0.0162018
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1019805   -0.1964321   -0.0149852
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0200308   -0.0897011    0.1187129
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0341117   -0.0758320    0.0059906
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0512595    0.0096051    0.0911621
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.1267606   -0.2407374   -0.0232539
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0100439   -0.0202124    0.0394030
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0755156   -0.1838274    0.0228865
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0578328   -0.0036998    0.1155932
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0255944   -0.0016389    0.0520873
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0391325    0.0206319    0.0572836
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0301267   -0.0132426    0.0716396
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0440581    0.0096237    0.0772952
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0670290   -0.2053590    0.0554259
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0555556   -0.2425940    0.1033294
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0294578   -0.1384141    0.1725751
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1781206   -0.3769518   -0.0080006
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0035028   -0.0702007    0.0590382
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1386901   -0.2671363   -0.0232641
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1013653   -0.0166491    0.2056803
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0088624   -0.0353583    0.0511945
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0698262    0.0335504    0.1047404
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0526954   -0.1735592    0.0557207
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0802920   -0.0515156    0.1955775
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.1907864    0.0588445    0.3042312
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0590847   -0.1652607    0.0374167
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1643630   -0.3043144   -0.0394282
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0429804   -0.0919047    0.1612028
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0182266   -0.0949479    0.0531189
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0843401    0.0145466    0.1491905
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.1641546   -0.4164641    0.0432120
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0274064   -0.0646948    0.1115404
6-24 months                  ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0469239   -0.0364417    0.1235840
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0338656   -0.0068182    0.0729054
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0312839    0.0035541    0.0582419
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0473236   -0.0118953    0.1030769
6-24 months                  ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064
6-24 months                  ki1114097-CMIN             PERU                           0                    NA                 0.0131166   -0.0204154    0.0455467
