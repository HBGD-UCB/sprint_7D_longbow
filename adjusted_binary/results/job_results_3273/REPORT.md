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

agecat         studyid                    country                        lag_WHZ_quart    ever_stunted   n_cell      n
-------------  -------------------------  -----------------------------  --------------  -------------  -------  -----
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       43    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       78    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1       14    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       51    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        8    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0        7    207
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        1    207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       32    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       90    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        5    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       50    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        3    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       16    201
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        4    201
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           0       65    199
3-6 months     ki0047075b-MAL-ED          INDIA                          1                           1       13    199
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           0       65    199
3-6 months     ki0047075b-MAL-ED          INDIA                          2                           1        9    199
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           0       30    199
3-6 months     ki0047075b-MAL-ED          INDIA                          3                           1        8    199
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           0        4    199
3-6 months     ki0047075b-MAL-ED          INDIA                          4                           1        5    199
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           0       43    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                           1        0    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           0       80    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                           1        2    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           0       68    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                           1        3    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           0       14    210
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                           1        0    210
3-6 months     ki0047075b-MAL-ED          PERU                           1                           0       10    248
3-6 months     ki0047075b-MAL-ED          PERU                           1                           1        4    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           0       45    248
3-6 months     ki0047075b-MAL-ED          PERU                           2                           1       18    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           0       62    248
3-6 months     ki0047075b-MAL-ED          PERU                           3                           1       26    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           0       60    248
3-6 months     ki0047075b-MAL-ED          PERU                           4                           1       23    248
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       28    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       43    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1       13    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       62    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1       20    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       50    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1       25    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        8    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        2    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       37    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       12    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       57    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       14    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       63    215
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       22    215
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        3     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        4     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
3-6 months     ki1000108-IRC              INDIA                          1                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          1                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          2                           0        2      2
3-6 months     ki1000108-IRC              INDIA                          2                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          3                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          3                           1        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           0        0      2
3-6 months     ki1000108-IRC              INDIA                          4                           1        0      2
3-6 months     ki1000109-EE               PAKISTAN                       1                           0        0     20
3-6 months     ki1000109-EE               PAKISTAN                       1                           1        4     20
3-6 months     ki1000109-EE               PAKISTAN                       2                           0        0     20
3-6 months     ki1000109-EE               PAKISTAN                       2                           1        2     20
3-6 months     ki1000109-EE               PAKISTAN                       3                           0        2     20
3-6 months     ki1000109-EE               PAKISTAN                       3                           1        4     20
3-6 months     ki1000109-EE               PAKISTAN                       4                           0        4     20
3-6 months     ki1000109-EE               PAKISTAN                       4                           1        4     20
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0      197    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1       37    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0      135    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1       21    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0       91    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1       20    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0       24    533
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        8    533
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      492   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       67   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      432   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       48   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      402   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       62   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      492   2082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       87   2082
3-6 months     ki1101329-Keneba           GAMBIA                         1                           0      122    658
3-6 months     ki1101329-Keneba           GAMBIA                         1                           1       27    658
3-6 months     ki1101329-Keneba           GAMBIA                         2                           0       90    658
3-6 months     ki1101329-Keneba           GAMBIA                         2                           1       26    658
3-6 months     ki1101329-Keneba           GAMBIA                         3                           0      148    658
3-6 months     ki1101329-Keneba           GAMBIA                         3                           1       25    658
3-6 months     ki1101329-Keneba           GAMBIA                         4                           0      179    658
3-6 months     ki1101329-Keneba           GAMBIA                         4                           1       41    658
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0        1      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0        2      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0        0      8
3-6 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        0      8
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           0       48    159
3-6 months     ki1114097-CMIN             BANGLADESH                     1                           1       18    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           0       42    159
3-6 months     ki1114097-CMIN             BANGLADESH                     2                           1        9    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           0       19    159
3-6 months     ki1114097-CMIN             BANGLADESH                     3                           1        8    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           0       12    159
3-6 months     ki1114097-CMIN             BANGLADESH                     4                           1        3    159
3-6 months     ki1114097-CMIN             PERU                           1                           0       99    576
3-6 months     ki1114097-CMIN             PERU                           1                           1       16    576
3-6 months     ki1114097-CMIN             PERU                           2                           0      112    576
3-6 months     ki1114097-CMIN             PERU                           2                           1        7    576
3-6 months     ki1114097-CMIN             PERU                           3                           0      148    576
3-6 months     ki1114097-CMIN             PERU                           3                           1        8    576
3-6 months     ki1114097-CMIN             PERU                           4                           0      172    576
3-6 months     ki1114097-CMIN             PERU                           4                           1       14    576
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           0       22    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           0       55    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     2                           1        5    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           0       56    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     3                           1        7    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           0       16    166
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     4                           1        2    166
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           0       31    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           0       65    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         2                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           0       56    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         3                           1        1    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           0       18    174
6-9 months     ki0047075b-MAL-ED          BRAZIL                         4                           1        1    174
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           0       67    166
6-9 months     ki0047075b-MAL-ED          INDIA                          1                           1       15    166
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           0       52    166
6-9 months     ki0047075b-MAL-ED          INDIA                          2                           1        5    166
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           0       22    166
6-9 months     ki0047075b-MAL-ED          INDIA                          3                           1        2    166
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           0        3    166
6-9 months     ki0047075b-MAL-ED          INDIA                          4                           1        0    166
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           0       51    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                           1        2    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           0       69    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          2                           1        1    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           0       59    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          3                           1        1    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           0       13    197
6-9 months     ki0047075b-MAL-ED          NEPAL                          4                           1        1    197
6-9 months     ki0047075b-MAL-ED          PERU                           1                           0       16    167
6-9 months     ki0047075b-MAL-ED          PERU                           1                           1        5    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           0       34    167
6-9 months     ki0047075b-MAL-ED          PERU                           2                           1        6    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           0       53    167
6-9 months     ki0047075b-MAL-ED          PERU                           3                           1        6    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           0       42    167
6-9 months     ki0047075b-MAL-ED          PERU                           4                           1        5    167
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       27    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        6    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       31    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        5    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       50    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        5    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       44    173
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        5    173
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       15    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        8    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       28    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       10    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       36    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       12    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       37    161
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       15    161
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        7     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        0     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        5     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     22
6-9 months     ki1000108-IRC              INDIA                          1                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          1                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          2                           0        2      3
6-9 months     ki1000108-IRC              INDIA                          2                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          3                           0        1      3
6-9 months     ki1000108-IRC              INDIA                          3                           1        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           0        0      3
6-9 months     ki1000108-IRC              INDIA                          4                           1        0      3
6-9 months     ki1000109-EE               PAKISTAN                       1                           0        4     18
6-9 months     ki1000109-EE               PAKISTAN                       1                           1        6     18
6-9 months     ki1000109-EE               PAKISTAN                       2                           0        2     18
6-9 months     ki1000109-EE               PAKISTAN                       2                           1        4     18
6-9 months     ki1000109-EE               PAKISTAN                       3                           0        2     18
6-9 months     ki1000109-EE               PAKISTAN                       3                           1        0     18
6-9 months     ki1000109-EE               PAKISTAN                       4                           0        0     18
6-9 months     ki1000109-EE               PAKISTAN                       4                           1        0     18
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           0        6     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                           1        2     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           0        8     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                           1        0     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3                           1        1     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           0        7     31
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     4                           1        0     31
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      382   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       64   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      290   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       45   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      379   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       48   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      430   1678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       40   1678
6-9 months     ki1101329-Keneba           GAMBIA                         1                           0      148    580
6-9 months     ki1101329-Keneba           GAMBIA                         1                           1       18    580
6-9 months     ki1101329-Keneba           GAMBIA                         2                           0      157    580
6-9 months     ki1101329-Keneba           GAMBIA                         2                           1       23    580
6-9 months     ki1101329-Keneba           GAMBIA                         3                           0      112    580
6-9 months     ki1101329-Keneba           GAMBIA                         3                           1       14    580
6-9 months     ki1101329-Keneba           GAMBIA                         4                           0      102    580
6-9 months     ki1101329-Keneba           GAMBIA                         4                           1        6    580
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           0       38    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                           1       14    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           0       29    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                           1       20    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           0       24    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                           1       12    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           0       36    178
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                           1        5    178
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           0       44    121
6-9 months     ki1114097-CMIN             BANGLADESH                     1                           1       11    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           0       26    121
6-9 months     ki1114097-CMIN             BANGLADESH                     2                           1        4    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           0       22    121
6-9 months     ki1114097-CMIN             BANGLADESH                     3                           1        4    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           0        9    121
6-9 months     ki1114097-CMIN             BANGLADESH                     4                           1        1    121
6-9 months     ki1114097-CMIN             PERU                           1                           0       59    565
6-9 months     ki1114097-CMIN             PERU                           1                           1        7    565
6-9 months     ki1114097-CMIN             PERU                           2                           0       88    565
6-9 months     ki1114097-CMIN             PERU                           2                           1        8    565
6-9 months     ki1114097-CMIN             PERU                           3                           0      130    565
6-9 months     ki1114097-CMIN             PERU                           3                           1        9    565
6-9 months     ki1114097-CMIN             PERU                           4                           0      245    565
6-9 months     ki1114097-CMIN             PERU                           4                           1       19    565
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           0       15    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                           1        1    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           0       42    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           0       57    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                           1        6    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           0       18    150
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                           1        3    150
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           0       17    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                           1        0    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           0       62    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         2                           1        0    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           0       63    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         3                           1        1    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           0       18    162
9-12 months    ki0047075b-MAL-ED          BRAZIL                         4                           1        1    162
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           0       58    146
9-12 months    ki0047075b-MAL-ED          INDIA                          1                           1       14    146
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           0       50    146
9-12 months    ki0047075b-MAL-ED          INDIA                          2                           1        9    146
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           0       12    146
9-12 months    ki0047075b-MAL-ED          INDIA                          3                           1        1    146
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           0        2    146
9-12 months    ki0047075b-MAL-ED          INDIA                          4                           1        0    146
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           0       48    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                           1        2    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           0       76    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          2                           1        1    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           0       51    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          3                           1        2    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           0       10    190
9-12 months    ki0047075b-MAL-ED          NEPAL                          4                           1        0    190
9-12 months    ki0047075b-MAL-ED          PERU                           1                           0       16    134
9-12 months    ki0047075b-MAL-ED          PERU                           1                           1        3    134
9-12 months    ki0047075b-MAL-ED          PERU                           2                           0       34    134
9-12 months    ki0047075b-MAL-ED          PERU                           2                           1        6    134
9-12 months    ki0047075b-MAL-ED          PERU                           3                           0       36    134
9-12 months    ki0047075b-MAL-ED          PERU                           3                           1        5    134
9-12 months    ki0047075b-MAL-ED          PERU                           4                           0       31    134
9-12 months    ki0047075b-MAL-ED          PERU                           4                           1        3    134
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       20    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        3    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       33    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       47    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        4    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       35    148
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    148
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       10    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       20    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1       12    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       31    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1       11    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       27    130
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       14    130
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        3     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           0       10     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        4     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     26
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     26
9-12 months    ki1000108-IRC              INDIA                          1                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          1                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          2                           0        4      4
9-12 months    ki1000108-IRC              INDIA                          2                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          3                           1        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           0        0      4
9-12 months    ki1000108-IRC              INDIA                          4                           1        0      4
9-12 months    ki1000109-EE               PAKISTAN                       1                           0        2     22
9-12 months    ki1000109-EE               PAKISTAN                       1                           1        2     22
9-12 months    ki1000109-EE               PAKISTAN                       2                           0        8     22
9-12 months    ki1000109-EE               PAKISTAN                       2                           1        4     22
9-12 months    ki1000109-EE               PAKISTAN                       3                           0        4     22
9-12 months    ki1000109-EE               PAKISTAN                       3                           1        0     22
9-12 months    ki1000109-EE               PAKISTAN                       4                           0        2     22
9-12 months    ki1000109-EE               PAKISTAN                       4                           1        0     22
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           0       26    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                           1        9    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           0       25    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                           1        3    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           0       19    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3                           1        8    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           0       15    110
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     4                           1        5    110
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      268   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       41   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      249   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       25   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      287   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       32   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      358   1286
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       26   1286
9-12 months    ki1101329-Keneba           GAMBIA                         1                           0      148    474
9-12 months    ki1101329-Keneba           GAMBIA                         1                           1       21    474
9-12 months    ki1101329-Keneba           GAMBIA                         2                           0      109    474
9-12 months    ki1101329-Keneba           GAMBIA                         2                           1        7    474
9-12 months    ki1101329-Keneba           GAMBIA                         3                           0       95    474
9-12 months    ki1101329-Keneba           GAMBIA                         3                           1        6    474
9-12 months    ki1101329-Keneba           GAMBIA                         4                           0       84    474
9-12 months    ki1101329-Keneba           GAMBIA                         4                           1        4    474
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           0       16    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                           1       10    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           0       21    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                           1       11    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           0       19    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                           1        9    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           0       25    115
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                           1        4    115
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           0        2      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                           1        2      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           0        0      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                           1        0      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           0        0      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4
9-12 months    ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           0       26    104
9-12 months    ki1114097-CMIN             BANGLADESH                     1                           1       14    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           0       24    104
9-12 months    ki1114097-CMIN             BANGLADESH                     2                           1        7    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           0       19    104
9-12 months    ki1114097-CMIN             BANGLADESH                     3                           1        4    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           0        9    104
9-12 months    ki1114097-CMIN             BANGLADESH                     4                           1        1    104
9-12 months    ki1114097-CMIN             PERU                           1                           0       23    518
9-12 months    ki1114097-CMIN             PERU                           1                           1       14    518
9-12 months    ki1114097-CMIN             PERU                           2                           0       49    518
9-12 months    ki1114097-CMIN             PERU                           2                           1       16    518
9-12 months    ki1114097-CMIN             PERU                           3                           0      103    518
9-12 months    ki1114097-CMIN             PERU                           3                           1       11    518
9-12 months    ki1114097-CMIN             PERU                           4                           0      274    518
9-12 months    ki1114097-CMIN             PERU                           4                           1       28    518
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0        9    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        3    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       40    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        9    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       45    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       10    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0       20    137
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        1    137
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       18    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       47    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        1    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       64    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        3    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       24    157
12-15 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    157
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           0       58    134
12-15 months   ki0047075b-MAL-ED          INDIA                          1                           1       16    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           0       40    134
12-15 months   ki0047075b-MAL-ED          INDIA                          2                           1        6    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           0       11    134
12-15 months   ki0047075b-MAL-ED          INDIA                          3                           1        0    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           0        2    134
12-15 months   ki0047075b-MAL-ED          INDIA                          4                           1        1    134
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           0       51    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                           1        1    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           0       66    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          2                           1        9    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           0       48    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           0        9    188
12-15 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    188
12-15 months   ki0047075b-MAL-ED          PERU                           1                           0        8    121
12-15 months   ki0047075b-MAL-ED          PERU                           1                           1        4    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           0       23    121
12-15 months   ki0047075b-MAL-ED          PERU                           2                           1        3    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           0       37    121
12-15 months   ki0047075b-MAL-ED          PERU                           3                           1       11    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           0       32    121
12-15 months   ki0047075b-MAL-ED          PERU                           4                           1        3    121
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       19    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        7    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       17    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        6    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       44    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        7    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       38    141
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        3    141
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        5     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        6     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       12     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        8     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       22     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        9     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       18     91
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1       11     91
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        3     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        7     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        0     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        4     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        0     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     22
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     22
12-15 months   ki1000108-IRC              INDIA                          1                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          1                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          2                           0        2      4
12-15 months   ki1000108-IRC              INDIA                          2                           1        2      4
12-15 months   ki1000108-IRC              INDIA                          3                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          3                           1        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           0        0      4
12-15 months   ki1000108-IRC              INDIA                          4                           1        0      4
12-15 months   ki1000109-EE               PAKISTAN                       1                           0        0     18
12-15 months   ki1000109-EE               PAKISTAN                       1                           1        0     18
12-15 months   ki1000109-EE               PAKISTAN                       2                           0        2     18
12-15 months   ki1000109-EE               PAKISTAN                       2                           1        4     18
12-15 months   ki1000109-EE               PAKISTAN                       3                           0        6     18
12-15 months   ki1000109-EE               PAKISTAN                       3                           1        4     18
12-15 months   ki1000109-EE               PAKISTAN                       4                           0        2     18
12-15 months   ki1000109-EE               PAKISTAN                       4                           1        0     18
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       78    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       12    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       86    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1       12    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0      107    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        4    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       72    374
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    374
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      167    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       22    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      177    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       15    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      211    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       17    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      318    944
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       17    944
12-15 months   ki1101329-Keneba           GAMBIA                         1                           0      109    396
12-15 months   ki1101329-Keneba           GAMBIA                         1                           1       16    396
12-15 months   ki1101329-Keneba           GAMBIA                         2                           0      103    396
12-15 months   ki1101329-Keneba           GAMBIA                         2                           1        7    396
12-15 months   ki1101329-Keneba           GAMBIA                         3                           0       95    396
12-15 months   ki1101329-Keneba           GAMBIA                         3                           1        9    396
12-15 months   ki1101329-Keneba           GAMBIA                         4                           0       51    396
12-15 months   ki1101329-Keneba           GAMBIA                         4                           1        6    396
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        9     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        4     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0       14     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        5     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0       16     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        3     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       27     80
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     80
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        2      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        2      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      4
12-15 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      4
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           0       17     89
12-15 months   ki1114097-CMIN             BANGLADESH                     1                           1       13     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           0       26     89
12-15 months   ki1114097-CMIN             BANGLADESH                     2                           1        7     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           0       11     89
12-15 months   ki1114097-CMIN             BANGLADESH                     3                           1        5     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           0       10     89
12-15 months   ki1114097-CMIN             BANGLADESH                     4                           1        0     89
12-15 months   ki1114097-CMIN             PERU                           1                           0       12    451
12-15 months   ki1114097-CMIN             PERU                           1                           1        6    451
12-15 months   ki1114097-CMIN             PERU                           2                           0       43    451
12-15 months   ki1114097-CMIN             PERU                           2                           1       11    451
12-15 months   ki1114097-CMIN             PERU                           3                           0       86    451
12-15 months   ki1114097-CMIN             PERU                           3                           1       14    451
12-15 months   ki1114097-CMIN             PERU                           4                           0      254    451
12-15 months   ki1114097-CMIN             PERU                           4                           1       25    451
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       19    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        5    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       42    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        8    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       33    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1       12    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        4    123
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0    123
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       16    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       46    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        3    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       26    147
15-18 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        1    147
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           0       43    116
15-18 months   ki0047075b-MAL-ED          INDIA                          1                           1       11    116
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           0       43    116
15-18 months   ki0047075b-MAL-ED          INDIA                          2                           1        6    116
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           0       11    116
15-18 months   ki0047075b-MAL-ED          INDIA                          3                           1        1    116
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           0        1    116
15-18 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    116
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           0       45    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                           1        4    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           0       56    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          2                           1       10    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           0       45    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           0       17    180
15-18 months   ki0047075b-MAL-ED          NEPAL                          4                           1        0    180
15-18 months   ki0047075b-MAL-ED          PERU                           1                           0        3     99
15-18 months   ki0047075b-MAL-ED          PERU                           1                           1        4     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           0       17     99
15-18 months   ki0047075b-MAL-ED          PERU                           2                           1        5     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           0       32     99
15-18 months   ki0047075b-MAL-ED          PERU                           3                           1       13     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           0       21     99
15-18 months   ki0047075b-MAL-ED          PERU                           4                           1        4     99
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       12    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       21    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        2    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       38    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        3    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       42    124
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        5    124
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        4     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        4     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0       11     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        5     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       15     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        6     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       15     66
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        6     66
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        8     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        4     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        2     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        1     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        1     20
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        0     20
15-18 months   ki1000108-IRC              INDIA                          1                           0        3      5
15-18 months   ki1000108-IRC              INDIA                          1                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          2                           0        1      5
15-18 months   ki1000108-IRC              INDIA                          2                           1        1      5
15-18 months   ki1000108-IRC              INDIA                          3                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          3                           1        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           0        0      5
15-18 months   ki1000108-IRC              INDIA                          4                           1        0      5
15-18 months   ki1000109-EE               PAKISTAN                       1                           0        0     14
15-18 months   ki1000109-EE               PAKISTAN                       1                           1        0     14
15-18 months   ki1000109-EE               PAKISTAN                       2                           0        2     14
15-18 months   ki1000109-EE               PAKISTAN                       2                           1        0     14
15-18 months   ki1000109-EE               PAKISTAN                       3                           0        8     14
15-18 months   ki1000109-EE               PAKISTAN                       3                           1        2     14
15-18 months   ki1000109-EE               PAKISTAN                       4                           0        2     14
15-18 months   ki1000109-EE               PAKISTAN                       4                           1        0     14
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       56    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        8    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       71    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        9    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       73    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        6    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       64    288
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        1    288
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      118    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       19    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0      100    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1       19    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      175    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1       22    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      259    729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1       17    729
15-18 months   ki1101329-Keneba           GAMBIA                         1                           0       99    339
15-18 months   ki1101329-Keneba           GAMBIA                         1                           1       15    339
15-18 months   ki1101329-Keneba           GAMBIA                         2                           0       82    339
15-18 months   ki1101329-Keneba           GAMBIA                         2                           1       13    339
15-18 months   ki1101329-Keneba           GAMBIA                         3                           0       75    339
15-18 months   ki1101329-Keneba           GAMBIA                         3                           1        5    339
15-18 months   ki1101329-Keneba           GAMBIA                         4                           0       48    339
15-18 months   ki1101329-Keneba           GAMBIA                         4                           1        2    339
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           0        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      1                           1        2     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           0        3     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      2                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           0        5     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      3                           1        0     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           0       11     23
15-18 months   ki1112895-Guatemala BSC    GUATEMALA                      4                           1        2     23
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        2      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        2      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      6
15-18 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        2      6
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     69
15-18 months   ki1114097-CMIN             BANGLADESH                     1                           1        9     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           0       18     69
15-18 months   ki1114097-CMIN             BANGLADESH                     2                           1        6     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           0       16     69
15-18 months   ki1114097-CMIN             BANGLADESH                     3                           1        3     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           0        8     69
15-18 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     69
15-18 months   ki1114097-CMIN             PERU                           1                           0        6    372
15-18 months   ki1114097-CMIN             PERU                           1                           1        2    372
15-18 months   ki1114097-CMIN             PERU                           2                           0       21    372
15-18 months   ki1114097-CMIN             PERU                           2                           1        6    372
15-18 months   ki1114097-CMIN             PERU                           3                           0       78    372
15-18 months   ki1114097-CMIN             PERU                           3                           1       10    372
15-18 months   ki1114097-CMIN             PERU                           4                           0      225    372
15-18 months   ki1114097-CMIN             PERU                           4                           1       24    372
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       13    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       37    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        6    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       37    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        5    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        5    104
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        1    104
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       13    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       38    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       60    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        0    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       29    140
18-21 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    140
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           0       35    105
18-21 months   ki0047075b-MAL-ED          INDIA                          1                           1        4    105
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           0       40    105
18-21 months   ki0047075b-MAL-ED          INDIA                          2                           1        4    105
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           0       19    105
18-21 months   ki0047075b-MAL-ED          INDIA                          3                           1        2    105
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           0        1    105
18-21 months   ki0047075b-MAL-ED          INDIA                          4                           1        0    105
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           0       39    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                           1        7    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           0       53    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          2                           1        5    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           0       47    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          3                           1        3    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           0       15    170
18-21 months   ki0047075b-MAL-ED          NEPAL                          4                           1        1    170
18-21 months   ki0047075b-MAL-ED          PERU                           1                           0        8     78
18-21 months   ki0047075b-MAL-ED          PERU                           1                           1        3     78
18-21 months   ki0047075b-MAL-ED          PERU                           2                           0       17     78
18-21 months   ki0047075b-MAL-ED          PERU                           2                           1        1     78
18-21 months   ki0047075b-MAL-ED          PERU                           3                           0       25     78
18-21 months   ki0047075b-MAL-ED          PERU                           3                           1        8     78
18-21 months   ki0047075b-MAL-ED          PERU                           4                           0       15     78
18-21 months   ki0047075b-MAL-ED          PERU                           4                           1        1     78
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        8    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       17    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        0    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       30    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        6    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       43    109
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        4    109
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        3     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        1     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        7     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0        9     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        3     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       17     50
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        5     50
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        5     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        1     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        2     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        2     20
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     20
18-21 months   ki1000108-IRC              INDIA                          1                           0        4      4
18-21 months   ki1000108-IRC              INDIA                          1                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          2                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          3                           1        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           0        0      4
18-21 months   ki1000108-IRC              INDIA                          4                           1        0      4
18-21 months   ki1000109-EE               PAKISTAN                       1                           0        4     16
18-21 months   ki1000109-EE               PAKISTAN                       1                           1        2     16
18-21 months   ki1000109-EE               PAKISTAN                       2                           0        2     16
18-21 months   ki1000109-EE               PAKISTAN                       2                           1        0     16
18-21 months   ki1000109-EE               PAKISTAN                       3                           0        4     16
18-21 months   ki1000109-EE               PAKISTAN                       3                           1        2     16
18-21 months   ki1000109-EE               PAKISTAN                       4                           0        2     16
18-21 months   ki1000109-EE               PAKISTAN                       4                           1        0     16
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       51    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1       10    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       65    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        7    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       54    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        0    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       58    247
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        2    247
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       98    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1       10    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0       93    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        4    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0      125    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        8    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0      199    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        9    546
18-21 months   ki1101329-Keneba           GAMBIA                         1                           0       93    340
18-21 months   ki1101329-Keneba           GAMBIA                         1                           1       14    340
18-21 months   ki1101329-Keneba           GAMBIA                         2                           0       88    340
18-21 months   ki1101329-Keneba           GAMBIA                         2                           1        9    340
18-21 months   ki1101329-Keneba           GAMBIA                         3                           0       68    340
18-21 months   ki1101329-Keneba           GAMBIA                         3                           1       11    340
18-21 months   ki1101329-Keneba           GAMBIA                         4                           0       56    340
18-21 months   ki1101329-Keneba           GAMBIA                         4                           1        1    340
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        4      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        0      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        2      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        2      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      8
18-21 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      8
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     1                           1        7     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     2                           1        3     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           0       10     55
18-21 months   ki1114097-CMIN             BANGLADESH                     3                           1        5     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           0        6     55
18-21 months   ki1114097-CMIN             BANGLADESH                     4                           1        4     55
18-21 months   ki1114097-CMIN             PERU                           1                           0        3    300
18-21 months   ki1114097-CMIN             PERU                           1                           1        1    300
18-21 months   ki1114097-CMIN             PERU                           2                           0       14    300
18-21 months   ki1114097-CMIN             PERU                           2                           1        6    300
18-21 months   ki1114097-CMIN             PERU                           3                           0       45    300
18-21 months   ki1114097-CMIN             PERU                           3                           1       12    300
18-21 months   ki1114097-CMIN             PERU                           4                           0      207    300
18-21 months   ki1114097-CMIN             PERU                           4                           1       12    300
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           0       10     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                           1        0     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           0       31     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                           1        7     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           0       36     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                           1        4     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           0        6     94
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                           1        0     94
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           0       15    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                           1        0    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           0       32    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         2                           1        0    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           0       55    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         3                           1        1    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           0       30    133
21-24 months   ki0047075b-MAL-ED          BRAZIL                         4                           1        0    133
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           0       29     94
21-24 months   ki0047075b-MAL-ED          INDIA                          1                           1        2     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           0       37     94
21-24 months   ki0047075b-MAL-ED          INDIA                          2                           1        4     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           0       19     94
21-24 months   ki0047075b-MAL-ED          INDIA                          3                           1        1     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           0        2     94
21-24 months   ki0047075b-MAL-ED          INDIA                          4                           1        0     94
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           0       37    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                           1        3    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           0       55    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          2                           1        4    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           0       45    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          3                           1        2    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           0       12    160
21-24 months   ki0047075b-MAL-ED          NEPAL                          4                           1        2    160
21-24 months   ki0047075b-MAL-ED          PERU                           1                           0        5     65
21-24 months   ki0047075b-MAL-ED          PERU                           1                           1        3     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           0       15     65
21-24 months   ki0047075b-MAL-ED          PERU                           2                           1        0     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           0       29     65
21-24 months   ki0047075b-MAL-ED          PERU                           3                           1        1     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           0       12     65
21-24 months   ki0047075b-MAL-ED          PERU                           4                           1        0     65
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        7    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           0       12    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           0       29    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                           1        1    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           0       46    104
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                           1        7    104
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        0     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        5     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           0        5     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                           1        3     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           0       12     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                           1        1     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           0       12     39
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                           1        1     39
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           0        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                           1        2     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           0        1     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                           1        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           0        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                           1        3     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           0        0     15
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                           1        1     15
21-24 months   ki1000108-IRC              INDIA                          1                           0        1      4
21-24 months   ki1000108-IRC              INDIA                          1                           1        3      4
21-24 months   ki1000108-IRC              INDIA                          2                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          2                           1        0      4
21-24 months   ki1000108-IRC              INDIA                          3                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          3                           1        0      4
21-24 months   ki1000108-IRC              INDIA                          4                           0        0      4
21-24 months   ki1000108-IRC              INDIA                          4                           1        0      4
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           0       50    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                           1        6    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           0       55    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                           1        2    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           0       49    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3                           1        3    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           0       49    217
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     4                           1        3    217
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0        1      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                           1        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           0        0      1
21-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                           1        0      1
21-24 months   ki1101329-Keneba           GAMBIA                         1                           0       80    315
21-24 months   ki1101329-Keneba           GAMBIA                         1                           1       14    315
21-24 months   ki1101329-Keneba           GAMBIA                         2                           0       81    315
21-24 months   ki1101329-Keneba           GAMBIA                         2                           1       10    315
21-24 months   ki1101329-Keneba           GAMBIA                         3                           0       80    315
21-24 months   ki1101329-Keneba           GAMBIA                         3                           1        9    315
21-24 months   ki1101329-Keneba           GAMBIA                         4                           0       37    315
21-24 months   ki1101329-Keneba           GAMBIA                         4                           1        4    315
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           0        2      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                           1        0      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           0        6      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                           1        0      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           0        0      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3                           1        0      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           0        0      8
21-24 months   ki1113344-GMS-Nepal        NEPAL                          4                           1        0      8
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           0        8     42
21-24 months   ki1114097-CMIN             BANGLADESH                     1                           1        0     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           0        9     42
21-24 months   ki1114097-CMIN             BANGLADESH                     2                           1        5     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           0        7     42
21-24 months   ki1114097-CMIN             BANGLADESH                     3                           1        2     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           0       10     42
21-24 months   ki1114097-CMIN             BANGLADESH                     4                           1        1     42
21-24 months   ki1114097-CMIN             PERU                           1                           0        1    246
21-24 months   ki1114097-CMIN             PERU                           1                           1        1    246
21-24 months   ki1114097-CMIN             PERU                           2                           0       16    246
21-24 months   ki1114097-CMIN             PERU                           2                           1        2    246
21-24 months   ki1114097-CMIN             PERU                           3                           0       28    246
21-24 months   ki1114097-CMIN             PERU                           3                           1        7    246
21-24 months   ki1114097-CMIN             PERU                           4                           0      185    246
21-24 months   ki1114097-CMIN             PERU                           4                           1        6    246


The following strata were considered:

* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4f74935b-d12b-4f66-9fa6-473ed0fe58c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4f74935b-d12b-4f66-9fa6-473ed0fe58c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4f74935b-d12b-4f66-9fa6-473ed0fe58c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4f74935b-d12b-4f66-9fa6-473ed0fe58c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1581197   0.1113283   0.2049111
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1346154   0.0810054   0.1882253
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.1801802   0.1086141   0.2517462
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    NA                0.2500000   0.0998306   0.4001694
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1193102   0.0926492   0.1459713
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0994647   0.0731592   0.1257701
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1332520   0.1028077   0.1636963
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1496182   0.1208335   0.1784029
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1791918   0.1181975   0.2401861
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.2248654   0.1503525   0.2993783
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1437641   0.0922074   0.1953208
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.1852771   0.1344475   0.2361068
3-6 months     ki1114097-CMIN             PERU                           1                    NA                0.1391304   0.0758228   0.2024381
3-6 months     ki1114097-CMIN             PERU                           2                    NA                0.0588235   0.0165116   0.1011355
3-6 months     ki1114097-CMIN             PERU                           3                    NA                0.0512821   0.0166391   0.0859250
3-6 months     ki1114097-CMIN             PERU                           4                    NA                0.0752688   0.0373212   0.1132164
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.2380952   0.0553827   0.4208078
6-9 months     ki0047075b-MAL-ED          PERU                           2                    NA                0.1500000   0.0390117   0.2609883
6-9 months     ki0047075b-MAL-ED          PERU                           3                    NA                0.1016949   0.0243400   0.1790498
6-9 months     ki0047075b-MAL-ED          PERU                           4                    NA                0.1063830   0.0179702   0.1947958
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1818182   0.0498426   0.3137937
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.1388889   0.0255917   0.2521860
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.0909091   0.0147130   0.1671052
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.1020408   0.0170398   0.1870418
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3478261   0.1525721   0.5430801
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2631579   0.1227134   0.4036024
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2500000   0.1271200   0.3728800
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2884615   0.1649401   0.4119830
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1432948   0.1107666   0.1758229
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1342663   0.0977614   0.1707712
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1126787   0.0827227   0.1426346
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0850694   0.0598450   0.1102937
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1084337   0.0610938   0.1557737
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.1277778   0.0789656   0.1765899
6-9 months     ki1101329-Keneba           GAMBIA                         3                    NA                0.1111111   0.0561899   0.1660323
6-9 months     ki1101329-Keneba           GAMBIA                         4                    NA                0.0555556   0.0123178   0.0987933
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2692308   0.1483319   0.3901296
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.4081633   0.2701594   0.5461672
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.3333333   0.1789096   0.4877570
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.1219512   0.0215054   0.2223971
6-9 months     ki1114097-CMIN             PERU                           1                    NA                0.1060606   0.0317087   0.1804125
6-9 months     ki1114097-CMIN             PERU                           2                    NA                0.0833333   0.0279968   0.1386699
6-9 months     ki1114097-CMIN             PERU                           3                    NA                0.0647482   0.0238030   0.1056934
6-9 months     ki1114097-CMIN             PERU                           4                    NA                0.0719697   0.0407674   0.1031720
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3333333   0.0938513   0.5728154
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3750000   0.2066142   0.5433858
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2619048   0.1284211   0.3953884
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3414634   0.1957515   0.4871753
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1321525   0.0943972   0.1699079
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0913893   0.0573850   0.1253936
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0999721   0.0670048   0.1329394
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0673160   0.0422313   0.0924008
9-12 months    ki1114097-CMIN             PERU                           1                    NA                0.3795960   0.2269665   0.5322254
9-12 months    ki1114097-CMIN             PERU                           2                    NA                0.2468601   0.1435246   0.3501956
9-12 months    ki1114097-CMIN             PERU                           3                    NA                0.0956630   0.0416769   0.1496491
9-12 months    ki1114097-CMIN             PERU                           4                    NA                0.0928634   0.0600573   0.1256695
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5454545   0.2495721   0.8413369
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4000000   0.1841072   0.6158928
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2903226   0.1296515   0.4509936
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3793103   0.2017348   0.5568859
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1162764   0.0709234   0.1616294
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0774915   0.0397696   0.1152134
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0744112   0.0405227   0.1082998
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0509446   0.0274921   0.0743971
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1280000   0.0693585   0.1866415
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0636364   0.0179617   0.1093111
12-15 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.0865385   0.0324344   0.1406426
12-15 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.1052632   0.0254921   0.1850343
12-15 months   ki1114097-CMIN             PERU                           1                    NA                0.3333333   0.1153177   0.5513489
12-15 months   ki1114097-CMIN             PERU                           2                    NA                0.2037037   0.0961637   0.3112437
12-15 months   ki1114097-CMIN             PERU                           3                    NA                0.1400000   0.0719163   0.2080837
12-15 months   ki1114097-CMIN             PERU                           4                    NA                0.0896057   0.0560543   0.1231571
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1387700   0.0807494   0.1967906
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1592587   0.0934566   0.2250609
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1117934   0.0678186   0.1557682
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0616000   0.0332267   0.0899732


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1613508   0.1300924   0.1926093
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1268012   0.1125046   0.1410977
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1808511   0.1514199   0.2102822
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                0.0781250   0.0561896   0.1000604
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.1317365   0.0802880   0.1831851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1213873   0.0725817   0.1701928
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2795031   0.2099691   0.3490371
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1174017   0.1019953   0.1328080
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.1051724   0.0801845   0.1301603
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2865169   0.2199085   0.3531252
6-9 months     ki1114097-CMIN             PERU                           NA                   NA                0.0761062   0.0542221   0.0979903
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3230769   0.2423765   0.4037774
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964230   0.0802843   0.1125618
9-12 months    ki1114097-CMIN             PERU                           NA                   NA                0.1332046   0.1039145   0.1624947
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3736264   0.2736811   0.4735717
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0752119   0.0583791   0.0920447
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0959596   0.0669135   0.1250057
12-15 months   ki1114097-CMIN             PERU                           NA                   NA                0.1241685   0.0936995   0.1546375
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1056241   0.0832975   0.1279508


### Parameter: RR


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8513514   0.5183596   1.3982554
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3                    1                 1.1395179   0.6944015   1.8699571
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     4                    1                 1.5810811   0.8093640   3.0886194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8336645   0.5897794   1.1784006
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1168529   0.8113962   1.5373012
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2540266   0.9339455   1.6838056
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 1.2548868   0.7811042   2.0160445
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 0.8022917   0.4898502   1.3140178
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 1.0339600   0.6687007   1.5987322
3-6 months     ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                 0.4227941   0.1805022   0.9903197
3-6 months     ki1114097-CMIN             PERU                           3                    1                 0.3685897   0.1632353   0.8322857
3-6 months     ki1114097-CMIN             PERU                           4                    1                 0.5409946   0.2743141   1.0669343
6-9 months     ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           2                    1                 0.6300000   0.2169594   1.8293746
6-9 months     ki0047075b-MAL-ED          PERU                           3                    1                 0.4271186   0.1449744   1.2583621
6-9 months     ki0047075b-MAL-ED          PERU                           4                    1                 0.4468085   0.1441627   1.3848096
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.7638889   0.2563368   2.2764049
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.5000000   0.1649810   1.5153263
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 0.5612245   0.1859037   1.6942799
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7565789   0.3487121   1.6415023
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7187500   0.3408296   1.5157180
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8293269   0.4093547   1.6801641
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9369939   0.6575674   1.3351598
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7863418   0.5543907   1.1153387
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5936671   0.4086877   0.8623714
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 1.1783951   0.6597065   2.1048980
6-9 months     ki1101329-Keneba           GAMBIA                         3                    1                 1.0246914   0.5298841   1.9815512
6-9 months     ki1101329-Keneba           GAMBIA                         4                    1                 0.5123457   0.2099001   1.2505857
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 1.5160350   0.8641484   2.6596843
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 1.2380952   0.6494595   2.3602392
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.4529617   0.1772735   1.1573883
6-9 months     ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-9 months     ki1114097-CMIN             PERU                           2                    1                 0.7857143   0.2991628   2.0635816
6-9 months     ki1114097-CMIN             PERU                           3                    1                 0.6104830   0.2374933   1.5692635
6-9 months     ki1114097-CMIN             PERU                           4                    1                 0.6785714   0.2975930   1.5472783
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1250000   0.4821775   2.6248115
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7857143   0.3256190   1.8959178
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0243902   0.4441811   2.3624944
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6915443   0.4326543   1.1053477
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7564902   0.4890197   1.1702542
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5093814   0.3185339   0.8145739
9-12 months    ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9-12 months    ki1114097-CMIN             PERU                           2                    1                 0.6503233   0.3639152   1.1621399
9-12 months    ki1114097-CMIN             PERU                           3                    1                 0.2520127   0.1260203   0.5039697
9-12 months    ki1114097-CMIN             PERU                           4                    1                 0.2446376   0.1432358   0.4178252
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7333333   0.3411693   1.5762782
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5322581   0.2452284   1.1552440
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 0.6954023   0.3396639   1.4237145
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6664423   0.3571648   1.2435304
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6399513   0.3516772   1.1645270
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4381334   0.2397264   0.8007498
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.4971591   0.2121753   1.1649198
12-15 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.6760817   0.3114446   1.4676333
12-15 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.8223684   0.3392184   1.9936709
12-15 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12-15 months   ki1114097-CMIN             PERU                           2                    1                 0.6111111   0.2636849   1.4162996
12-15 months   ki1114097-CMIN             PERU                           3                    1                 0.4200000   0.1859026   0.9488840
12-15 months   ki1114097-CMIN             PERU                           4                    1                 0.2688172   0.1265185   0.5711630
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1476455   0.6375147   2.0659761
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8056024   0.4537202   1.4303862
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4438998   0.2382845   0.8269401


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0032312   -0.0320406    0.0385030
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0074909   -0.0155108    0.0304926
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0016593   -0.0518664    0.0551850
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.0610054   -0.1147517   -0.0072592
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1063587   -0.2725961    0.0598787
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0604309   -0.1751248    0.0542630
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0683230   -0.2473942    0.1107482
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0258931   -0.0529561    0.0011699
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0032613   -0.0430438    0.0365212
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0172861   -0.0852478    0.1198200
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.0299544   -0.0986244    0.0387156
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0102564   -0.2352658    0.2147530
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0357295   -0.0673363   -0.0041228
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.2463913   -0.3904396   -0.1023431
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1718282   -0.4481801    0.1045238
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0410645   -0.0799031   -0.0022260
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0320404   -0.0779918    0.0139109
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -0.2091648   -0.4205061    0.0021765
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0331458   -0.0841463    0.0178546


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0200258   -0.2248509    0.2159459
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0590762   -0.1408594    0.2239731
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0091748   -0.3357429    0.2650273
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.7808696   -1.5843007   -0.2272165
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.8073593   -2.5971848    0.0919155
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.4978355   -1.7912392    0.1962311
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2444444   -1.0822290    0.2562576
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2205514   -0.4727623   -0.0115317
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0310093   -0.4879038    0.2855854
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                 0.0603318   -0.3751187    0.3578909
6-9 months     ki1114097-CMIN             PERU                           1                    NA                -0.3935870   -1.6522424    0.2677574
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0317460   -1.0264390    0.4746943
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3705497   -0.7354682   -0.0823630
9-12 months    ki1114097-CMIN             PERU                           1                    NA                -1.8497204   -3.1577986   -0.9531745
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4598930   -1.4355662    0.1249313
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5459849   -1.1445659   -0.1144770
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3338947   -0.8989858    0.0630392
12-15 months   ki1114097-CMIN             PERU                           1                    NA                -1.6845238   -4.0381860   -0.4304093
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3138092   -0.8926762    0.0880137
