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
![](/tmp/60355349-82e0-425b-8344-b86da87fe921/67cad772-a47b-449f-af26-183991f1adc7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60355349-82e0-425b-8344-b86da87fe921/67cad772-a47b-449f-af26-183991f1adc7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1352105   0.0812258   0.1891951
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1012968   0.0742575   0.1283360
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                0.1642012   0.1094749   0.2189276
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                0.0894997   0.0421349   0.1368646
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                0.2143044   0.1089181   0.3196908
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1393406   0.0312784   0.2474028
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3701535   0.2105373   0.5297696
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0885376   0.0624075   0.1146676
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                0.0544147   0.0113027   0.0975268
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.1295564   0.0224237   0.2366890
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                0.0650238   0.0236335   0.1064141
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3643104   0.1867860   0.5418348
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0674220   0.0422769   0.0925671
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                0.0779685   0.0393228   0.1166142
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2823058   0.1179561   0.4466555
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0511381   0.0276221   0.0746542
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.0648357   0.0182919   0.1113795
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                0.0893279   0.0557373   0.1229185
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0625400   0.0338221   0.0912579


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
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1933311   0.8448259   1.6856005
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2517789   0.9840340   1.5923742
3-6 months     ki1101329-Keneba           GAMBIA                         observed             optimal           1.1013991   0.8219712   1.4758180
3-6 months     ki1114097-CMIN             PERU                           observed             optimal           0.8729075   0.5536702   1.3762119
6-9 months     ki0047075b-MAL-ED          PERU                           observed             optimal           0.6147168   0.4160808   0.9081811
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8711550   0.4775595   1.5891446
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7551006   0.5374652   1.0608630
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3260093   1.0205400   1.7229119
6-9 months     ki1101329-Keneba           GAMBIA                         observed             optimal           1.9327926   0.9128101   4.0925133
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           2.2115225   1.0162330   4.8127067
6-9 months     ki1114097-CMIN             PERU                           observed             optimal           1.1704359   0.6650518   2.0598700
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8868178   0.5854323   1.3433590
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4301427   1.0278411   1.9899071
9-12 months    ki1114097-CMIN             PERU                           observed             optimal           1.7084420   1.1026688   2.6470089
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3234810   0.8097263   2.1632025
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4707589   0.9862382   2.1933158
12-15 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.4800430   0.7756675   2.8240545
12-15 months   ki1114097-CMIN             PERU                           observed             optimal           1.3900309   1.0551968   1.8311143
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.6889053   1.1289944   2.5264970


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0261404   -0.0207337   0.0730144
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0255044    0.0009900   0.0500187
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0166498   -0.0315063   0.0648060
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                -0.0113747   -0.0521703   0.0294208
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0825679   -0.1657563   0.0006205
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0179533   -0.1031846   0.0672779
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0906503   -0.2196085   0.0383078
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0288641    0.0054457   0.0522824
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0507577    0.0084680   0.0930473
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1569605    0.0522264   0.2616946
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                 0.0110824   -0.0257822   0.0479470
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0412335   -0.1930061   0.1105391
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0290011    0.0062925   0.0517096
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                 0.0552362    0.0193368   0.0911355
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0913206   -0.0471211   0.2297622
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0240737    0.0029874   0.0451600
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0311239   -0.0116652   0.0739130
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0348406    0.0090943   0.0605870
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0430841    0.0165004   0.0696678


### Parameter: PAF


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1620096   -0.1836758    0.4067396
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2011369   -0.0162250    0.3720069
3-6 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0920639   -0.2165876    0.3224097
3-6 months     ki1114097-CMIN             PERU                           optimal              NA                -0.1455968   -0.8061294    0.2733677
6-9 months     ki0047075b-MAL-ED          PERU                           optimal              NA                -0.6267654   -1.4033792   -0.1011019
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1479013   -1.0939801    0.3707306
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3243268   -0.8605854    0.0573712
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2458575    0.0201266    0.4195873
6-9 months     ki1101329-Keneba           GAMBIA                         optimal              NA                 0.4826139   -0.0955181    0.7556514
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.5478228    0.0159737    0.7922167
6-9 months     ki1114097-CMIN             PERU                           optimal              NA                 0.1456175   -0.5036422    0.5145325
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1276274   -0.7081395    0.2555973
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3007691    0.0270869    0.4974640
9-12 months    ki1114097-CMIN             PERU                           optimal              NA                 0.4146714    0.0931094    0.6222151
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2444168   -0.2349853    0.5377224
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3200789   -0.0139538    0.5440693
12-15 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.3243439   -0.2892123    0.6458992
12-15 months   ki1114097-CMIN             PERU                           optimal              NA                 0.2805916    0.0523095    0.4538844
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4079005    0.1142560    0.6041951
