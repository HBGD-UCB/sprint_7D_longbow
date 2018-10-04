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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       0       66    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                       1      390    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       0        0    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                       1       42    498
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       0      356   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                       1      586   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       0       36   1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                       1       92   1070
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       0      184    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                       1      272    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       0       14    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                       1       28    498
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       0      758   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                       1      184   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       0      112   1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                       1       16   1070
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                       0       62    194
6-24 months                  ki1000109-EE               PAKISTAN                       0                       1      118    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       0        0    194
6-24 months                  ki1000109-EE               PAKISTAN                       1                       1       14    194
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       0      340    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                       1      402    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       0       34    852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                       1       76    852
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
![](/tmp/d956aff7-cfc1-4abb-9902-e0550814e3e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d956aff7-cfc1-4abb-9902-e0550814e3e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3699380   0.1525174   0.5873586
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.4956167   0.3752954   0.6159380
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3971853   0.1888654   0.6055052
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3717466   0.1833873   0.5601058
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1931665   0.1591687   0.2271643
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3692204   0.3489722   0.3894685
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6217960   0.5780485   0.6655435
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.3183019   0.2822972   0.3543066
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2550137   0.1020099   0.4080174
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2929629   0.1618064   0.4241193
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2358116   0.1363254   0.3352978
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5973131   0.5335251   0.6611011
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.2755752   0.0818366   0.4693137
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1558731   0.1270323   0.1847140
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1367670   0.1223148   0.1512192
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1360996   0.1216175   0.1505818
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1289363   0.0478103   0.2100624
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              NA                0.0682779   0.0487772   0.0877787
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.2652987   0.1891345   0.3414629
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2247139   0.2040023   0.2454255
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3296954   0.3061585   0.3532323
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5410364   0.4904719   0.5916009


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5173458   0.4494344   0.5852572
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5917772   0.5409323   0.6426220
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5205580   0.4514896   0.5896264
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3755884   0.3378666   0.4133103
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2986951   0.2797127   0.3176775
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5045754   0.4838379   0.5253129
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6333871   0.5925221   0.6742521
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.3235669   0.2877894   0.3593443
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2126663   0.1572626   0.2680699
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3845730   0.3287049   0.4404411
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3441870   0.2950323   0.3933417
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6029670   0.5420574   0.6638767
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4355367   0.3669891   0.5040844
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1591926   0.1306836   0.1877015
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1369865   0.1227318   0.1512411
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2419385   0.2241926   0.2596845
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1870558   0.1539909   0.2201208
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           observed             NA                0.0742831   0.0542085   0.0943576
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3786728   0.3167064   0.4406391
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259285   0.2054426   0.2464144
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3752433   0.3512625   0.3992240
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5618178   0.5146371   0.6089984


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.7150691   0.4069674   1.2564245
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.8375056   0.6724301   1.0431057
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              observed          0.7629991   0.4633943   1.2563117
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9897711   0.6022720   1.6265852
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6467013   0.5488679   0.7619729
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.7317447   0.7060673   0.7583559
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9816998   0.9592901   1.0046330
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              observed          0.9837284   0.9646581   1.0031756
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          optimal              observed          1.1991260   0.6939347   2.0721013
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.7617874   0.5004402   1.1596192
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.6851264   0.4632579   1.0132547
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.9906231   0.9611355   1.0210155
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              observed          0.6327254   0.3224208   1.2416737
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9791482   0.9373033   1.0228613
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9983978   0.9805261   1.0165953
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.5625380   0.5215077   0.6067965
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.6892933   0.3777525   1.2577687
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           optimal              observed          0.9191590   0.8412738   1.0042549
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.7006015   0.5618648   0.8735953
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9946237   0.9791727   1.0103185
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.8786178   0.8520909   0.9059706
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9630104   0.9320209   0.9950304
