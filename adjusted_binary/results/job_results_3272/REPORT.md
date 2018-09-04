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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** lag_WHZ_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* single
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        lag_WHZ_quart    stunted   n_cell      n
----------  -------------------------  -----------------------------  --------------  --------  -------  -----
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       12    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       14    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       56    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1       35    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       63    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1       26    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0       21    230
12 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        3    230
12 months   ki0047075b-MAL-ED          BRAZIL                         1                      0       24    194
12 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1    194
12 months   ki0047075b-MAL-ED          BRAZIL                         2                      0       59    194
12 months   ki0047075b-MAL-ED          BRAZIL                         2                      1        3    194
12 months   ki0047075b-MAL-ED          BRAZIL                         3                      0       75    194
12 months   ki0047075b-MAL-ED          BRAZIL                         3                      1        3    194
12 months   ki0047075b-MAL-ED          BRAZIL                         4                      0       28    194
12 months   ki0047075b-MAL-ED          BRAZIL                         4                      1        1    194
12 months   ki0047075b-MAL-ED          INDIA                          1                      0       85    228
12 months   ki0047075b-MAL-ED          INDIA                          1                      1       50    228
12 months   ki0047075b-MAL-ED          INDIA                          2                      0       51    228
12 months   ki0047075b-MAL-ED          INDIA                          2                      1       16    228
12 months   ki0047075b-MAL-ED          INDIA                          3                      0       15    228
12 months   ki0047075b-MAL-ED          INDIA                          3                      1        5    228
12 months   ki0047075b-MAL-ED          INDIA                          4                      0        5    228
12 months   ki0047075b-MAL-ED          INDIA                          4                      1        1    228
12 months   ki0047075b-MAL-ED          NEPAL                          1                      0       62    231
12 months   ki0047075b-MAL-ED          NEPAL                          1                      1        8    231
12 months   ki0047075b-MAL-ED          NEPAL                          2                      0       81    231
12 months   ki0047075b-MAL-ED          NEPAL                          2                      1       11    231
12 months   ki0047075b-MAL-ED          NEPAL                          3                      0       54    231
12 months   ki0047075b-MAL-ED          NEPAL                          3                      1        4    231
12 months   ki0047075b-MAL-ED          NEPAL                          4                      0       10    231
12 months   ki0047075b-MAL-ED          NEPAL                          4                      1        1    231
12 months   ki0047075b-MAL-ED          PERU                           1                      0       23    244
12 months   ki0047075b-MAL-ED          PERU                           1                      1        7    244
12 months   ki0047075b-MAL-ED          PERU                           2                      0       40    244
12 months   ki0047075b-MAL-ED          PERU                           2                      1       29    244
12 months   ki0047075b-MAL-ED          PERU                           3                      0       62    244
12 months   ki0047075b-MAL-ED          PERU                           3                      1       29    244
12 months   ki0047075b-MAL-ED          PERU                           4                      0       42    244
12 months   ki0047075b-MAL-ED          PERU                           4                      1       12    244
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       28    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       17    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       32    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       17    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       64    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       20    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       60    250
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       12    250
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       10    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       21    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       33    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       28    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       36    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       42    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       35    231
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       26    231
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       10     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        9     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       10     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        6     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1       13     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        2     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        2     57
12 months   ki1000108-IRC              INDIA                          1                      0        0      5
12 months   ki1000108-IRC              INDIA                          1                      1        1      5
12 months   ki1000108-IRC              INDIA                          2                      0        4      5
12 months   ki1000108-IRC              INDIA                          2                      1        0      5
12 months   ki1000108-IRC              INDIA                          3                      0        0      5
12 months   ki1000108-IRC              INDIA                          3                      1        0      5
12 months   ki1000108-IRC              INDIA                          4                      0        0      5
12 months   ki1000108-IRC              INDIA                          4                      1        0      5
12 months   ki1000109-EE               PAKISTAN                       1                      0        0     86
12 months   ki1000109-EE               PAKISTAN                       1                      1       30     86
12 months   ki1000109-EE               PAKISTAN                       2                      0        6     86
12 months   ki1000109-EE               PAKISTAN                       2                      1       18     86
12 months   ki1000109-EE               PAKISTAN                       3                      0       10     86
12 months   ki1000109-EE               PAKISTAN                       3                      1        6     86
12 months   ki1000109-EE               PAKISTAN                       4                      0        2     86
12 months   ki1000109-EE               PAKISTAN                       4                      1       14     86
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       91    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       65    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0      106    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       48    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                      0      121    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                      1       23    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                      0       82    549
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                      1       13    549
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      210   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       72   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      221   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       66   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      261   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       36   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      376   1289
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       47   1289
12 months   ki1101329-Keneba           GAMBIA                         1                      0      163    608
12 months   ki1101329-Keneba           GAMBIA                         1                      1       76    608
12 months   ki1101329-Keneba           GAMBIA                         2                      0      133    608
12 months   ki1101329-Keneba           GAMBIA                         2                      1       21    608
12 months   ki1101329-Keneba           GAMBIA                         3                      0      118    608
12 months   ki1101329-Keneba           GAMBIA                         3                      1       15    608
12 months   ki1101329-Keneba           GAMBIA                         4                      0       69    608
12 months   ki1101329-Keneba           GAMBIA                         4                      1       13    608
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0       10    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1       22    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      0       18    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      1       24    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      0       23    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      1       15    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      0       27    154
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      1       15    154
12 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        6      8
12 months   ki1113344-GMS-Nepal        NEPAL                          1                      1        2      8
12 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        0      8
12 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        0      8
12 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        0      8
12 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0      8
12 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        0      8
12 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        0      8
12 months   ki1114097-CMIN             BANGLADESH                     1                      0       38    240
12 months   ki1114097-CMIN             BANGLADESH                     1                      1       76    240
12 months   ki1114097-CMIN             BANGLADESH                     2                      0       33    240
12 months   ki1114097-CMIN             BANGLADESH                     2                      1       37    240
12 months   ki1114097-CMIN             BANGLADESH                     3                      0       22    240
12 months   ki1114097-CMIN             BANGLADESH                     3                      1       10    240
12 months   ki1114097-CMIN             BANGLADESH                     4                      0       17    240
12 months   ki1114097-CMIN             BANGLADESH                     4                      1        7    240
12 months   ki1114097-CMIN             PERU                           1                      0       18    560
12 months   ki1114097-CMIN             PERU                           1                      1       20    560
12 months   ki1114097-CMIN             PERU                           2                      0       52    560
12 months   ki1114097-CMIN             PERU                           2                      1       24    560
12 months   ki1114097-CMIN             PERU                           3                      0      101    560
12 months   ki1114097-CMIN             PERU                           3                      1       22    560
12 months   ki1114097-CMIN             PERU                           4                      0      280    560
12 months   ki1114097-CMIN             PERU                           4                      1       43    560
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       18    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       51    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1       46    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       47    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1       29    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0        5    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        2    219
18 months   ki0047075b-MAL-ED          BRAZIL                         1                      0       14    176
18 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0    176
18 months   ki0047075b-MAL-ED          BRAZIL                         2                      0       50    176
18 months   ki0047075b-MAL-ED          BRAZIL                         2                      1        5    176
18 months   ki0047075b-MAL-ED          BRAZIL                         3                      0       68    176
18 months   ki0047075b-MAL-ED          BRAZIL                         3                      1        2    176
18 months   ki0047075b-MAL-ED          BRAZIL                         4                      0       37    176
18 months   ki0047075b-MAL-ED          BRAZIL                         4                      1        0    176
18 months   ki0047075b-MAL-ED          INDIA                          1                      0       41    228
18 months   ki0047075b-MAL-ED          INDIA                          1                      1       60    228
18 months   ki0047075b-MAL-ED          INDIA                          2                      0       56    228
18 months   ki0047075b-MAL-ED          INDIA                          2                      1       33    228
18 months   ki0047075b-MAL-ED          INDIA                          3                      0       27    228
18 months   ki0047075b-MAL-ED          INDIA                          3                      1        9    228
18 months   ki0047075b-MAL-ED          INDIA                          4                      0        2    228
18 months   ki0047075b-MAL-ED          INDIA                          4                      1        0    228
18 months   ki0047075b-MAL-ED          NEPAL                          1                      0       47    228
18 months   ki0047075b-MAL-ED          NEPAL                          1                      1       14    228
18 months   ki0047075b-MAL-ED          NEPAL                          2                      0       67    228
18 months   ki0047075b-MAL-ED          NEPAL                          2                      1       21    228
18 months   ki0047075b-MAL-ED          NEPAL                          3                      0       53    228
18 months   ki0047075b-MAL-ED          NEPAL                          3                      1        7    228
18 months   ki0047075b-MAL-ED          NEPAL                          4                      0       17    228
18 months   ki0047075b-MAL-ED          NEPAL                          4                      1        2    228
18 months   ki0047075b-MAL-ED          PERU                           1                      0       21    218
18 months   ki0047075b-MAL-ED          PERU                           1                      1       23    218
18 months   ki0047075b-MAL-ED          PERU                           2                      0       37    218
18 months   ki0047075b-MAL-ED          PERU                           2                      1       29    218
18 months   ki0047075b-MAL-ED          PERU                           3                      0       44    218
18 months   ki0047075b-MAL-ED          PERU                           3                      1       33    218
18 months   ki0047075b-MAL-ED          PERU                           4                      0       20    218
18 months   ki0047075b-MAL-ED          PERU                           4                      1       11    218
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       11    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       13    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       28    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       17    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       51    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       28    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       68    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       24    240
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        4    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       20    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       20    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       42    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       23    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       48    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       28    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       38    223
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        8     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       11     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        7     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       22     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        5     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1       15     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        3     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        4     75
18 months   ki1000108-IRC              INDIA                          1                      0        4      8
18 months   ki1000108-IRC              INDIA                          1                      1        2      8
18 months   ki1000108-IRC              INDIA                          2                      0        0      8
18 months   ki1000108-IRC              INDIA                          2                      1        1      8
18 months   ki1000108-IRC              INDIA                          3                      0        0      8
18 months   ki1000108-IRC              INDIA                          3                      1        1      8
18 months   ki1000108-IRC              INDIA                          4                      0        0      8
18 months   ki1000108-IRC              INDIA                          4                      1        0      8
18 months   ki1000109-EE               PAKISTAN                       1                      0        6    112
18 months   ki1000109-EE               PAKISTAN                       1                      1       42    112
18 months   ki1000109-EE               PAKISTAN                       2                      0        2    112
18 months   ki1000109-EE               PAKISTAN                       2                      1       28    112
18 months   ki1000109-EE               PAKISTAN                       3                      0       10    112
18 months   ki1000109-EE               PAKISTAN                       3                      1       18    112
18 months   ki1000109-EE               PAKISTAN                       4                      0        2    112
18 months   ki1000109-EE               PAKISTAN                       4                      1        4    112
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       66    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       67    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0       76    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       41    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                      0       62    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                      1       27    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                      0       62    414
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                      1       13    414
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      137    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       67    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      123    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       42    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      159    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       48    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      230    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       49    855
18 months   ki1101329-Keneba           GAMBIA                         1                      0      146    611
18 months   ki1101329-Keneba           GAMBIA                         1                      1       91    611
18 months   ki1101329-Keneba           GAMBIA                         2                      0      127    611
18 months   ki1101329-Keneba           GAMBIA                         2                      1       35    611
18 months   ki1101329-Keneba           GAMBIA                         3                      0       99    611
18 months   ki1101329-Keneba           GAMBIA                         3                      1       23    611
18 months   ki1101329-Keneba           GAMBIA                         4                      0       77    611
18 months   ki1101329-Keneba           GAMBIA                         4                      1       13    611
18 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        4     22
18 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       10     22
18 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        2     22
18 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        4     22
18 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        2     22
18 months   ki1114097-CMIN             BANGLADESH                     1                      0       22    233
18 months   ki1114097-CMIN             BANGLADESH                     1                      1       94    233
18 months   ki1114097-CMIN             BANGLADESH                     2                      0       13    233
18 months   ki1114097-CMIN             BANGLADESH                     2                      1       50    233
18 months   ki1114097-CMIN             BANGLADESH                     3                      0       17    233
18 months   ki1114097-CMIN             BANGLADESH                     3                      1       17    233
18 months   ki1114097-CMIN             BANGLADESH                     4                      0       12    233
18 months   ki1114097-CMIN             BANGLADESH                     4                      1        8    233
18 months   ki1114097-CMIN             PERU                           1                      0        4    447
18 months   ki1114097-CMIN             PERU                           1                      1        6    447
18 months   ki1114097-CMIN             PERU                           2                      0       19    447
18 months   ki1114097-CMIN             PERU                           2                      1       19    447
18 months   ki1114097-CMIN             PERU                           3                      0       52    447
18 months   ki1114097-CMIN             PERU                           3                      1       53    447
18 months   ki1114097-CMIN             PERU                           4                      0      233    447
18 months   ki1114097-CMIN             PERU                           4                      1       61    447
3 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0       47    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        7    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     2                      0       90    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     2                      1       15    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     3                      0       61    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     3                      1       14    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     4                      0       11    245
3 months    ki0047075b-MAL-ED          BANGLADESH                     4                      1        0    245
3 months    ki0047075b-MAL-ED          BRAZIL                         1                      0       34    218
3 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        2    218
3 months    ki0047075b-MAL-ED          BRAZIL                         2                      0       95    218
3 months    ki0047075b-MAL-ED          BRAZIL                         2                      1        5    218
3 months    ki0047075b-MAL-ED          BRAZIL                         3                      0       55    218
3 months    ki0047075b-MAL-ED          BRAZIL                         3                      1        4    218
3 months    ki0047075b-MAL-ED          BRAZIL                         4                      0       21    218
3 months    ki0047075b-MAL-ED          BRAZIL                         4                      1        2    218
3 months    ki0047075b-MAL-ED          INDIA                          1                      0       72    239
3 months    ki0047075b-MAL-ED          INDIA                          1                      1       16    239
3 months    ki0047075b-MAL-ED          INDIA                          2                      0       79    239
3 months    ki0047075b-MAL-ED          INDIA                          2                      1       10    239
3 months    ki0047075b-MAL-ED          INDIA                          3                      0       44    239
3 months    ki0047075b-MAL-ED          INDIA                          3                      1        8    239
3 months    ki0047075b-MAL-ED          INDIA                          4                      0        8    239
3 months    ki0047075b-MAL-ED          INDIA                          4                      1        2    239
3 months    ki0047075b-MAL-ED          NEPAL                          1                      0       47    236
3 months    ki0047075b-MAL-ED          NEPAL                          1                      1        1    236
3 months    ki0047075b-MAL-ED          NEPAL                          2                      0       84    236
3 months    ki0047075b-MAL-ED          NEPAL                          2                      1        8    236
3 months    ki0047075b-MAL-ED          NEPAL                          3                      0       74    236
3 months    ki0047075b-MAL-ED          NEPAL                          3                      1        5    236
3 months    ki0047075b-MAL-ED          NEPAL                          4                      0       17    236
3 months    ki0047075b-MAL-ED          NEPAL                          4                      1        0    236
3 months    ki0047075b-MAL-ED          PERU                           1                      0       11    282
3 months    ki0047075b-MAL-ED          PERU                           1                      1        7    282
3 months    ki0047075b-MAL-ED          PERU                           2                      0       54    282
3 months    ki0047075b-MAL-ED          PERU                           2                      1       16    282
3 months    ki0047075b-MAL-ED          PERU                           3                      0       76    282
3 months    ki0047075b-MAL-ED          PERU                           3                      1       23    282
3 months    ki0047075b-MAL-ED          PERU                           4                      0       71    282
3 months    ki0047075b-MAL-ED          PERU                           4                      1       24    282
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       30    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       49    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       10    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       77    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       16    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       64    271
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       24    271
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       10    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        1    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       41    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       13    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       69    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       13    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       78    252
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       27    252
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        7     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      1        0     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        3     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      1        3     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        2     24
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        0     24
3 months    ki1000108-IRC              INDIA                          1                      0        0      2
3 months    ki1000108-IRC              INDIA                          1                      1        0      2
3 months    ki1000108-IRC              INDIA                          2                      0        2      2
3 months    ki1000108-IRC              INDIA                          2                      1        0      2
3 months    ki1000108-IRC              INDIA                          3                      0        0      2
3 months    ki1000108-IRC              INDIA                          3                      1        0      2
3 months    ki1000108-IRC              INDIA                          4                      0        0      2
3 months    ki1000108-IRC              INDIA                          4                      1        0      2
3 months    ki1000109-EE               PAKISTAN                       1                      0        2     30
3 months    ki1000109-EE               PAKISTAN                       1                      1        2     30
3 months    ki1000109-EE               PAKISTAN                       2                      0        0     30
3 months    ki1000109-EE               PAKISTAN                       2                      1        2     30
3 months    ki1000109-EE               PAKISTAN                       3                      0        2     30
3 months    ki1000109-EE               PAKISTAN                       3                      1       10     30
3 months    ki1000109-EE               PAKISTAN                       4                      0        4     30
3 months    ki1000109-EE               PAKISTAN                       4                      1        8     30
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      228    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       28    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                      0      151    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                      1       23    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                      0      100    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                      1       23    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                      0       26    587
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                      1        8    587
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      542   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       35   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      467   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       23   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      448   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       34   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      603   2211
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       59   2211
3 months    ki1101329-Keneba           GAMBIA                         1                      0      141    707
3 months    ki1101329-Keneba           GAMBIA                         1                      1       22    707
3 months    ki1101329-Keneba           GAMBIA                         2                      0      108    707
3 months    ki1101329-Keneba           GAMBIA                         2                      1       12    707
3 months    ki1101329-Keneba           GAMBIA                         3                      0      158    707
3 months    ki1101329-Keneba           GAMBIA                         3                      1       27    707
3 months    ki1101329-Keneba           GAMBIA                         4                      0      203    707
3 months    ki1101329-Keneba           GAMBIA                         4                      1       36    707
3 months    ki1114097-CMIN             BANGLADESH                     1                      0       67    248
3 months    ki1114097-CMIN             BANGLADESH                     1                      1       25    248
3 months    ki1114097-CMIN             BANGLADESH                     2                      0       52    248
3 months    ki1114097-CMIN             BANGLADESH                     2                      1       20    248
3 months    ki1114097-CMIN             BANGLADESH                     3                      0       28    248
3 months    ki1114097-CMIN             BANGLADESH                     3                      1       20    248
3 months    ki1114097-CMIN             BANGLADESH                     4                      0       14    248
3 months    ki1114097-CMIN             BANGLADESH                     4                      1       22    248
3 months    ki1114097-CMIN             PERU                           1                      0      103    586
3 months    ki1114097-CMIN             PERU                           1                      1       18    586
3 months    ki1114097-CMIN             PERU                           2                      0      114    586
3 months    ki1114097-CMIN             PERU                           2                      1        5    586
3 months    ki1114097-CMIN             PERU                           3                      0      150    586
3 months    ki1114097-CMIN             PERU                           3                      1        5    586
3 months    ki1114097-CMIN             PERU                           4                      0      176    586
3 months    ki1114097-CMIN             PERU                           4                      1       15    586
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0       29    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        5    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                      0       77    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                      1       19    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                      0       68    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                      1       16    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                      0       19    236
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                      1        3    236
6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0       36    207
6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1    207
6 months    ki0047075b-MAL-ED          BRAZIL                         2                      0       74    207
6 months    ki0047075b-MAL-ED          BRAZIL                         2                      1        4    207
6 months    ki0047075b-MAL-ED          BRAZIL                         3                      0       70    207
6 months    ki0047075b-MAL-ED          BRAZIL                         3                      1        2    207
6 months    ki0047075b-MAL-ED          BRAZIL                         4                      0       20    207
6 months    ki0047075b-MAL-ED          BRAZIL                         4                      1        0    207
6 months    ki0047075b-MAL-ED          INDIA                          1                      0       89    235
6 months    ki0047075b-MAL-ED          INDIA                          1                      1       23    235
6 months    ki0047075b-MAL-ED          INDIA                          2                      0       66    235
6 months    ki0047075b-MAL-ED          INDIA                          2                      1       16    235
6 months    ki0047075b-MAL-ED          INDIA                          3                      0       30    235
6 months    ki0047075b-MAL-ED          INDIA                          3                      1        6    235
6 months    ki0047075b-MAL-ED          INDIA                          4                      0        3    235
6 months    ki0047075b-MAL-ED          INDIA                          4                      1        2    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                      0       59    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        4    235
6 months    ki0047075b-MAL-ED          NEPAL                          2                      0       83    235
6 months    ki0047075b-MAL-ED          NEPAL                          2                      1        5    235
6 months    ki0047075b-MAL-ED          NEPAL                          3                      0       65    235
6 months    ki0047075b-MAL-ED          NEPAL                          3                      1        4    235
6 months    ki0047075b-MAL-ED          NEPAL                          4                      0       13    235
6 months    ki0047075b-MAL-ED          NEPAL                          4                      1        2    235
6 months    ki0047075b-MAL-ED          PERU                           1                      0       25    270
6 months    ki0047075b-MAL-ED          PERU                           1                      1        9    270
6 months    ki0047075b-MAL-ED          PERU                           2                      0       52    270
6 months    ki0047075b-MAL-ED          PERU                           2                      1       12    270
6 months    ki0047075b-MAL-ED          PERU                           3                      0       78    270
6 months    ki0047075b-MAL-ED          PERU                           3                      1       16    270
6 months    ki0047075b-MAL-ED          PERU                           4                      0       57    270
6 months    ki0047075b-MAL-ED          PERU                           4                      1       21    270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       29    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        9    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       41    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1        7    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       61    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       14    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       69    251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       21    251
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       24    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       44    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1        9    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       56    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       20    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       57    242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       24    242
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        2     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      0       11     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      1        3     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        9     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      1        6     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        2     41
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        1     41
6 months    ki1000108-IRC              INDIA                          1                      0        0      3
6 months    ki1000108-IRC              INDIA                          1                      1        0      3
6 months    ki1000108-IRC              INDIA                          2                      0        2      3
6 months    ki1000108-IRC              INDIA                          2                      1        0      3
6 months    ki1000108-IRC              INDIA                          3                      0        1      3
6 months    ki1000108-IRC              INDIA                          3                      1        0      3
6 months    ki1000108-IRC              INDIA                          4                      0        0      3
6 months    ki1000108-IRC              INDIA                          4                      1        0      3
6 months    ki1000109-EE               PAKISTAN                       1                      0       12     48
6 months    ki1000109-EE               PAKISTAN                       1                      1       10     48
6 months    ki1000109-EE               PAKISTAN                       2                      0        4     48
6 months    ki1000109-EE               PAKISTAN                       2                      1        6     48
6 months    ki1000109-EE               PAKISTAN                       3                      0        4     48
6 months    ki1000109-EE               PAKISTAN                       3                      1        6     48
6 months    ki1000109-EE               PAKISTAN                       4                      0        0     48
6 months    ki1000109-EE               PAKISTAN                       4                      1        6     48
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0        6     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1        2     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                      0        9     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                      1        3     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                      0        7     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     3                      1        2     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                      0        9     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     4                      1        0     38
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      435   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       51   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      338   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       58   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      417   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       51   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      484   1899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       65   1899
6 months    ki1101329-Keneba           GAMBIA                         1                      0      194    748
6 months    ki1101329-Keneba           GAMBIA                         1                      1       27    748
6 months    ki1101329-Keneba           GAMBIA                         2                      0      193    748
6 months    ki1101329-Keneba           GAMBIA                         2                      1       15    748
6 months    ki1101329-Keneba           GAMBIA                         3                      0      142    748
6 months    ki1101329-Keneba           GAMBIA                         3                      1       19    748
6 months    ki1101329-Keneba           GAMBIA                         4                      0      133    748
6 months    ki1101329-Keneba           GAMBIA                         4                      1       25    748
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      0       45    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      1       20    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      0       44    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      1       24    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      0       34    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      1       15    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      0       40    233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      1       11    233
6 months    ki1114097-CMIN             BANGLADESH                     1                      0       71    239
6 months    ki1114097-CMIN             BANGLADESH                     1                      1       44    239
6 months    ki1114097-CMIN             BANGLADESH                     2                      0       32    239
6 months    ki1114097-CMIN             BANGLADESH                     2                      1       27    239
6 months    ki1114097-CMIN             BANGLADESH                     3                      0       30    239
6 months    ki1114097-CMIN             BANGLADESH                     3                      1       10    239
6 months    ki1114097-CMIN             BANGLADESH                     4                      0       16    239
6 months    ki1114097-CMIN             BANGLADESH                     4                      1        9    239
6 months    ki1114097-CMIN             PERU                           1                      0       67    609
6 months    ki1114097-CMIN             PERU                           1                      1       14    609
6 months    ki1114097-CMIN             PERU                           2                      0       97    609
6 months    ki1114097-CMIN             PERU                           2                      1        4    609
6 months    ki1114097-CMIN             PERU                           3                      0      138    609
6 months    ki1114097-CMIN             PERU                           3                      1        5    609
6 months    ki1114097-CMIN             PERU                           4                      0      269    609
6 months    ki1114097-CMIN             PERU                           4                      1       15    609
9 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0       20    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     2                      0       57    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     2                      1       28    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     3                      0       71    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     3                      1       21    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     4                      0       27    233
9 months    ki0047075b-MAL-ED          BANGLADESH                     4                      1        0    233
9 months    ki0047075b-MAL-ED          BRAZIL                         1                      0       23    198
9 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0    198
9 months    ki0047075b-MAL-ED          BRAZIL                         2                      0       70    198
9 months    ki0047075b-MAL-ED          BRAZIL                         2                      1        2    198
9 months    ki0047075b-MAL-ED          BRAZIL                         3                      0       79    198
9 months    ki0047075b-MAL-ED          BRAZIL                         3                      1        1    198
9 months    ki0047075b-MAL-ED          BRAZIL                         4                      0       22    198
9 months    ki0047075b-MAL-ED          BRAZIL                         4                      1        1    198
9 months    ki0047075b-MAL-ED          INDIA                          1                      0       82    231
9 months    ki0047075b-MAL-ED          INDIA                          1                      1       28    231
9 months    ki0047075b-MAL-ED          INDIA                          2                      0       77    231
9 months    ki0047075b-MAL-ED          INDIA                          2                      1       18    231
9 months    ki0047075b-MAL-ED          INDIA                          3                      0       18    231
9 months    ki0047075b-MAL-ED          INDIA                          3                      1        5    231
9 months    ki0047075b-MAL-ED          INDIA                          4                      0        2    231
9 months    ki0047075b-MAL-ED          INDIA                          4                      1        1    231
9 months    ki0047075b-MAL-ED          NEPAL                          1                      0       57    231
9 months    ki0047075b-MAL-ED          NEPAL                          1                      1        7    231
9 months    ki0047075b-MAL-ED          NEPAL                          2                      0       88    231
9 months    ki0047075b-MAL-ED          NEPAL                          2                      1        9    231
9 months    ki0047075b-MAL-ED          NEPAL                          3                      0       57    231
9 months    ki0047075b-MAL-ED          NEPAL                          3                      1        2    231
9 months    ki0047075b-MAL-ED          NEPAL                          4                      0       10    231
9 months    ki0047075b-MAL-ED          NEPAL                          4                      1        1    231
9 months    ki0047075b-MAL-ED          PERU                           1                      0       29    251
9 months    ki0047075b-MAL-ED          PERU                           1                      1       13    251
9 months    ki0047075b-MAL-ED          PERU                           2                      0       58    251
9 months    ki0047075b-MAL-ED          PERU                           2                      1       15    251
9 months    ki0047075b-MAL-ED          PERU                           3                      0       55    251
9 months    ki0047075b-MAL-ED          PERU                           3                      1       21    251
9 months    ki0047075b-MAL-ED          PERU                           4                      0       43    251
9 months    ki0047075b-MAL-ED          PERU                           4                      1       17    251
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       27    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       13    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       42    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       12    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       66    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       19    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       56    250
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       15    250
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       13    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       13    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       32    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       30    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       53    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       25    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       42    236
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       28    236
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        2     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      0       15     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                      1        7     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        4     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                      1        9     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        3     50
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        3     50
9 months    ki1000108-IRC              INDIA                          1                      0        0      5
9 months    ki1000108-IRC              INDIA                          1                      1        0      5
9 months    ki1000108-IRC              INDIA                          2                      0        4      5
9 months    ki1000108-IRC              INDIA                          2                      1        0      5
9 months    ki1000108-IRC              INDIA                          3                      0        0      5
9 months    ki1000108-IRC              INDIA                          3                      1        1      5
9 months    ki1000108-IRC              INDIA                          4                      0        0      5
9 months    ki1000108-IRC              INDIA                          4                      1        0      5
9 months    ki1000109-EE               PAKISTAN                       1                      0        6     78
9 months    ki1000109-EE               PAKISTAN                       1                      1       22     78
9 months    ki1000109-EE               PAKISTAN                       2                      0       12     78
9 months    ki1000109-EE               PAKISTAN                       2                      1       16     78
9 months    ki1000109-EE               PAKISTAN                       3                      0        6     78
9 months    ki1000109-EE               PAKISTAN                       3                      1       12     78
9 months    ki1000109-EE               PAKISTAN                       4                      0        2     78
9 months    ki1000109-EE               PAKISTAN                       4                      1        2     78
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       28    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1        9    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                      0       26    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                      1        7    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                      0       19    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                      1        9    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                      0       16    119
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                      1        5    119
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      337   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       77   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      310   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       56   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      346   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       47   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      432   1655
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       50   1655
9 months    ki1101329-Keneba           GAMBIA                         1                      0      218    679
9 months    ki1101329-Keneba           GAMBIA                         1                      1       54    679
9 months    ki1101329-Keneba           GAMBIA                         2                      0      131    679
9 months    ki1101329-Keneba           GAMBIA                         2                      1       22    679
9 months    ki1101329-Keneba           GAMBIA                         3                      0      134    679
9 months    ki1101329-Keneba           GAMBIA                         3                      1       14    679
9 months    ki1101329-Keneba           GAMBIA                         4                      0       98    679
9 months    ki1101329-Keneba           GAMBIA                         4                      1        8    679
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      0       22    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      1       18    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      0       33    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                      1       20    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      0       25    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                      1       18    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      0       28    178
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                      1       14    178
9 months    ki1113344-GMS-Nepal        NEPAL                          1                      0        6      6
9 months    ki1113344-GMS-Nepal        NEPAL                          1                      1        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          2                      0        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          2                      1        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          3                      0        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          3                      1        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          4                      0        0      6
9 months    ki1113344-GMS-Nepal        NEPAL                          4                      1        0      6
9 months    ki1114097-CMIN             BANGLADESH                     1                      0       56    244
9 months    ki1114097-CMIN             BANGLADESH                     1                      1       59    244
9 months    ki1114097-CMIN             BANGLADESH                     2                      0       35    244
9 months    ki1114097-CMIN             BANGLADESH                     2                      1       24    244
9 months    ki1114097-CMIN             BANGLADESH                     3                      0       27    244
9 months    ki1114097-CMIN             BANGLADESH                     3                      1       17    244
9 months    ki1114097-CMIN             BANGLADESH                     4                      0       18    244
9 months    ki1114097-CMIN             BANGLADESH                     4                      1        8    244
9 months    ki1114097-CMIN             PERU                           1                      0       30    573
9 months    ki1114097-CMIN             PERU                           1                      1       18    573
9 months    ki1114097-CMIN             PERU                           2                      0       56    573
9 months    ki1114097-CMIN             PERU                           2                      1       20    573
9 months    ki1114097-CMIN             PERU                           3                      0      113    573
9 months    ki1114097-CMIN             PERU                           3                      1       16    573
9 months    ki1114097-CMIN             PERU                           4                      0      295    573
9 months    ki1114097-CMIN             PERU                           4                      1       25    573


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e20c4ce9-4538-4d18-88a6-f36af1db859f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e20c4ce9-4538-4d18-88a6-f36af1db859f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e20c4ce9-4538-4d18-88a6-f36af1db859f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e20c4ce9-4538-4d18-88a6-f36af1db859f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2333333   0.0816734   0.3849933
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4202899   0.3035833   0.5369964
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3186813   0.2227473   0.4146153
12 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2222222   0.1111093   0.3333351
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3731856   0.2330173   0.5133540
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3292134   0.2009769   0.4574500
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2471228   0.1562079   0.3380376
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1633561   0.0790223   0.2476899
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6787070   0.5172189   0.8401950
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4620288   0.3410222   0.5830355
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5325934   0.4258937   0.6392930
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4219497   0.3011002   0.5427992
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4161520   0.3406625   0.4916414
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3091612   0.2378771   0.3804454
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1574541   0.0982728   0.2166353
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1398891   0.0715291   0.2082490
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2309356   0.1808433   0.2810279
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2138967   0.1658080   0.2619854
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1082474   0.0719084   0.1445864
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1064004   0.0767056   0.1360952
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3201345   0.2616186   0.3786503
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1502457   0.0965586   0.2039328
12 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1171955   0.0642334   0.1701575
12 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1757240   0.0972964   0.2541516
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7074167   0.5569935   0.8578399
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.5847258   0.4464949   0.7229567
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4249983   0.2806461   0.5693504
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3582492   0.2189319   0.4975665
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6666667   0.5799513   0.7533820
12 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.5285714   0.4113882   0.6457547
12 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.3125000   0.1515685   0.4734315
12 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.2916667   0.1094402   0.4738931
12 months   ki1114097-CMIN             PERU                           1                    NA                0.5261662   0.3716912   0.6806412
12 months   ki1114097-CMIN             PERU                           2                    NA                0.3178059   0.2135246   0.4220872
12 months   ki1114097-CMIN             PERU                           3                    NA                0.1777115   0.1104099   0.2450131
12 months   ki1114097-CMIN             PERU                           4                    NA                0.1331069   0.0959732   0.1702406
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5209447   0.3737435   0.6681459
18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4405478   0.3217766   0.5593189
18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4280358   0.3183104   0.5377611
18 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.3563420   0.1888370   0.5238470
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6019850   0.4127775   0.7911924
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4256210   0.2956800   0.5555619
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3698326   0.2672270   0.4724382
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2718724   0.1830722   0.3606726
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5042088   0.4203003   0.5881173
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3519910   0.2663793   0.4376026
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2972216   0.2046093   0.3898339
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1674267   0.0858440   0.2490094
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3253726   0.2634909   0.3872544
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2551016   0.1924361   0.3177671
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2344423   0.1787551   0.2901296
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1795556   0.1361806   0.2229306
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3809275   0.3192800   0.4425749
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2177458   0.1545404   0.2809513
18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1907428   0.1213048   0.2601808
18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1439859   0.0711020   0.2168699
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8103448   0.7388507   0.8818390
18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7936508   0.6935061   0.8937955
18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.5000000   0.3315727   0.6684273
18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.4000000   0.1848345   0.6151655
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3888889   0.1632801   0.6144977
3 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2285714   0.1300276   0.3271152
3 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2323232   0.1489863   0.3156601
3 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.2526316   0.1650992   0.3401640
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1093750   0.0711097   0.1476403
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1321839   0.0818168   0.1825510
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1869919   0.1180275   0.2559562
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2352941   0.0925916   0.3779966
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0607129   0.0413305   0.0800953
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0469366   0.0284414   0.0654318
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0701572   0.0476918   0.0926227
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0878200   0.0664869   0.1091531
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1349693   0.0824771   0.1874615
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1000000   0.0462862   0.1537138
3 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1459459   0.0950353   0.1968566
3 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1506276   0.1052483   0.1960069
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.2718868   0.1808200   0.3629536
3 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.2779357   0.1742479   0.3816235
3 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.4164018   0.2765690   0.5562346
3 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.6106285   0.4511721   0.7700848
3 months    ki1114097-CMIN             PERU                           1                    NA                0.1487603   0.0853010   0.2122197
3 months    ki1114097-CMIN             PERU                           2                    NA                0.0420168   0.0059393   0.0780943
3 months    ki1114097-CMIN             PERU                           3                    NA                0.0322581   0.0044192   0.0600970
3 months    ki1114097-CMIN             PERU                           4                    NA                0.0785340   0.0403510   0.1167171
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2647059   0.1161374   0.4132744
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.1875000   0.0916976   0.2833024
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.1702128   0.0940979   0.2463276
6 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.2692308   0.1706121   0.3678494
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2368421   0.1013981   0.3722861
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1458333   0.0457886   0.2458780
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.1866667   0.0983074   0.2750259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2333333   0.1457774   0.3208892
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2500000   0.0996606   0.4003394
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1698113   0.0685179   0.2711047
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2631579   0.1639524   0.3623634
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2962963   0.1966496   0.3959430
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1043099   0.0772729   0.1313470
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1462588   0.1118946   0.1806230
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1108779   0.0829591   0.1387966
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1178830   0.0911019   0.1446641
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1214094   0.0785405   0.1642784
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0730329   0.0383247   0.1077411
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1216914   0.0721846   0.1711983
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1718162   0.1158390   0.2277933
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3083532   0.1962075   0.4204989
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3530332   0.2391859   0.4668805
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3073724   0.1784160   0.4363288
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.2139803   0.1011617   0.3267989
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3826087   0.2935929   0.4716245
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4576271   0.3302365   0.5850177
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.2500000   0.1155288   0.3844712
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3600000   0.1714486   0.5485514
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3467824   0.2150583   0.4785065
9 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2187052   0.1284587   0.3089517
9 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2926524   0.1940352   0.3912697
9 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.3027840   0.1910755   0.4144926
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3258296   0.1806853   0.4709740
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2220377   0.1109465   0.3331290
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2237619   0.1350299   0.3124939
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2107830   0.1158171   0.3057489
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4316301   0.2441493   0.6191109
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4677808   0.3426428   0.5929189
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3091332   0.2064958   0.4117705
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3758205   0.2624195   0.4892215
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2432432   0.1044149   0.3820716
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2121212   0.0720511   0.3521913
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3214286   0.1477119   0.4951453
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2380952   0.0551603   0.4210302
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1788788   0.1424987   0.2152589
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1497258   0.1142733   0.1851784
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1153798   0.0843850   0.1463745
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1024641   0.0759520   0.1289763
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1985294   0.1510899   0.2459689
9 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1437908   0.0881520   0.1994297
9 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0945946   0.0474109   0.1417783
9 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0754717   0.0251486   0.1257948
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4786398   0.3375875   0.6196922
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3958101   0.2772579   0.5143623
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4157065   0.2852361   0.5461769
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3608627   0.2341711   0.4875543
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.5130435   0.4215030   0.6045839
9 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4067797   0.2811762   0.5323831
9 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.3863636   0.2421962   0.5305311
9 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3076923   0.1299212   0.4854634
9 months    ki1114097-CMIN             PERU                           1                    NA                0.3793316   0.2449775   0.5136857
9 months    ki1114097-CMIN             PERU                           2                    NA                0.2592722   0.1620470   0.3564974
9 months    ki1114097-CMIN             PERU                           3                    NA                0.1241016   0.0671025   0.1811008
9 months    ki1114097-CMIN             PERU                           4                    NA                0.0784293   0.0489501   0.1079085


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3155738   0.2571407   0.3740068
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2640000   0.2092493   0.3187507
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5064935   0.4418809   0.5711062
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2714026   0.2341712   0.3086339
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1714507   0.1508672   0.1920342
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2055921   0.1734423   0.2377419
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4935065   0.4142863   0.5727267
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5416667   0.4784974   0.6048359
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.1946429   0.1618216   0.2274641
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4403670   0.3743163   0.5064176
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3416667   0.2815391   0.4017942
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3574879   0.3112664   0.4037095
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2409357   0.2122537   0.2696176
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2651391   0.2301105   0.3001677
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7253219   0.6678862   0.7827575
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2482270   0.1977186   0.2987353
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1396934   0.1116252   0.1677615
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0682949   0.0577780   0.0788117
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1371994   0.1118203   0.1625786
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3508065   0.2912923   0.4103206
3 months    ki1114097-CMIN             PERU                           NA                   NA                0.0733788   0.0522485   0.0945092
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2031873   0.1533098   0.2530647
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2520661   0.1972475   0.3068848
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1184834   0.1039441   0.1330227
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1149733   0.0920981   0.1378484
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3004292   0.2414375   0.3594209
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3765690   0.3150122   0.4381258
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2629482   0.2083772   0.3175192
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2360000   0.1832587   0.2887413
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4067797   0.3439736   0.4695858
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2521008   0.1737550   0.3304466
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1389728   0.1223021   0.1556435
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1443299   0.1178775   0.1707823
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3932584   0.3212966   0.4652203
9 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4426230   0.3801724   0.5050735
9 months    ki1114097-CMIN             PERU                           NA                   NA                0.1378709   0.1096173   0.1661244


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           2                    1                 1.8012422   0.8884067   3.6520140
12 months   ki0047075b-MAL-ED          PERU                           3                    1                 1.3657771   0.6672600   2.7955324
12 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.9523810   0.4194406   2.1624740
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8821707   0.5150638   1.5109296
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6621979   0.3919375   1.1188165
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4377341   0.2319176   0.8262033
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6807486   0.4777964   0.9699082
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7847177   0.5757767   1.0694803
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6216964   0.4279171   0.9032274
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7429047   0.5546311   0.9950892
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.3783571   0.2492493   0.5743412
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3361490   0.1997169   0.5657817
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9262180   0.6773752   1.2664765
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.4687342   0.3143487   0.6989426
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4607363   0.3234989   0.6561937
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.4693206   0.3142737   0.7008598
12 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.3660820   0.2248853   0.5959306
12 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.5489068   0.3387853   0.8893500
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8265649   0.6028002   1.1333930
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.6007750   0.4027670   0.8961277
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.5064189   0.3251263   0.7888015
12 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928571   0.6131466   1.0252400
12 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.4687500   0.2755904   0.7972939
12 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4375000   0.2311123   0.8281957
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 0.6040029   0.3888828   0.9381221
12 months   ki1114097-CMIN             PERU                           3                    1                 0.3377478   0.2091641   0.5453785
12 months   ki1114097-CMIN             PERU                           4                    1                 0.2529751   0.1687264   0.3792908
18 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8456709   0.5725410   1.2490970
18 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.8216529   0.5614611   1.2024228
18 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.6840303   0.3953648   1.1834576
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.7070293   0.4572775   1.0931882
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6143552   0.4047874   0.9324212
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4516265   0.2870648   0.7105243
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6981055   0.5198898   0.9374128
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.5894811   0.4140803   0.8391802
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3320583   0.1984451   0.5556333
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7840291   0.5751799   1.0687120
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7205348   0.5325146   0.9749411
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5518460   0.4059823   0.7501164
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5716202   0.4102253   0.7965127
18 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.5007327   0.3362910   0.7455842
18 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.3779878   0.2221875   0.6430371
18 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.9793989   0.8396387   1.1424225
18 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.6170213   0.4355835   0.8740350
18 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4936170   0.2861908   0.8513821
3 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.5877551   0.2852929   1.2108821
3 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.5974026   0.3020256   1.1816545
3 months    ki0047075b-MAL-ED          PERU                           4                    1                 0.6496241   0.3305194   1.2768129
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.2085386   0.7204517   2.0272915
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.7096400   1.0283282   2.8423500
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 2.1512605   1.0681145   4.3327956
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7730904   0.4655449   1.2838047
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1555566   0.7353867   1.8157943
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.4464786   0.9690583   2.1591069
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7409091   0.3817332   1.4380366
3 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0813268   0.6413051   1.8232625
3 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.1160137   0.6823632   1.8252545
3 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.0222477   0.6191839   1.6876901
3 months    ki1114097-CMIN             BANGLADESH                     3                    1                 1.5315262   0.9530868   2.4610274
3 months    ki1114097-CMIN             BANGLADESH                     4                    1                 2.2458922   1.4688006   3.4341162
3 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             PERU                           2                    1                 0.2824463   0.1082794   0.7367596
3 months    ki1114097-CMIN             PERU                           3                    1                 0.2168459   0.0828064   0.5678565
3 months    ki1114097-CMIN             PERU                           4                    1                 0.5279232   0.2764801   1.0080396
6 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.7083333   0.3315960   1.5130945
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.6430260   0.3137406   1.3179119
6 months    ki0047075b-MAL-ED          PERU                           4                    1                 1.0170940   0.5203449   1.9880665
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6157407   0.2520695   1.5040955
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.7881481   0.3751487   1.6558169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.9851852   0.4971229   1.9524141
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6792453   0.2911848   1.5844718
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0526316   0.5176493   2.1405093
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1851852   0.5950497   2.3605824
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4021562   0.9887866   1.9883380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0629658   0.7412153   1.5243832
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1301226   0.8012929   1.5938954
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6015421   0.3330993   1.0863213
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0023230   0.5849341   1.7175463
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.4151801   0.8755713   2.2873465
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.1448989   0.7043277   1.8610563
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.9968193   0.5723886   1.7359687
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.6939455   0.3659198   1.3160271
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.1960709   0.8321422   1.7191600
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.6534091   0.3636380   1.1740893
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.9409091   0.5304597   1.6689485
9 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.6306699   0.3601515   1.1043810
9 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.8439080   0.5077708   1.4025636
9 months    ki0047075b-MAL-ED          PERU                           4                    1                 0.8731241   0.5138756   1.4835217
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6814535   0.3487922   1.3313910
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6867450   0.3783174   1.2466216
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.6469116   0.3434274   1.2185828
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0837540   0.6509157   1.8044161
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7161993   0.4142139   1.2383491
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8707005   0.5132913   1.4769766
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8720539   0.3643269   2.0873503
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.3214286   0.6021137   2.9000727
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.9788360   0.3758722   2.5490573
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8370240   0.6134415   1.1420962
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6450165   0.4609617   0.9025615
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5728131   0.4126616   0.7951186
9 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7242798   0.4596195   1.1413383
9 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.4764765   0.2740571   0.8284035
9 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.3801537   0.1872174   0.7719200
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8269477   0.5424546   1.2606448
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.8685163   0.5669284   1.3305395
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.7539337   0.4773306   1.1908223
9 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928756   0.5550433   1.1326175
9 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.7530817   0.4979845   1.1388547
9 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.5997392   0.3276071   1.0979225
9 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             PERU                           2                    1                 0.6834976   0.4080285   1.1449422
9 months    ki1114097-CMIN             PERU                           3                    1                 0.3271587   0.1831514   0.5843954
9 months    ki1114097-CMIN             PERU                           4                    1                 0.2067566   0.1233274   0.3466244


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0822404   -0.0618403    0.2263211
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1091856   -0.2331636    0.0147923
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1722135   -0.3240166   -0.0204103
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1447494   -0.2059852   -0.0835136
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0594849   -0.1021291   -0.0168406
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1145423   -0.1563756   -0.0727091
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2139102   -0.3513500   -0.0764704
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1250000   -0.1910783   -0.0589217
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.3315233   -0.4785362   -0.1845104
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0805778   -0.2116440    0.0504885
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2603183   -0.4389101   -0.0817265
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1467209   -0.2145184   -0.0789234
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0844370   -0.1367228   -0.0321512
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1157884   -0.1611905   -0.0703863
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0850229   -0.1426492   -0.0273966
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1406619   -0.3573475    0.0760236
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0303184   -0.0009051    0.0615418
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0075820   -0.0094119    0.0245759
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0022301   -0.0439109    0.0483711
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0789196    0.0035497    0.1542896
3 months    ki1114097-CMIN             PERU                           1                    NA                -0.0753815   -0.1283958   -0.0223672
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0498911   -0.1874493    0.0876671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0336549   -0.1572597    0.0899500
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020661   -0.1380398    0.1421720
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0141735   -0.0095464    0.0378933
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0064362   -0.0419800    0.0291077
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0079240   -0.1028576    0.0870095
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0060397   -0.0699742    0.0578949
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0838342   -0.2031162    0.0354479
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0898296   -0.2205520    0.0408928
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0248504   -0.2015801    0.1518793
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0088576   -0.1070143    0.1247295
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0399060   -0.0701147   -0.0096972
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0541995   -0.0880695   -0.0203295
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0853814   -0.2095997    0.0388368
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0704205   -0.1366087   -0.0042324
9 months    ki1114097-CMIN             PERU                           1                    NA                -0.2414607   -0.3670893   -0.1158321


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.2606061   -0.3695278    0.6008088
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4135819   -0.9702624   -0.0141867
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3400112   -0.6829167   -0.0669750
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5333384   -0.7796773   -0.3210971
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3469502   -0.6166808   -0.1222221
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.5571340   -0.7721089   -0.3682377
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4334496   -0.7607786   -0.1669711
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.2307692   -0.3651429   -0.1096222
12 months   ki1114097-CMIN             PERU                           1                    NA                -1.7032392   -2.6004303   -1.0296191
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1829787   -0.5227633    0.0809875
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7619072   -1.3909227   -0.2983761
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4104219   -0.6188664   -0.2288166
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3504544   -0.5861265   -0.1497994
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.4367079   -0.6190548   -0.2748980
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1172210   -0.2023735   -0.0380990
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.5666667   -1.7354880    0.1027398
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2170351   -0.0374059    0.4090701
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1110179   -0.1754033    0.3276443
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0162545   -0.3846753    0.3010959
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.2249663   -0.0218689    0.4121778
3 months    ki1114097-CMIN             PERU                           1                    NA                -1.0272919   -1.8353929   -0.4495037
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2322515   -1.0707810    0.2667289
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1656347   -0.9634044    0.3079856
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081967   -0.7370565    0.4337123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1196242   -0.1046873    0.2983883
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0559796   -0.4149402    0.2119152
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0263757   -0.3964174    0.2456074
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0160386   -0.2008355    0.1403198
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.3188239   -0.8659951    0.0678987
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3806341   -1.0608612    0.0750709
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0610906   -0.5981593    0.2954937
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0351351   -0.5535584    0.4007536
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2871495   -0.5217917   -0.0886863
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.3755252   -0.6249241   -0.1644049
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2171128   -0.5830256    0.0642201
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1590982   -0.3203142   -0.0175674
9 months    ki1114097-CMIN             PERU                           1                    NA                -1.7513542   -2.8264917   -0.9783004
