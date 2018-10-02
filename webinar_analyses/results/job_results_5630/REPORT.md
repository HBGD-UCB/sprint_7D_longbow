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
![](/tmp/7ffb28e4-05d4-4282-9e5a-d6278b30ca60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ffb28e4-05d4-4282-9e5a-d6278b30ca60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ffb28e4-05d4-4282-9e5a-d6278b30ca60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ffb28e4-05d4-4282-9e5a-d6278b30ca60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2333333   0.0816734   0.3849933
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4202899   0.3035833   0.5369964
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3186813   0.2227473   0.4146153
12 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2222222   0.1111093   0.3333351
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3711935   0.2318344   0.5105526
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3193722   0.1961988   0.4425455
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2447974   0.1529937   0.3366010
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1620871   0.0789668   0.2452074
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6790204   0.5173265   0.8407142
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4619044   0.3408678   0.5829411
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5328004   0.4259687   0.6396322
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4218406   0.3009621   0.5427191
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4174093   0.3408024   0.4940161
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3091694   0.2369213   0.3814176
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1588599   0.0992164   0.2185034
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1386281   0.0698590   0.2073971
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2306454   0.1806387   0.2806520
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2136959   0.1657014   0.2616904
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1083347   0.0720931   0.1445763
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1065561   0.0769096   0.1362026
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3199143   0.2614306   0.3783980
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1506277   0.0969467   0.2043088
12 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.1171881   0.0642745   0.1701018
12 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1759706   0.0976494   0.2542919
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7107283   0.5579330   0.8635235
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.5880867   0.4474811   0.7286922
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4257512   0.2787399   0.5727625
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3607338   0.2203189   0.5011487
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6666667   0.5799513   0.7533820
12 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.5285714   0.4113882   0.6457547
12 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.3125000   0.1515685   0.4734315
12 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.2916667   0.1094402   0.4738931
12 months   ki1114097-CMIN             PERU                           1                    NA                0.5249704   0.3660090   0.6839318
12 months   ki1114097-CMIN             PERU                           2                    NA                0.3174235   0.2131901   0.4216570
12 months   ki1114097-CMIN             PERU                           3                    NA                0.1780580   0.1108320   0.2452839
12 months   ki1114097-CMIN             PERU                           4                    NA                0.1331635   0.0960793   0.1702476
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5673106   0.3803960   0.7542251
15 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5288062   0.4106426   0.6469698
15 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2990988   0.2061220   0.3920755
15 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.2896446   0.1659591   0.4133301
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6171232   0.4558282   0.7784182
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4370918   0.3199579   0.5542257
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3095258   0.2106303   0.4084213
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2328585   0.1458047   0.3199123
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8125000   0.6769737   0.9480263
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5625000   0.4407002   0.6842998
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5555556   0.4405305   0.6705806
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.5781250   0.4568702   0.6993798
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4751773   0.3926592   0.5576954
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3709677   0.2858503   0.4560852
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2363636   0.1568829   0.3158444
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.0617284   0.0092611   0.1141957
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2972084   0.2411029   0.3533138
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2711898   0.2131564   0.3292232
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1611911   0.1175012   0.2048809
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1178374   0.0851268   0.1505481
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
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6160757   0.4380903   0.7940612
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.4377378   0.3084700   0.5670056
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3328167   0.2322494   0.4333841
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2923887   0.2019018   0.3828755
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5032666   0.4189912   0.5875419
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3507515   0.2648619   0.4366410
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2987416   0.2052149   0.3922682
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1684702   0.0856426   0.2512978
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3051082   0.2429614   0.3672549
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2401226   0.1757124   0.3045328
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1806243   0.1291293   0.2321193
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1528767   0.1114914   0.1942619
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3745571   0.3129607   0.4361534
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2203622   0.1563760   0.2843484
18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2223536   0.1478885   0.2968187
18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1287994   0.0581920   0.1994067
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8189655   0.7487446   0.8891864
18 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7460317   0.6383158   0.8537477
18 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.5000000   0.3315727   0.6684273
18 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.4000000   0.1848345   0.6151655
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6061277   0.4495275   0.7627279
21 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4761407   0.3535622   0.5987191
21 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3282867   0.2210544   0.4355190
21 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.3185160   0.1715905   0.4654414
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6666667   0.4646242   0.8687091
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.5405405   0.3796259   0.7014551
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.3943662   0.2804503   0.5082821
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2818182   0.1975693   0.3660670
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7931034   0.6453262   0.9408807
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7857143   0.6613289   0.9100997
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6666667   0.5690469   0.7642864
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.6981132   0.5742301   0.8219964
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5384918   0.4585875   0.6183961
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3606857   0.2717335   0.4496378
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3106967   0.2103246   0.4110687
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.1726336   0.0795228   0.2657443
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4259803   0.3622025   0.4897581
21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2496509   0.1841183   0.3151835
21 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2420343   0.1750434   0.3090253
21 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1280015   0.0497368   0.2062663
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
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0605589   0.0411431   0.0799746
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0469483   0.0284059   0.0654908
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0703491   0.0478257   0.0928726
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0879433   0.0665262   0.1093604
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1349693   0.0824771   0.1874615
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1000000   0.0462862   0.1537138
3 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1459459   0.0950353   0.1968566
3 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1506276   0.1052483   0.1960069
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.2726977   0.1812730   0.3641225
3 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.2769035   0.1733200   0.3804871
3 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.4193441   0.2793525   0.5593358
3 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.6031849   0.4448741   0.7614956
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1049906   0.0779857   0.1319955
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1462719   0.1120082   0.1805356
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1098270   0.0819120   0.1377420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1183523   0.0915900   0.1451146
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1221712   0.0792363   0.1651060
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0729656   0.0381297   0.1078015
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1212189   0.0716556   0.1707823
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1692157   0.1130240   0.2254074
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3088074   0.1965798   0.4210350
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3531891   0.2393252   0.4670529
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3087045   0.1799842   0.4374247
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.2191002   0.1064653   0.3317351
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3826087   0.2935929   0.4716245
6 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4576271   0.3302365   0.5850177
6 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.2500000   0.1155288   0.3844712
6 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3600000   0.1714486   0.5485514
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3454823   0.2147065   0.4762581
9 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2176860   0.1283494   0.3070226
9 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2926028   0.1943242   0.3908814
9 months    ki0047075b-MAL-ED          PERU                           4                    NA                0.3040537   0.1933615   0.4147458
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3250000   0.1795606   0.4704394
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2222222   0.1111148   0.3333296
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.2235294   0.1347855   0.3122734
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.2112676   0.1161260   0.3064092
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5002388   0.3087343   0.6917434
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4852082   0.3604260   0.6099904
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3207782   0.2171600   0.4243964
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3984618   0.2839329   0.5129907
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2432432   0.1044149   0.3820716
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2121212   0.0720511   0.3521913
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3214286   0.1477119   0.4951453
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2380952   0.0551603   0.4210302
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1789612   0.1427734   0.2151491
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1489691   0.1137152   0.1842229
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1151352   0.0843316   0.1459388
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1022470   0.0758164   0.1286776
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1985294   0.1510899   0.2459689
9 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1437908   0.0881520   0.1994297
9 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0945946   0.0474109   0.1417783
9 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0754717   0.0251486   0.1257948
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4803651   0.3354243   0.6253060
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3975521   0.2741711   0.5209330
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4202158   0.2835579   0.5568736
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.3640200   0.2331047   0.4949354
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.5130435   0.4215030   0.6045839
9 months    ki1114097-CMIN             BANGLADESH                     2                    NA                0.4067797   0.2811762   0.5323831
9 months    ki1114097-CMIN             BANGLADESH                     3                    NA                0.3863636   0.2421962   0.5305311
9 months    ki1114097-CMIN             BANGLADESH                     4                    NA                0.3076923   0.1299212   0.4854634
9 months    ki1114097-CMIN             PERU                           1                    NA                0.3825011   0.2486454   0.5163568
9 months    ki1114097-CMIN             PERU                           2                    NA                0.2582488   0.1617601   0.3547374
9 months    ki1114097-CMIN             PERU                           3                    NA                0.1241253   0.0671789   0.1810717
9 months    ki1114097-CMIN             PERU                           4                    NA                0.0782807   0.0488102   0.1077511


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
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8603927   0.5041201   1.4684507
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6594873   0.3884956   1.1195069
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4366646   0.2321954   0.8211878
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6802512   0.4773357   0.9694261
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7846604   0.5755416   1.0697611
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6212488   0.4275153   0.9027748
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7406865   0.5506138   0.9963726
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.3805854   0.2505651   0.5780745
12 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3321155   0.1957550   0.5634631
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9265128   0.6777517   1.2665788
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.4697026   0.3153245   0.6996618
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4619910   0.3246201   0.6574938
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.4708378   0.3155583   0.7025272
12 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.3663111   0.2251105   0.5960796
12 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.5500555   0.3398693   0.8902279
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8274423   0.6011258   1.1389643
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.5990352   0.3991278   0.8990682
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.5075551   0.3253659   0.7917616
12 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928571   0.6131466   1.0252400
12 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.4687500   0.2755904   0.7972939
12 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4375000   0.2311123   0.8281957
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 0.6046503   0.3868269   0.9451307
12 months   ki1114097-CMIN             PERU                           3                    1                 0.3391771   0.2090483   0.5503089
12 months   ki1114097-CMIN             PERU                           4                    1                 0.2536590   0.1681021   0.3827609
15 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.9321283   0.6259298   1.3881160
15 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5272223   0.3352478   0.8291281
15 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.5105574   0.2977147   0.8755660
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.7082732   0.4887927   1.0263062
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5015625   0.3327448   0.7560295
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.3773290   0.2392529   0.5950907
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6923077   0.5267366   0.9099234
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6837607   0.5241256   0.8920165
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7115385   0.5442727   0.9302083
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7806933   0.5854774   1.0410002
15 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.4974220   0.3406924   0.7262523
15 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.1299060   0.0545589   0.3093090
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9124568   0.6869229   1.2120392
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5423503   0.3898774   0.7544522
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.3964808   0.2836957   0.5541044
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
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.7105259   0.4697313   1.0747573
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5402204   0.3557853   0.8202647
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4745986   0.3107076   0.7249382
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6969497   0.5180076   0.9377059
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.5936050   0.4162333   0.8465609
18 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3347534   0.1991639   0.5626514
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7870080   0.5623360   1.1014440
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5920010   0.4173652   0.8397086
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5010573   0.3574005   0.7024567
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5883274   0.4215168   0.8211514
18 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.5936442   0.4087901   0.8620890
18 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.3438712   0.1940057   0.6095045
18 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             BANGLADESH                     2                    1                 0.9109440   0.7701272   1.0775090
18 months   ki1114097-CMIN             BANGLADESH                     3                    1                 0.6105263   0.4312661   0.8642979
18 months   ki1114097-CMIN             BANGLADESH                     4                    1                 0.4884211   0.2832906   0.8420863
21 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.7855451   0.5459412   1.1303069
21 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5416131   0.3572400   0.8211419
21 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.5254932   0.3098833   0.8911194
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8108108   0.5301815   1.2399795
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5915493   0.3891919   0.8991209
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.4227273   0.2761740   0.6470499
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9906832   0.7758009   1.2650840
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8405797   0.6632231   1.0653644
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8802297   0.6805311   1.1385288
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6698071   0.5021923   0.8933662
21 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.5769756   0.4042065   0.8235911
21 months   ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.3205871   0.1832087   0.5609783
21 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
21 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5860620   0.4336864   0.7919747
21 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.5681820   0.4148646   0.7781593
21 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.3004870   0.1600955   0.5639911
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
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7752515   0.4661539   1.2893056
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1616654   0.7385577   1.8271648
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.4521950   0.9712624   2.1712674
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7409091   0.3817332   1.4380366
3 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0813268   0.6413051   1.8232625
3 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.1160137   0.6823632   1.8252545
3 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.0154229   0.6144466   1.6780688
3 months    ki1114097-CMIN             BANGLADESH                     3                    1                 1.5377617   0.9582196   2.4678174
3 months    ki1114097-CMIN             BANGLADESH                     4                    1                 2.2119174   1.4450296   3.3857982
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3931908   0.9842978   1.9719444
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0460651   0.7291812   1.5006589
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1272655   0.8009957   1.5864350
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.5972407   0.3303876   1.0796301
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.9922056   0.5787685   1.7009772
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.3850708   0.8542747   2.2456724
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.1437196   0.7036993   1.8588827
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.9996668   0.5753287   1.7369785
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.7095044   0.3780704   1.3314889
6 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     2                    1                 1.1960709   0.8321422   1.7191600
6 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.6534091   0.3636380   1.1740893
6 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.9409091   0.5304597   1.6689485
9 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.6300931   0.3609333   1.0999742
9 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.8469401   0.5104319   1.4052951
9 months    ki0047075b-MAL-ED          PERU                           4                    1                 0.8800848   0.5204902   1.4881147
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6837607   0.3495355   1.3375713
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.6877828   0.3781315   1.2510070
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.6500542   0.3445302   1.2265119
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9699531   0.6116989   1.5380264
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6412501   0.3887440   1.0577699
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7965431   0.4937805   1.2849454
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8720539   0.3643269   2.0873503
9 months    ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.3214286   0.6021137   2.9000727
9 months    ki1017093b-PROVIDE         BANGLADESH                     4                    1                 0.9788360   0.3758722   2.5490573
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8324097   0.6106949   1.1346188
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6433527   0.4605733   0.8986684
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5713360   0.4120041   0.7922853
9 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7242798   0.4596195   1.1413383
9 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.4764765   0.2740571   0.8284035
9 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.3801537   0.1872174   0.7719200
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8276039   0.5358749   1.2781496
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.8747841   0.5627555   1.3598217
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.7577986   0.4741401   1.2111583
9 months    ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             BANGLADESH                     2                    1                 0.7928756   0.5550433   1.1326175
9 months    ki1114097-CMIN             BANGLADESH                     3                    1                 0.7530817   0.4979845   1.1388547
9 months    ki1114097-CMIN             BANGLADESH                     4                    1                 0.5997392   0.3276071   1.0979225
9 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             PERU                           2                    1                 0.6751582   0.4044925   1.1269397
9 months    ki1114097-CMIN             PERU                           3                    1                 0.3245097   0.1821799   0.5780363
9 months    ki1114097-CMIN             PERU                           4                    1                 0.2046547   0.1223953   0.3421991


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0822404   -0.0618403    0.2263211
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1071935   -0.2303995    0.0160125
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1725269   -0.3245160   -0.0205377
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1460067   -0.2082419   -0.0837716
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0591946   -0.1017588   -0.0166305
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1143222   -0.1561285   -0.0725159
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2172218   -0.3567203   -0.0777233
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1250000   -0.1910783   -0.0589217
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.3303276   -0.4817082   -0.1789469
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1847019   -0.3612595   -0.0081442
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2989414   -0.4492105   -0.1486722
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2133621   -0.3448706   -0.0818536
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1593878   -0.2258894   -0.0928862
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0855979   -0.1330038   -0.0381920
15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1093036   -0.1540169   -0.0645903
15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1748058   -0.2417514   -0.1078601
15 months   ki1114097-CMIN             PERU                           1                    NA                -0.4014845   -0.5984313   -0.2045376
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0961218   -0.2279513    0.0357078
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2785757   -0.4470651   -0.1100864
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1457787   -0.2138507   -0.0777066
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0922427   -0.1444225   -0.0400628
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1028713   -0.1484912   -0.0572513
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1022273   -0.1603896   -0.0440651
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1870801   -0.3298246   -0.0443356
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2775453   -0.4711539   -0.0839368
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0781502   -0.2181317    0.0618314
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1384918   -0.2017771   -0.0752065
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1150147   -0.1634047   -0.0666247
21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0901934   -0.1459738   -0.0344130
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1406619   -0.3573475    0.0760236
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0303184   -0.0009051    0.0615418
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0077360   -0.0092900    0.0247620
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0022301   -0.0439109    0.0483711
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0781087    0.0024420    0.1537754
3 months    ki1114097-CMIN             PERU                           1                    NA                -0.0753815   -0.1283958   -0.0223672
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0498911   -0.1874493    0.0876671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0336549   -0.1572597    0.0899500
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020661   -0.1380398    0.1421720
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0134928   -0.0102109    0.0371966
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0071979   -0.0428072    0.0284114
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0083782   -0.1033838    0.0866274
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0060397   -0.0699742    0.0578949
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0825341   -0.2008668    0.0357987
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0890000   -0.2200169    0.0420169
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0934592   -0.2736657    0.0867473
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0088576   -0.1070143    0.1247295
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0399884   -0.0700179   -0.0099589
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0541995   -0.0880695   -0.0203295
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0871067   -0.2144915    0.0402781
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0704205   -0.1366087   -0.0042324
9 months    ki1114097-CMIN             PERU                           1                    NA                -0.2446302   -0.3698103   -0.1194502


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.2606061   -0.3695278    0.6008088
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4060359   -0.9592768   -0.0090137
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3406300   -0.6839617   -0.0672978
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5379711   -0.7877707   -0.3230751
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3452574   -0.6144986   -0.1209161
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.5560631   -0.7709160   -0.3672767
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4401599   -0.7720730   -0.1704149
12 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.2307692   -0.3651429   -0.1096222
12 months   ki1114097-CMIN             PERU                           1                    NA                -1.6970958   -2.6196558   -1.0096733
15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.4827435   -1.0343145   -0.0807219
15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.9395300   -1.5142876   -0.4961600
15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3561151   -0.6057062   -0.1453205
15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5047281   -0.7356725   -0.3045127
15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4045069   -0.6460383   -0.1984166
15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.4449119   -0.6381306   -0.2744835
15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.2830189   -0.4082404   -0.1689321
15 months   ki1114097-CMIN             PERU                           1                    NA                -1.5139949   -2.4140463   -0.8512258
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2253177   -0.5788641    0.0490610
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.8254096   -1.4302609   -0.3710956
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4077863   -0.6168023   -0.2257912
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4333379   -0.6993048   -0.2089988
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3786407   -0.5572950   -0.2204818
18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1426285   -0.2308492   -0.0607311
21 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.4464411   -0.8414095   -0.1361904
21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7132616   -1.3108618   -0.2702038
21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1093081   -0.3246330    0.0710148
21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.3462295   -0.5196614   -0.1925907
21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3698630   -0.5363361   -0.2214286
21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1185689   -0.1975391   -0.0448063
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.5666667   -1.7354880    0.1027398
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2170351   -0.0374059    0.4090701
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1132739   -0.1738922    0.3301912
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0162545   -0.3846753    0.3010959
3 months    ki1114097-CMIN             BANGLADESH                     1                    NA                 0.2226547   -0.0252683    0.4106268
3 months    ki1114097-CMIN             PERU                           1                    NA                -1.0272919   -1.8353929   -0.4495037
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2322515   -1.0707810    0.2667289
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1656347   -0.9634044    0.3079856
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081967   -0.7370565    0.4337123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1138794   -0.1100576    0.2926406
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0626050   -0.4219868    0.2059494
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0278875   -0.3981680    0.2443307
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0160386   -0.2008355    0.1403198
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.3138795   -0.8563387    0.0700622
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3771186   -1.0594285    0.0791349
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2297538   -0.7645292    0.1429473
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0351351   -0.5535584    0.4007536
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2877428   -0.5209700   -0.0902788
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.3755252   -0.6249241   -0.1644049
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2214999   -0.5968675    0.0656319
9 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1590982   -0.3203142   -0.0175674
9 months    ki1114097-CMIN             PERU                           1                    NA                -1.7743434   -2.8461618   -1.0012110
