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
![](/tmp/63f0e940-5e1b-4a5d-b385-53ecde10a35e/c6f4fb6d-f543-4d2c-b95c-380d91e368af/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63f0e940-5e1b-4a5d-b385-53ecde10a35e/c6f4fb6d-f543-4d2c-b95c-380d91e368af/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1351711   0.0806939   0.1896484
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1008527   0.0739318   0.1277736
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                0.1863515   0.1294470   0.2432560
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                0.0790922   0.0338481   0.1243364
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                0.2005230   0.0970825   0.3039635
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1885735   0.0798244   0.2973226
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4621780   0.3042341   0.6201219
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0907515   0.0647863   0.1167167
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                0.0567099   0.0124575   0.1009623
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.1215829   0.0184297   0.2247361
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                0.0995792   0.0546356   0.1445229
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3698448   0.0988261   0.6408635
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0881401   0.0587620   0.1175182
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                0.0771492   0.0388984   0.1154001
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2990845   0.1315828   0.4665862
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0673313   0.0387203   0.0959424
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.0634496   0.0175103   0.1093889
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                0.0893117   0.0556886   0.1229349
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0623722   0.0338317   0.0909126


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1613508   0.1300924   0.1926093
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1268012   0.1125046   0.1410977
3-6 months     ki1101329-Keneba           GAMBIA                         observed             NA                0.1808511   0.1514199   0.2102822
3-6 months     ki1114097-CMIN             PERU                           observed             NA                0.0781250   0.0561896   0.1000604
6-9 months     ki0047075b-MAL-ED          PERU                           observed             NA                0.1317365   0.0802880   0.1831851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1213873   0.0725817   0.1701928
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2795031   0.2099691   0.3490371
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1174017   0.1019953   0.1328080
6-9 months     ki1101329-Keneba           GAMBIA                         observed             NA                0.1051724   0.0801845   0.1301603
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.2865169   0.2199085   0.3531252
6-9 months     ki1114097-CMIN             PERU                           observed             NA                0.0761062   0.0542221   0.0979903
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3230769   0.2423765   0.4037774
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0964230   0.0802843   0.1125618
9-12 months    ki1114097-CMIN             PERU                           observed             NA                0.1332046   0.1039145   0.1624947
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3736264   0.2736811   0.4735717
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0752119   0.0583791   0.0920447
12-15 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.0959596   0.0669135   0.1250057
12-15 months   ki1114097-CMIN             PERU                           observed             NA                0.1241685   0.0936995   0.1546375
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1056241   0.0832975   0.1279508


### Parameter: RR


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1936782   0.8421681   1.6919040
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2572903   0.9884051   1.5993228
3-6 months     ki1101329-Keneba           GAMBIA                         observed             optimal           0.9704836   0.7464471   1.2617617
3-6 months     ki1114097-CMIN             PERU                           observed             optimal           0.9877710   0.6002373   1.6255098
6-9 months     ki0047075b-MAL-ED          PERU                           observed             optimal           0.6569646   0.4396438   0.9817096
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.6437134   0.4174668   0.9925746
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.6047521   0.4481462   0.8160843
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2936607   1.0046504   1.6658113
6-9 months     ki1101329-Keneba           GAMBIA                         observed             optimal           1.8545675   0.8857735   3.8829572
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           2.3565557   1.0606661   5.2357239
6-9 months     ki1114097-CMIN             PERU                           observed             optimal           0.7642778   0.5308701   1.1003081
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8735472   0.4532566   1.6835601
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0939743   0.8205869   1.4584435
9-12 months    ki1114097-CMIN             PERU                           observed             optimal           1.7265838   1.1149648   2.6737090
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2492335   0.7791943   2.0028179
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1170414   0.7773836   1.6051039
12-15 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.5123756   0.7881217   2.9021914
12-15 months   ki1114097-CMIN             PERU                           observed             optimal           1.3902820   1.0549635   1.8321808
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.6934501   1.1334670   2.5300898


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0261797   -0.0211215    0.0734809
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0259484    0.0015398    0.0503571
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0055004   -0.0543979    0.0433971
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                -0.0009672   -0.0403663    0.0384319
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0687865   -0.1497198    0.0121468
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0671862   -0.1519674    0.0175950
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1826749   -0.3179630   -0.0473868
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0266502    0.0034771    0.0498232
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0484625    0.0052074    0.0917175
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1649340    0.0633478    0.2665201
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                -0.0234730   -0.0600087    0.0130626
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0467679   -0.2912710    0.1977352
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082829   -0.0170942    0.0336600
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0560554    0.0205117    0.0915991
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0745419   -0.0665185    0.2156023
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0078805   -0.0166011    0.0323622
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0325100   -0.0098111    0.0748311
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0348568    0.0090854    0.0606281
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0432520    0.0167718    0.0697322


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1622533   -0.1874114    0.4089499
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2046387   -0.0117309    0.3747354
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0304141   -0.3396796    0.2074573
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                -0.0123804   -0.6660079    0.3848084
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                -0.5221519   -1.2745686   -0.0186312
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.5534864   -1.3954001   -0.0074809
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.6535702   -1.2314148   -0.2253637
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2269998    0.0046289    0.3996919
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.4607907   -0.1289568    0.7424643
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.5756519    0.0571962    0.8090044
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                -0.3084247   -0.8837001    0.0911636
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1447578   -1.2062556    0.4060206
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0859017   -0.2186399    0.3143375
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                 0.4208216    0.1031107    0.6259877
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1995091   -0.2833770    0.5007035
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1047780   -0.2863663    0.3769874
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.3387886   -0.2688395    0.6554328
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                 0.2807214    0.0520999    0.4542023
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4094895    0.1177511    0.6047571
