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

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

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
![](/tmp/31420fb9-7595-4f3b-a8ce-ed09e637912f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31420fb9-7595-4f3b-a8ce-ed09e637912f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31420fb9-7595-4f3b-a8ce-ed09e637912f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31420fb9-7595-4f3b-a8ce-ed09e637912f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5315789   0.4604552   0.6027027
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3684211   0.1510014   0.5858407
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6135593   0.5579163   0.6692024
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.4923077   0.3706011   0.6140143
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5359116   0.4630777   0.6087455
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3809524   0.1727367   0.5891681
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3760263   0.3375251   0.4145275
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3600000   0.1716949   0.5483051
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2983425   0.2790968   0.3175883
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3174603   0.2024905   0.4324301
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                0.5011515   0.4801145   0.5221886
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    NA                0.6190476   0.4991053   0.7389899
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6220807   0.5782512   0.6659102
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7187500   0.6084947   0.8290053
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                0.3183230   0.2823183   0.3543276
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.5714286   0.3120065   0.8308506
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2052632   0.1476953   0.2628310
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2631579   0.0646818   0.4616340
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3968254   0.3363172   0.4573336
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3000000   0.1577433   0.4422567
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.3694915   0.3143360   0.4246470
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.2307692   0.1282010   0.3333374
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5964912   0.5326821   0.6603004
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.6666667   0.4646412   0.8686921
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4530387   0.3803390   0.5257383
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2857143   0.0920194   0.4794091
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1559934   0.1271526   0.1848343
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2400000   0.0724543   0.4075457
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1367403   0.1222881   0.1511925
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1428571   0.0564295   0.2292848
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                0.2390603   0.2211153   0.2570054
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    NA                0.3174603   0.2024905   0.4324301
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1953291   0.1594917   0.2311665
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1250000   0.0438995   0.2061005
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                0.0683230   0.0488222   0.0878237
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    NA                0.3571429   0.1059585   0.6083272
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3870968   0.3169481   0.4572454
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3400000   0.2084180   0.4715820
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2247119   0.2040063   0.2454175
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2750000   0.1365831   0.4134169
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                0.3711676   0.3469758   0.3953594
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    NA                0.5588235   0.3918719   0.7257752
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5417790   0.4910192   0.5925388
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6909091   0.5686361   0.8131821


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6336449   0.5927799   0.6745099
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.3237082   0.2879308   0.3594857
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1869159   0.1538509   0.2199809
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3752393   0.3512585   0.3992201
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6930693   0.3784234    1.2693324
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8023799   0.6166222    1.0440974
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                    0                 0.7108493   0.4047424    1.2484651
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9573799   0.5618323    1.6314054
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0640800   0.7365746    1.5372050
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2352503   1.0131107    1.5060973
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1553968   0.9759328    1.3678623
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000    1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    0                 1.7951220   1.1243517    2.8660630
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                    0                 1.2820513   0.5733807    2.8666040
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7560000   0.4594084    1.2440696
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.6245589   0.3907961    0.9981518
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.1176471   0.8104711    1.5412454
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                    0                 0.6306620   0.3142235    1.2657695
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5385263   0.7472545    3.1676802
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0447330   0.5653023    1.9307671
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         1                    0                 1.3279506   0.9173964    1.9222364
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.6399457   0.3260781    1.2559276
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000    1.0000000
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                    0                 5.2272727   2.4470057   11.1664555
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.0000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 0.8783333   0.5728898    1.3466281
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2237892   0.7336327    2.0414301
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.0000000
6-24 months                  ki1101329-Keneba           GAMBIA                         1                    0                 1.5055825   1.1089318    2.0441101
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.0000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2752601   1.0438394    1.5579870


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0148325   -0.0365836    0.0069186
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0218927   -0.0465321    0.0027468
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0161096   -0.0399558    0.0077365
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0006320   -0.0082147    0.0069508
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005389   -0.0027496    0.0038274
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0033247   -0.0002035    0.0068529
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0115642   -0.0028764    0.0260048
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0053852   -0.0008480    0.0116184
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0052632   -0.0136594    0.0241858
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0132638   -0.0347832    0.0082557
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0250471   -0.0467865   -0.0033076
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0059184   -0.0121136    0.0239505
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0173951   -0.0400324    0.0052422
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0033126   -0.0035112    0.0101363
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001724   -0.0022980    0.0026428
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0022109   -0.0011144    0.0055362
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0084132   -0.0191951    0.0023687
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0061451   -0.0000911    0.0123814
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0099781   -0.0416655    0.0217093
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012556   -0.0022600    0.0047713
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0040717    0.0001689    0.0079744
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0192539    0.0015124    0.0369954


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0287037   -0.0718800    0.0127334
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0370017   -0.0797460    0.0040505
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0309918   -0.0781408    0.0140952
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0016834   -0.0220882    0.0183139
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018030   -0.0092603    0.0127451
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0065905   -0.0004334    0.0135650
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0182503   -0.0048805    0.0408486
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0                    NA                 0.0166360   -0.0028041    0.0356994
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0250000   -0.0690288    0.1107583
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0345805   -0.0923025    0.0200912
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0727173   -0.1378406   -0.0113213
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0098246   -0.0205996    0.0393418
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0399297   -0.0934540    0.0109746
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0207937   -0.0228851    0.0626073
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012593   -0.0169479    0.0191406
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0091636   -0.0047090    0.0228447
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0450106   -0.1040133    0.0108387
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0                    NA                 0.0825200   -0.0023669    0.1602181
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                -0.0264589   -0.1140484    0.0542442
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0055567   -0.0101203    0.0209904
6-24 months                  ki1101329-Keneba           GAMBIA                         0                    NA                 0.0108509    0.0003910    0.0212013
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0343186    0.0019730    0.0656160
