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
15 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       22    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       31    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       55    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1       42    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       47    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1       21    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0        4    222
15 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        0    222
15 months   ki0047075b-MAL-ED          BRAZIL                         1                      0       20    184
15 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1    184
15 months   ki0047075b-MAL-ED          BRAZIL                         2                      0       65    184
15 months   ki0047075b-MAL-ED          BRAZIL                         2                      1        3    184
15 months   ki0047075b-MAL-ED          BRAZIL                         3                      0       62    184
15 months   ki0047075b-MAL-ED          BRAZIL                         3                      1        1    184
15 months   ki0047075b-MAL-ED          BRAZIL                         4                      0       31    184
15 months   ki0047075b-MAL-ED          BRAZIL                         4                      1        1    184
15 months   ki0047075b-MAL-ED          INDIA                          1                      0       68    229
15 months   ki0047075b-MAL-ED          INDIA                          1                      1       57    229
15 months   ki0047075b-MAL-ED          INDIA                          2                      0       58    229
15 months   ki0047075b-MAL-ED          INDIA                          2                      1       23    229
15 months   ki0047075b-MAL-ED          INDIA                          3                      0       15    229
15 months   ki0047075b-MAL-ED          INDIA                          3                      1        6    229
15 months   ki0047075b-MAL-ED          INDIA                          4                      0        1    229
15 months   ki0047075b-MAL-ED          INDIA                          4                      1        1    229
15 months   ki0047075b-MAL-ED          NEPAL                          1                      0       55    231
15 months   ki0047075b-MAL-ED          NEPAL                          1                      1        9    231
15 months   ki0047075b-MAL-ED          NEPAL                          2                      0       70    231
15 months   ki0047075b-MAL-ED          NEPAL                          2                      1       18    231
15 months   ki0047075b-MAL-ED          NEPAL                          3                      0       54    231
15 months   ki0047075b-MAL-ED          NEPAL                          3                      1        3    231
15 months   ki0047075b-MAL-ED          NEPAL                          4                      0       20    231
15 months   ki0047075b-MAL-ED          NEPAL                          4                      1        2    231
15 months   ki0047075b-MAL-ED          PERU                           1                      0       11    230
15 months   ki0047075b-MAL-ED          PERU                           1                      1       13    230
15 months   ki0047075b-MAL-ED          PERU                           2                      0       32    230
15 months   ki0047075b-MAL-ED          PERU                           2                      1       35    230
15 months   ki0047075b-MAL-ED          PERU                           3                      0       64    230
15 months   ki0047075b-MAL-ED          PERU                           3                      1       27    230
15 months   ki0047075b-MAL-ED          PERU                           4                      0       35    230
15 months   ki0047075b-MAL-ED          PERU                           4                      1       13    230
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       13    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       16    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       35    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       22    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       53    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       21    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       64    242
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       18    242
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        6    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       26    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       28    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       36    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       32    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       40    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       27    232
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       37    232
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       14     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       11     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        7     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       16     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        6     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1        8     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        1     65
15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        2     65
15 months   ki1000108-IRC              INDIA                          1                      0        3      8
15 months   ki1000108-IRC              INDIA                          1                      1        1      8
15 months   ki1000108-IRC              INDIA                          2                      0        2      8
15 months   ki1000108-IRC              INDIA                          2                      1        1      8
15 months   ki1000108-IRC              INDIA                          3                      0        0      8
15 months   ki1000108-IRC              INDIA                          3                      1        1      8
15 months   ki1000108-IRC              INDIA                          4                      0        0      8
15 months   ki1000108-IRC              INDIA                          4                      1        0      8
15 months   ki1000109-EE               PAKISTAN                       1                      0        0    100
15 months   ki1000109-EE               PAKISTAN                       1                      1       36    100
15 months   ki1000109-EE               PAKISTAN                       2                      0        4    100
15 months   ki1000109-EE               PAKISTAN                       2                      1       24    100
15 months   ki1000109-EE               PAKISTAN                       3                      0       12    100
15 months   ki1000109-EE               PAKISTAN                       3                      1       10    100
15 months   ki1000109-EE               PAKISTAN                       4                      0        2    100
15 months   ki1000109-EE               PAKISTAN                       4                      1       12    100
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       74    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       67    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0       78    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       46    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                      0       84    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                      1       26    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                      0       76    456
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                      1        5    456
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      165   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       76   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      146   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       61   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      217   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       45   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      314   1068
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       44   1068
15 months   ki1101329-Keneba           GAMBIA                         1                      0      149    578
15 months   ki1101329-Keneba           GAMBIA                         1                      1       82    578
15 months   ki1101329-Keneba           GAMBIA                         2                      0      124    578
15 months   ki1101329-Keneba           GAMBIA                         2                      1       39    578
15 months   ki1101329-Keneba           GAMBIA                         3                      0      104    578
15 months   ki1101329-Keneba           GAMBIA                         3                      1       14    578
15 months   ki1101329-Keneba           GAMBIA                         4                      0       59    578
15 months   ki1101329-Keneba           GAMBIA                         4                      1        7    578
15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0        0     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1       11     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      0        5     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                      1        4     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      0        6     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                      1        5     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      0       11     49
15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                      1        7     49
15 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        2     18
15 months   ki1113344-GMS-Nepal        NEPAL                          1                      1        6     18
15 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        2     18
15 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        4     18
15 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        2     18
15 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0     18
15 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        2     18
15 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        0     18
15 months   ki1114097-CMIN             BANGLADESH                     1                      0       22    238
15 months   ki1114097-CMIN             BANGLADESH                     1                      1       84    238
15 months   ki1114097-CMIN             BANGLADESH                     2                      0       29    238
15 months   ki1114097-CMIN             BANGLADESH                     2                      1       43    238
15 months   ki1114097-CMIN             BANGLADESH                     3                      0       27    238
15 months   ki1114097-CMIN             BANGLADESH                     3                      1       12    238
15 months   ki1114097-CMIN             BANGLADESH                     4                      0       13    238
15 months   ki1114097-CMIN             BANGLADESH                     4                      1        8    238
15 months   ki1114097-CMIN             PERU                           1                      0        7    494
15 months   ki1114097-CMIN             PERU                           1                      1       14    494
15 months   ki1114097-CMIN             PERU                           2                      0       26    494
15 months   ki1114097-CMIN             PERU                           2                      1       16    494
15 months   ki1114097-CMIN             PERU                           3                      0       85    494
15 months   ki1114097-CMIN             PERU                           3                      1       39    494
15 months   ki1114097-CMIN             PERU                           4                      0      245    494
15 months   ki1114097-CMIN             PERU                           4                      1       62    494
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       15    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       24    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       47    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1       50    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       47    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1       29    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0        6    219
18 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        1    219
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
18 months   ki0047075b-MAL-ED          INDIA                          2                      0       53    228
18 months   ki0047075b-MAL-ED          INDIA                          2                      1       36    228
18 months   ki0047075b-MAL-ED          INDIA                          3                      0       27    228
18 months   ki0047075b-MAL-ED          INDIA                          3                      1        9    228
18 months   ki0047075b-MAL-ED          INDIA                          4                      0        2    228
18 months   ki0047075b-MAL-ED          INDIA                          4                      1        0    228
18 months   ki0047075b-MAL-ED          NEPAL                          1                      0       47    228
18 months   ki0047075b-MAL-ED          NEPAL                          1                      1       14    228
18 months   ki0047075b-MAL-ED          NEPAL                          2                      0       66    228
18 months   ki0047075b-MAL-ED          NEPAL                          2                      1       22    228
18 months   ki0047075b-MAL-ED          NEPAL                          3                      0       53    228
18 months   ki0047075b-MAL-ED          NEPAL                          3                      1        7    228
18 months   ki0047075b-MAL-ED          NEPAL                          4                      0       17    228
18 months   ki0047075b-MAL-ED          NEPAL                          4                      1        2    228
18 months   ki0047075b-MAL-ED          PERU                           1                      0       21    218
18 months   ki0047075b-MAL-ED          PERU                           1                      1       23    218
18 months   ki0047075b-MAL-ED          PERU                           2                      0       37    218
18 months   ki0047075b-MAL-ED          PERU                           2                      1       29    218
18 months   ki0047075b-MAL-ED          PERU                           3                      0       45    218
18 months   ki0047075b-MAL-ED          PERU                           3                      1       32    218
18 months   ki0047075b-MAL-ED          PERU                           4                      0       22    218
18 months   ki0047075b-MAL-ED          PERU                           4                      1        9    218
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       11    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       13    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       28    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       17    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       54    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       25    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       66    240
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       26    240
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        4    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       20    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0       18    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       44    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       20    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       51    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       24    223
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       42    223
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        8     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       11     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        6     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       23     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        7     75
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1       13     75
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
18 months   ki1000109-EE               PAKISTAN                       1                      0        4    112
18 months   ki1000109-EE               PAKISTAN                       1                      1       44    112
18 months   ki1000109-EE               PAKISTAN                       2                      0        4    112
18 months   ki1000109-EE               PAKISTAN                       2                      1       26    112
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
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      141    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       63    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0      125    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1       40    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0      170    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1       37    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0      237    855
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1       42    855
18 months   ki1101329-Keneba           GAMBIA                         1                      0      147    611
18 months   ki1101329-Keneba           GAMBIA                         1                      1       90    611
18 months   ki1101329-Keneba           GAMBIA                         2                      0      126    611
18 months   ki1101329-Keneba           GAMBIA                         2                      1       36    611
18 months   ki1101329-Keneba           GAMBIA                         3                      0       94    611
18 months   ki1101329-Keneba           GAMBIA                         3                      1       28    611
18 months   ki1101329-Keneba           GAMBIA                         4                      0       78    611
18 months   ki1101329-Keneba           GAMBIA                         4                      1       12    611
18 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        4     22
18 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       10     22
18 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        2     22
18 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        4     22
18 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        0     22
18 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        2     22
18 months   ki1114097-CMIN             BANGLADESH                     1                      0       21    233
18 months   ki1114097-CMIN             BANGLADESH                     1                      1       95    233
18 months   ki1114097-CMIN             BANGLADESH                     2                      0       16    233
18 months   ki1114097-CMIN             BANGLADESH                     2                      1       47    233
18 months   ki1114097-CMIN             BANGLADESH                     3                      0       17    233
18 months   ki1114097-CMIN             BANGLADESH                     3                      1       17    233
18 months   ki1114097-CMIN             BANGLADESH                     4                      0       12    233
18 months   ki1114097-CMIN             BANGLADESH                     4                      1        8    233
18 months   ki1114097-CMIN             PERU                           1                      0        4    447
18 months   ki1114097-CMIN             PERU                           1                      1        6    447
18 months   ki1114097-CMIN             PERU                           2                      0       17    447
18 months   ki1114097-CMIN             PERU                           2                      1       21    447
18 months   ki1114097-CMIN             PERU                           3                      0       51    447
18 months   ki1114097-CMIN             PERU                           3                      1       54    447
18 months   ki1114097-CMIN             PERU                           4                      0      235    447
18 months   ki1114097-CMIN             PERU                           4                      1       59    447
21 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       12    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       25    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     2                      0       41    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     2                      1       44    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     3                      0       46    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     3                      1       36    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     4                      0        8    214
21 months   ki0047075b-MAL-ED          BANGLADESH                     4                      1        2    214
21 months   ki0047075b-MAL-ED          BRAZIL                         1                      0       16    169
21 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1    169
21 months   ki0047075b-MAL-ED          BRAZIL                         2                      0       41    169
21 months   ki0047075b-MAL-ED          BRAZIL                         2                      1        4    169
21 months   ki0047075b-MAL-ED          BRAZIL                         3                      0       63    169
21 months   ki0047075b-MAL-ED          BRAZIL                         3                      1        0    169
21 months   ki0047075b-MAL-ED          BRAZIL                         4                      0       41    169
21 months   ki0047075b-MAL-ED          BRAZIL                         4                      1        3    169
21 months   ki0047075b-MAL-ED          INDIA                          1                      0       39    228
21 months   ki0047075b-MAL-ED          INDIA                          1                      1       54    228
21 months   ki0047075b-MAL-ED          INDIA                          2                      0       58    228
21 months   ki0047075b-MAL-ED          INDIA                          2                      1       43    228
21 months   ki0047075b-MAL-ED          INDIA                          3                      0       21    228
21 months   ki0047075b-MAL-ED          INDIA                          3                      1        9    228
21 months   ki0047075b-MAL-ED          INDIA                          4                      0        3    228
21 months   ki0047075b-MAL-ED          INDIA                          4                      1        1    228
21 months   ki0047075b-MAL-ED          NEPAL                          1                      0       45    229
21 months   ki0047075b-MAL-ED          NEPAL                          1                      1       17    229
21 months   ki0047075b-MAL-ED          NEPAL                          2                      0       64    229
21 months   ki0047075b-MAL-ED          NEPAL                          2                      1       20    229
21 months   ki0047075b-MAL-ED          NEPAL                          3                      0       52    229
21 months   ki0047075b-MAL-ED          NEPAL                          3                      1       12    229
21 months   ki0047075b-MAL-ED          NEPAL                          4                      0       15    229
21 months   ki0047075b-MAL-ED          NEPAL                          4                      1        4    229
21 months   ki0047075b-MAL-ED          PERU                           1                      0       14    210
21 months   ki0047075b-MAL-ED          PERU                           1                      1       22    210
21 months   ki0047075b-MAL-ED          PERU                           2                      0       33    210
21 months   ki0047075b-MAL-ED          PERU                           2                      1       30    210
21 months   ki0047075b-MAL-ED          PERU                           3                      0       49    210
21 months   ki0047075b-MAL-ED          PERU                           3                      1       24    210
21 months   ki0047075b-MAL-ED          PERU                           4                      0       26    210
21 months   ki0047075b-MAL-ED          PERU                           4                      1       12    210
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        7    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       14    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      0       17    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                      1       20    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      0       43    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                      1       28    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      0       79    239
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                      1       31    239
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        6    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       23    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      0        9    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                      1       33    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      0       30    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                      1       60    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      0       16    214
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                      1       37    214
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        6     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        8     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      0        3     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                      1       32     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      0        7     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                      1       21     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      0        1     80
21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                      1        2     80
21 months   ki1000108-IRC              INDIA                          1                      0        3     13
21 months   ki1000108-IRC              INDIA                          1                      1        1     13
21 months   ki1000108-IRC              INDIA                          2                      0        2     13
21 months   ki1000108-IRC              INDIA                          2                      1        4     13
21 months   ki1000108-IRC              INDIA                          3                      0        1     13
21 months   ki1000108-IRC              INDIA                          3                      1        2     13
21 months   ki1000108-IRC              INDIA                          4                      0        0     13
21 months   ki1000108-IRC              INDIA                          4                      1        0     13
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       65    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       80    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                      0       67    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                      1       41    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                      0       54    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                      1       26    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                      0       54    400
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                      1       13    400
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0        0      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        1      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      0        0      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                      1        0      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      0        0      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                      1        1      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      0        0      2
21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                      1        0      2
21 months   ki1101329-Keneba           GAMBIA                         1                      0      128    611
21 months   ki1101329-Keneba           GAMBIA                         1                      1       99    611
21 months   ki1101329-Keneba           GAMBIA                         2                      0      121    611
21 months   ki1101329-Keneba           GAMBIA                         2                      1       41    611
21 months   ki1101329-Keneba           GAMBIA                         3                      0      115    611
21 months   ki1101329-Keneba           GAMBIA                         3                      1       40    611
21 months   ki1101329-Keneba           GAMBIA                         4                      0       57    611
21 months   ki1101329-Keneba           GAMBIA                         4                      1       10    611
21 months   ki1113344-GMS-Nepal        NEPAL                          1                      0        2     30
21 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       14     30
21 months   ki1113344-GMS-Nepal        NEPAL                          2                      0        8     30
21 months   ki1113344-GMS-Nepal        NEPAL                          2                      1        0     30
21 months   ki1113344-GMS-Nepal        NEPAL                          3                      0        2     30
21 months   ki1113344-GMS-Nepal        NEPAL                          3                      1        0     30
21 months   ki1113344-GMS-Nepal        NEPAL                          4                      0        0     30
21 months   ki1113344-GMS-Nepal        NEPAL                          4                      1        4     30
21 months   ki1114097-CMIN             BANGLADESH                     1                      0       17    234
21 months   ki1114097-CMIN             BANGLADESH                     1                      1       97    234
21 months   ki1114097-CMIN             BANGLADESH                     2                      0       16    234
21 months   ki1114097-CMIN             BANGLADESH                     2                      1       48    234
21 months   ki1114097-CMIN             BANGLADESH                     3                      0       10    234
21 months   ki1114097-CMIN             BANGLADESH                     3                      1       25    234
21 months   ki1114097-CMIN             BANGLADESH                     4                      0       13    234
21 months   ki1114097-CMIN             BANGLADESH                     4                      1        8    234
21 months   ki1114097-CMIN             PERU                           1                      0        2    395
21 months   ki1114097-CMIN             PERU                           1                      1        5    395
21 months   ki1114097-CMIN             PERU                           2                      0       18    395
21 months   ki1114097-CMIN             PERU                           2                      1       19    395
21 months   ki1114097-CMIN             PERU                           3                      0       35    395
21 months   ki1114097-CMIN             PERU                           3                      1       45    395
21 months   ki1114097-CMIN             PERU                           4                      0      204    395
21 months   ki1114097-CMIN             PERU                           4                      1       67    395
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
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/31fc8fd2-27b0-4cb2-8243-711619ba8713/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31fc8fd2-27b0-4cb2-8243-711619ba8713/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31fc8fd2-27b0-4cb2-8243-711619ba8713/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31fc8fd2-27b0-4cb2-8243-711619ba8713/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2333333   0.0816734   0.3849933
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4202899   0.3035833   0.5369964
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3186813   0.2227473   0.4146153
12 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2222222   0.1111093   0.3333351
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3713983   0.2321046   0.5106921
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3198933   0.1966226   0.4431639
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2443062   0.1524626   0.3361498
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1621744   0.0789936   0.2453553
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6783811   0.5165209   0.8402413
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4616527   0.3400867   0.5832188
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5333299   0.4261341   0.6405258
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4226316   0.3013228   0.5439404
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4175371   0.3408002   0.4942740
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3091712   0.2368130   0.3815294
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1590067   0.0993122   0.2187011
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1384965   0.0696820   0.2073109
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2532524   0.2021830   0.3043218
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2280968   0.1795321   0.2766616
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1215669   0.0845812   0.1585525
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1123338   0.0824328   0.1422349
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3200873   0.2614789   0.3786957
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1499509   0.0962552   0.2036466
12 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1171914   0.0640994   0.1702835
12 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1766618   0.0976348   0.2556889
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.6931523   0.5339339   0.8523706
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.5736186   0.4281559   0.7190814
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4078832   0.2543157   0.5614507
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3405838   0.1946401   0.4865274
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6666667   0.5799513   0.7533820
12 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.5285714   0.4113882   0.6457547
12 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.3125000   0.1515685   0.4734315
12 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.2916667   0.1094402   0.4738931
12 months   ki1114097-CMIN             PERU                           1                    NA                0.5251995   0.3705729   0.6798261
12 months   ki1114097-CMIN             PERU                           2                    NA                0.3175800   0.2132371   0.4219228
12 months   ki1114097-CMIN             PERU                           3                    NA                0.1779489   0.1103568   0.2455410
12 months   ki1114097-CMIN             PERU                           4                    NA                0.1331531   0.0960048   0.1703015
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5708780   0.3749863   0.7667696
15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5291658   0.4099194   0.6484123
15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3006967   0.2069593   0.3944342
15 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2850551   0.1609554   0.4091548
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6335109   0.4569341   0.8100878
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4297340   0.3060714   0.5533966
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3133798   0.2111019   0.4156577
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2357809   0.1462947   0.3252671
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8125000   0.6769737   0.9480263
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5625000   0.4407002   0.6842998
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5555556   0.4405305   0.6705806
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.5781250   0.4568702   0.6993798
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4751773   0.3926592   0.5576954
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3709677   0.2858503   0.4560852
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2363636   0.1568829   0.3158444
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.0617284   0.0092611   0.1141957
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2946850   0.2378443   0.3515256
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2693023   0.2106480   0.3279566
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1607773   0.1166285   0.2049262
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1180930   0.0850766   0.1511094
15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3549784   0.2932185   0.4167382
15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2392638   0.1737118   0.3048158
15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1186441   0.0602482   0.1770399
15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1060606   0.0317102   0.1804110
15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7924528   0.7150860   0.8698196
15 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.5972222   0.4836958   0.7107486
15 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.3076923   0.1625353   0.4528493
15 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.3809524   0.1728150   0.5890898
15 months   ki1114097-CMIN             PERU                           1                    NA                0.6666667   0.4648429   0.8684904
15 months   ki1114097-CMIN             PERU                           2                    NA                0.3809524   0.2339377   0.5279671
15 months   ki1114097-CMIN             PERU                           3                    NA                0.3145161   0.2327078   0.3963244
15 months   ki1114097-CMIN             PERU                           4                    NA                0.2019544   0.1570013   0.2469075
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5227273   0.3748025   0.6706521
18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4393939   0.3193803   0.5594075
18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4155844   0.3052549   0.5259139
18 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2903226   0.1301690   0.4504761
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6055063   0.4121345   0.7988780
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4186519   0.2833341   0.5539696
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3292653   0.2275830   0.4309476
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2916519   0.2002752   0.3830286
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5031711   0.4188415   0.5875007
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3506014   0.2646666   0.4365362
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2989313   0.2052710   0.3925916
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1685743   0.0855599   0.2515886
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3045279   0.2417261   0.3673296
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2392830   0.1741138   0.3044522
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1805896   0.1286525   0.2325267
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1529102   0.1112941   0.1945263
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3774251   0.3157116   0.4391386
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2235247   0.1595627   0.2874867
18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2315516   0.1571272   0.3059760
18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1329880   0.0626027   0.2033733
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8189655   0.7487446   0.8891864
18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7460317   0.6383158   0.8537477
18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.5000000   0.3315727   0.6684273
18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.4000000   0.1848345   0.6151655
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5762973   0.4231319   0.7294627
21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4602043   0.3384737   0.5819349
21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3122948   0.2071691   0.4174204
21 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2969970   0.1489274   0.4450665
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6666667   0.4646242   0.8687091
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.5405405   0.3796259   0.7014551
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3943662   0.2804503   0.5082821
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2818182   0.1975693   0.3660670
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7931034   0.6453262   0.9408807
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7857143   0.6613289   0.9100997
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6666667   0.5690469   0.7642864
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.6981132   0.5742301   0.8219964
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5525942   0.4714893   0.6336991
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3783561   0.2868616   0.4698507
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3246557   0.2219629   0.4273486
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1945060   0.0996187   0.2893932
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4252866   0.3610140   0.4895591
21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2472935   0.1809222   0.3136647
21 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2414325   0.1735311   0.3093339
21 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1303113   0.0478643   0.2127583
21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8508772   0.7853486   0.9164058
21 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7500000   0.6436864   0.8563136
21 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.7142857   0.5643013   0.8642701
21 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.3809524   0.1728075   0.5890973
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3888889   0.1632801   0.6144977
3 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2285714   0.1300276   0.3271152
3 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2323232   0.1489863   0.3156601
3 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.2526316   0.1650992   0.3401640
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1093750   0.0711097   0.1476403
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1321839   0.0818168   0.1825510
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1869919   0.1180275   0.2559562
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2352941   0.0925916   0.3779966
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0609902   0.0416036   0.0803768
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0468771   0.0284445   0.0653096
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0699989   0.0476151   0.0923827
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0877851   0.0665201   0.1090501
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1349693   0.0824771   0.1874615
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1000000   0.0462862   0.1537138
3 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1459459   0.0950353   0.1968566
3 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1506276   0.1052483   0.1960069
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.2717106   0.1806192   0.3628019
3 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.2777291   0.1740680   0.3813901
3 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.4159039   0.2759071   0.5559007
3 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.6089053   0.4498268   0.7679838
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1049869   0.0779457   0.1320280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1463007   0.1119571   0.1806443
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1097034   0.0817421   0.1376648
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1183622   0.0915612   0.1451632
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1185337   0.0753670   0.1617004
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0721405   0.0371463   0.1071348
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1181649   0.0683406   0.1679892
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1646342   0.1080077   0.2212607
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3076923   0.1952491   0.4201355
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3529412   0.2391128   0.4667696
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3061224   0.1768003   0.4354446
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.2156863   0.1025627   0.3288099
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3826087   0.2935929   0.4716245
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4576271   0.3302365   0.5850177
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.2500000   0.1155288   0.3844712
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3600000   0.1714486   0.5485514
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3376478   0.2036360   0.4716597
9 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2158386   0.1261647   0.3055124
9 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2918133   0.1928005   0.3908260
9 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.3028158   0.1921304   0.4135012
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3247883   0.1792668   0.4703097
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2216375   0.1105297   0.3327453
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2238710   0.1351408   0.3126012
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2091058   0.1146658   0.3035458
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5006695   0.3100545   0.6912844
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4857675   0.3615466   0.6099883
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3207060   0.2173845   0.4240276
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3977261   0.2837051   0.5117470
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2432432   0.1044149   0.3820716
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2121212   0.0720511   0.3521913
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3214286   0.1477119   0.4951453
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2380952   0.0551603   0.4210302
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1786492   0.1418978   0.2154007
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1501912   0.1143504   0.1860320
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1155455   0.0841606   0.1469303
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1024869   0.0758134   0.1291605
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1985294   0.1510899   0.2459689
9 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1437908   0.0881520   0.1994297
9 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0945946   0.0474109   0.1417783
9 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0754717   0.0251486   0.1257948
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4787950   0.3376160   0.6199740
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3959428   0.2772245   0.5146610
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4157199   0.2850661   0.5463737
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3610525   0.2342552   0.4878498
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.5130435   0.4215030   0.6045839
9 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4067797   0.2811762   0.5323831
9 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.3863636   0.2421962   0.5305311
9 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3076923   0.1299212   0.4854634
9 months    ki1114097-CMIN             PERU                           1                    NA                0.3824524   0.2485911   0.5163137
9 months    ki1114097-CMIN             PERU                           2                    NA                0.2582727   0.1617713   0.3547742
9 months    ki1114097-CMIN             PERU                           3                    NA                0.1241245   0.0671767   0.1810724
9 months    ki1114097-CMIN             PERU                           4                    NA                0.0782810   0.0488105   0.1077516


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
15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3826087   0.3196598   0.4455576
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3181818   0.2593772   0.3769865
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5991379   0.5359400   0.6623359
15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3157895   0.2730788   0.3585001
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2116105   0.1871027   0.2361183
15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2456747   0.2105495   0.2808000
15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6176471   0.5557776   0.6795165
15 months   ki1114097-CMIN             PERU                           NA                   NA                0.2651822   0.2262161   0.3041483
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4266055   0.3608006   0.4924104
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3375000   0.2775514   0.3974486
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3574879   0.3112664   0.4037095
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2128655   0.1854121   0.2403189
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2716858   0.2363857   0.3069859
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7167382   0.6587582   0.7747182
21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4190476   0.3521552   0.4859400
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3891213   0.3271801   0.4510625
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4000000   0.3519308   0.4480692
21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3109656   0.2742323   0.3476989
21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7606838   0.7058992   0.8154683
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
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8613212   0.5049013   1.4693450
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6578011   0.3873491   1.1170860
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4366590   0.2322083   0.8211210
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6805212   0.4769329   0.9710154
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7861804   0.5762286   1.0726293
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6230002   0.4284963   0.9057938
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7404640   0.5501738   0.9965704
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.3808204   0.2506960   0.5784862
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3316986   0.1953391   0.5632457
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9006700   0.6717473   1.2076065
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.4800225   0.3332781   0.6913793
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4435647   0.3176513   0.6193889
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.4684689   0.3134451   0.7001645
12 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.3661233   0.2246489   0.5966925
12 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.5519177   0.3402802   0.8951833
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8275507   0.5890836   1.1625517
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.5884467   0.3790943   0.9134127
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.4913549   0.3023291   0.7985656
12 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928571   0.6131466   1.0252400
12 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.4687500   0.2755904   0.7972939
12 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4375000   0.2311123   0.8281957
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 0.6046844   0.3889975   0.9399629
12 months   ki1114097-CMIN             PERU                           3                    1                 0.3388215   0.2095649   0.5478015
12 months   ki1114097-CMIN             PERU                           4                    1                 0.2535287   0.1689793   0.3803826
15 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.9269334   0.6147699   1.3976050
15 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5267268   0.3314030   0.8371715
15 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.4993276   0.2868378   0.8692301
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6783372   0.4542182   1.0130402
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.4946715   0.3227627   0.7581418
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.3721813   0.2320600   0.5969098
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6923077   0.5267366   0.9099234
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6837607   0.5241256   0.8920165
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7115385   0.5442727   0.9302083
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7806933   0.5854774   1.0410002
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.4974220   0.3406924   0.7262523
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.1299060   0.0545589   0.3093090
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9138650   0.6838097   1.2213182
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5455905   0.3901886   0.7628849
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4007432   0.2855469   0.5624125
15 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6740236   0.4872208   0.9324477
15 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.3342290   0.1983014   0.5633295
15 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.2987805   0.1451001   0.6152289
15 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.7536376   0.6086330   0.9331889
15 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.3882784   0.2398386   0.6285899
15 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4807256   0.2759671   0.8374081
15 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1114097-CMIN             PERU                           2                    1                 0.5714286   0.3499015   0.9332071
15 months   ki1114097-CMIN             PERU                           3                    1                 0.4717742   0.3165148   0.7031928
15 months   ki1114097-CMIN             PERU                           4                    1                 0.3029316   0.2080436   0.4410978
18 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8405797   0.5672461   1.2456221
18 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.7950311   0.5393469   1.1719255
18 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.5553997   0.2987771   1.0324382
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6914080   0.4386466   1.0898181
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5437851   0.3488760   0.8475857
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4816662   0.3078908   0.7535215
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6967836   0.5177427   0.9377388
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.5940948   0.4164582   0.8475006
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3350237   0.1991641   0.5635600
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7857506   0.5585222   1.1054245
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5930150   0.4164529   0.8444335
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5021223   0.3571461   0.7059486
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5922359   0.4260595   0.8232262
18 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.6135034   0.4278927   0.8796281
18 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.3523560   0.2024930   0.6131312
18 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.9109440   0.7701272   1.0775090
18 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.6105263   0.4312661   0.8642979
18 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4884211   0.2832906   0.8420863
21 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.7985536   0.5500652   1.1592950
21 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5418987   0.3524259   0.8332369
21 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.5153537   0.2926837   0.9074282
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8108108   0.5301815   1.2399795
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5915493   0.3891919   0.8991209
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4227273   0.2761740   0.6470499
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9906832   0.7758009   1.2650840
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8405797   0.6632231   1.0653644
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8802297   0.6805311   1.1385288
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6846907   0.5160146   0.9085041
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.5875120   0.4145470   0.8326448
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3519870   0.2114703   0.5858735
21 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5814749   0.4277050   0.7905288
21 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.5676937   0.4125851   0.7811143
21 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.3064082   0.1598322   0.5874033
21 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.8814433   0.7501248   1.0357506
21 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.8394698   0.6712321   1.0498747
21 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4477172   0.2578507   0.7773907
3 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.5877551   0.2852929   1.2108821
3 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.5974026   0.3020256   1.1816545
3 months    ki0047075b-MAL-ED          PERU                           4                    1                 0.6496241   0.3305194   1.2768129
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.2085386   0.7204517   2.0272915
3 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.7096400   1.0283282   2.8423500
3 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 2.1512605   1.0681145   4.3327956
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7686003   0.4635410   1.2744213
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1477083   0.7313316   1.8011450
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.4393331   0.9657406   2.1451719
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7409091   0.3817332   1.4380366
3 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0813268   0.6413051   1.8232625
3 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.1160137   0.6823632   1.8252545
3 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.0221505   0.6189089   1.6881187
3 months    ki1114097-CMIN             BANGLADESH                     3                    1                 1.5306873   0.9519158   2.4613561
3 months    ki1114097-CMIN             BANGLADESH                     4                    1                 2.2410071   1.4651753   3.4276532
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3935141   0.9838734   1.9737108
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0449252   0.7277642   1.5003057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1274000   0.8006261   1.5875460
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6086076   0.3320967   1.1153474
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.9968886   0.5711538   1.7399639
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.3889233   0.8420731   2.2909030
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.1470588   0.7045457   1.8675069
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.9948980   0.5691017   1.7392709
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.7009804   0.3699026   1.3283863
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.1960709   0.8321422   1.7191600
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.6534091   0.3636380   1.1740893
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.9409091   0.5304597   1.6689485
9 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.6392417   0.3605715   1.1332838
9 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.8642533   0.5125826   1.4571968
9 months    ki0047075b-MAL-ED          PERU                           4                    1                 0.8968391   0.5231578   1.5374338
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6824061   0.3485288   1.3361254
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6892829   0.3790558   1.2534061
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.6438218   0.3409951   1.2155792
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9702359   0.6136111   1.5341274
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6405544   0.3891610   1.0543451
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7943885   0.4935638   1.2785644
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8720539   0.3643269   2.0873503
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.3214286   0.6021137   2.9000727
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.9788360   0.3758722   2.5490573
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8407042   0.6142703   1.1506068
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6467729   0.4604250   0.9085413
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5736769   0.4121714   0.7984669
9 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7242798   0.4596195   1.1413383
9 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.4764765   0.2740571   0.8284035
9 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.3801537   0.1872174   0.7719200
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8269568   0.5422615   1.2611214
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.8682628   0.5664865   1.3308001
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.7540858   0.4773204   1.1913285
9 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928756   0.5550433   1.1326175
9 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.7530817   0.4979845   1.1388547
9 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.5997392   0.3276071   1.0979225
9 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             PERU                           2                    1                 0.6753069   0.4045627   1.1272404
9 months    ki1114097-CMIN             PERU                           3                    1                 0.3245490   0.1821938   0.5781321
9 months    ki1114097-CMIN             PERU                           4                    1                 0.2046818   0.1224065   0.3422582


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0822404   -0.0618403    0.2263211
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1073983   -0.2305379    0.0157413
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1718876   -0.3240574   -0.0197178
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1461346   -0.2084904   -0.0837787
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0818017   -0.1252841   -0.0383192
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1144952   -0.1564020   -0.0725884
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1996458   -0.3440164   -0.0552751
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1250000   -0.1910783   -0.0589217
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.3305567   -0.4777138   -0.1833995
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1882693   -0.3732483   -0.0032902
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3153291   -0.4802952   -0.1503631
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2133621   -0.3448706   -0.0818536
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1593878   -0.2258894   -0.0928862
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0830745   -0.1311425   -0.0350064
15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1093036   -0.1540169   -0.0645903
15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1748058   -0.2417514   -0.1078601
15 months   ki1114097-CMIN             PERU                           1                    NA                -0.4014845   -0.5984313   -0.2045376
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0961218   -0.2279513    0.0357078
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2680063   -0.4507716   -0.0852409
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1456832   -0.2137978   -0.0775686
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0916624   -0.1444722   -0.0388525
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1057393   -0.1514588   -0.0600199
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1022273   -0.1603896   -0.0440651
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1572497   -0.2969843   -0.0175151
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2775453   -0.4711539   -0.0839368
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0781502   -0.2181317    0.0618314
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1525942   -0.2167886   -0.0883998
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1143209   -0.1631442   -0.0654977
21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0901934   -0.1459738   -0.0344130
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1406619   -0.3573475    0.0760236
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0303184   -0.0009051    0.0615418
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0073047   -0.0096970    0.0243065
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0022301   -0.0439109    0.0483711
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0790959    0.0037057    0.1544861
3 months    ki1114097-CMIN             PERU                           1                    NA                -0.0753815   -0.1283958   -0.0223672
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0498911   -0.1874493    0.0876671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0336549   -0.1572597    0.0899500
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020661   -0.1380398    0.1421720
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0134965   -0.0102439    0.0372369
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0035604   -0.0393530    0.0322321
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0072631   -0.1024955    0.0879692
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0060397   -0.0699742    0.0578949
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0746996   -0.1958066    0.0464073
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0887883   -0.2198877    0.0423112
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0938898   -0.2732243    0.0854447
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0088576   -0.1070143    0.1247295
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0396764   -0.0702191   -0.0091338
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0541995   -0.0880695   -0.0203295
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0855366   -0.2098574    0.0387843
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0704205   -0.1366087   -0.0042324
9 months    ki1114097-CMIN             PERU                           1                    NA                -0.2445815   -0.3697663   -0.1193967


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.2606061   -0.3695278    0.6008088
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4068118   -0.9596845   -0.0099174
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3393678   -0.6831409   -0.0658086
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5384421   -0.7886721   -0.3232185
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4771147   -0.7503088   -0.2465617
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.5569046   -0.7721106   -0.3678333
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4045454   -0.7446015   -0.1307727
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.2307692   -0.3651429   -0.1096222
12 months   ki1114097-CMIN             PERU                           1                    NA                -1.6982728   -2.5962244   -1.0245334
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.4920674   -1.0714612   -0.0747318
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.9910343   -1.6183556   -0.5140105
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3561151   -0.6057062   -0.1453205
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5047281   -0.7356725   -0.3045127
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3925820   -0.6374000   -0.1843683
15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.4449119   -0.6381306   -0.2744835
15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.2830189   -0.4082404   -0.1689321
15 months   ki1114097-CMIN             PERU                           1                    NA                -1.5139949   -2.4140463   -0.8512258
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2253177   -0.5788641    0.0490610
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7940926   -1.4474156   -0.3151703
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4075192   -0.6166312   -0.2254559
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4306116   -0.6997555   -0.2040847
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3891972   -0.5683203   -0.2305323
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1426285   -0.2308492   -0.0607311
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.3752549   -0.7616076   -0.0736365
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7132616   -1.3108618   -0.2702038
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1093081   -0.3246330    0.0710148
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.3814855   -0.5577086   -0.2251985
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3676321   -0.5353327   -0.2182489
21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1185689   -0.1975391   -0.0448063
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.5666667   -1.7354880    0.1027398
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2170351   -0.0374059    0.4090701
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1069587   -0.1794168    0.3237991
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0162545   -0.3846753    0.3010959
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.2254688   -0.0214823    0.4127176
3 months    ki1114097-CMIN             PERU                           1                    NA                -1.0272919   -1.8353929   -0.4495037
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2322515   -1.0707810    0.2667289
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1656347   -0.9634044    0.3079856
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081967   -0.7370565    0.4337123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1139108   -0.1104210    0.2929222
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0309676   -0.3941745    0.2376176
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0241758   -0.3956903    0.2484464
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0160386   -0.2008355    0.1403198
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2840850   -0.8414753    0.1045906
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3762215   -1.0591111    0.0801926
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2308124   -0.7625104    0.1404878
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0351351   -0.5535584    0.4007536
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2854976   -0.5227508   -0.0852098
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.3755252   -0.6249241   -0.1644049
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2175072   -0.5837250    0.0640270
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1590982   -0.3203142   -0.0175674
9 months    ki1114097-CMIN             PERU                           1                    NA                -1.7739899   -2.8458373   -1.0008699
