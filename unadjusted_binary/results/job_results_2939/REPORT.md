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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                 country                        impsan    ever_stunted   n_cell       n
---------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    1       22     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    0       83     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       87     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    0      157     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    0       46     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    1       61     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    0       45     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    1       43     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    0      154     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    1       54     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    0       63     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    1      111     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    0       26     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    1       31     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1      127     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       31     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      171     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      119     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    1      208     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    0       92     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    1      111     530
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    0       17     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    1       12     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    0      378     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    1      225     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       50     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       24     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      341     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      228     643
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    0        8     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    1        5     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    0      144     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    1       40     197
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    0      104     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    1      466     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    0       16     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    1       49     635
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    0     1871    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    1     1032    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    0     1423    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    1      389    4715
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    0      207    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    1      731    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    0      102    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    1       75    1115
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    0      293     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    1      223     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    0        2     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    1        0     518
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7360   36846
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1     3150   36846
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    20134   36846
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     6202   36846
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      844    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      760    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3539    7526
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1     2383    7526
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       27     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        6     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      134     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    1       36     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    0      166     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    0       78     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    1       29     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    0       77     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    1       11     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    0      195     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    1       13     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    0      106     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    1       68     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    0       41     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    1       16     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      151     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       72     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      140     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       62     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      248     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    1       79     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      161     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    1       42     530
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    0       24     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        5     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    0      507     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    1       96     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       63     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       11     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      460     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      109     643
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    0        8     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    1        5     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    0      159     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    1       25     197
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    0      379     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    1      126     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    0       48     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    1       12     565
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    0     2570    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    1      267    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    0     1641    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    1       91    4569
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    0      738    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    1      200    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    0      162    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    1       15    1115
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    0      174     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    0        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     8818   36802
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1     1682   36802
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    23156   36802
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1     3146   36802
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1414    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1      138    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     5264    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1      486    7302
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    1       16     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    0       81     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    1       51     159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    0        4     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    1        0     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    0      155     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    1        9     168
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    0       46     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    1       32     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    0       45     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    1       32     155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    0        1     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    1        0     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    0      153     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    1       41     195
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    0       63     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    1       43     147
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    0       26     147
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    1       15     147
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       55     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     154
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       29     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     138
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    0       80     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    1      129     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    0       67     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    1       69     345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    0       14     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    1        7     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    0      305     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    1      129     455
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       47     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       13     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      321     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      119     500
6-24 months                  ki1114097-CONTENT       PERU                           0                    0        8     167
6-24 months                  ki1114097-CONTENT       PERU                           0                    1        0     167
6-24 months                  ki1114097-CONTENT       PERU                           1                    0      144     167
6-24 months                  ki1114097-CONTENT       PERU                           1                    1       15     167
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    0       99     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    1      465     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    0       16     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    1       46     626
6-24 months                  ki1135781-COHORTS       INDIA                          0                    0     1690    4117
6-24 months                  ki1135781-COHORTS       INDIA                          0                    1      790    4117
6-24 months                  ki1135781-COHORTS       INDIA                          1                    0     1329    4117
6-24 months                  ki1135781-COHORTS       INDIA                          1                    1      308    4117
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    0      169     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    1      531     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    0       74     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    1       60     834
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    0      281     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    1      422     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    0        2     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    1        1     706
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3992   20977
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    1     1480   20977
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    0    12432   20977
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    1     3073   20977
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    0      840    6984
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    1      648    6984
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3535    6984
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1961    6984


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0cbda967-ff9a-473f-b0e7-bddb827e3574/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0cbda967-ff9a-473f-b0e7-bddb827e3574/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0cbda967-ff9a-473f-b0e7-bddb827e3574/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0cbda967-ff9a-473f-b0e7-bddb827e3574/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.6666667   0.5054325   0.8279009
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5117647   0.4364386   0.5870908
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                0.5700935   0.4760491   0.6641378
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                0.4886364   0.3839281   0.5933446
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                0.6379310   0.5663665   0.7094956
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                0.5438596   0.4142774   0.6734419
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6360856   0.5838891   0.6882822
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5467980   0.4782540   0.6153420
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4137931   0.2343982   0.5931880
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3731343   0.3345018   0.4117669
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.3243243   0.2175839   0.4310648
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.4007030   0.3604070   0.4409990
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                0.2173913   0.1576413   0.2771413
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8175439   0.7858126   0.8492751
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7538462   0.6490420   0.8586503
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                0.3554943   0.3380802   0.3729084
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                0.2146799   0.1957724   0.2335874
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7793177   0.7527666   0.8058688
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4237288   0.3508982   0.4965594
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2997146   0.2859901   0.3134391
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2354951   0.2267897   0.2442006
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4738155   0.4361670   0.5114640
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.4023978   0.3821526   0.4226431
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2117647   0.1501973   0.2733321
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                0.2710280   0.1865906   0.3554655
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1250000   0.0557241   0.1942759
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                0.3908046   0.3181482   0.4634610
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                0.2807018   0.1637976   0.3976059
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2415902   0.1951520   0.2880285
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2068966   0.1511200   0.2626731
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1724138   0.0348242   0.3100034
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592040   0.1299789   0.1884291
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1486486   0.0675329   0.2297644
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1915641   0.1592040   0.2239242
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                0.1358696   0.0862338   0.1855054
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                0.2495050   0.2117303   0.2872796
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                0.2000000   0.0986982   0.3013018
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                0.0941135   0.0833679   0.1048591
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                0.0525404   0.0420317   0.0630491
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2132196   0.1869966   0.2394426
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0847458   0.0436983   0.1257932
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1601905   0.1493553   0.1710256
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1196107   0.1133963   0.1258250
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0889175   0.0658762   0.1119589
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0845217   0.0719541   0.0970894
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5925926   0.4066714   0.7785137
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3863636   0.3030368   0.4696905
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                0.4102564   0.3007434   0.5197694
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                0.4155844   0.3051514   0.5260174
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                0.4056604   0.3118662   0.4994546
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                0.3658537   0.2179132   0.5137941
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6172249   0.5512317   0.6832180
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5073529   0.4232072   0.5914987
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3333333   0.1314921   0.5351746
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.2972350   0.2541887   0.3402813
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2166667   0.1123205   0.3210128
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2704545   0.2289085   0.3120006
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                0.8244681   0.7930470   0.8558891
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                0.7419355   0.6329304   0.8509405
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                0.3185484   0.3002092   0.3368876
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                0.1881491   0.1692140   0.2070841
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7585714   0.7268500   0.7902928
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4477612   0.3635164   0.5320060
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2704678   0.2524004   0.2885353
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1981941   0.1878649   0.2085234
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4354839   0.3956991   0.4752687
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3568049   0.3361531   0.3774568


### Parameter: E(Y)


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5333333   0.4631313   0.6035354
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          NA                   NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3750000   0.3372263   0.4127737
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.3919129   0.3541506   0.4296752
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          NA                   NA                0.2284264   0.1696529   0.2871999
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         NA                   NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2538132   0.2460142   0.2616122
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.4176189   0.3993140   0.4359238
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2068966   0.1510349   0.2627582
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          NA                   NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1598101   0.1312195   0.1884008
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1866252   0.1564874   0.2167630
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          NA                   NA                0.1522843   0.1019837   0.2025848
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         NA                   NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1311885   0.1255590   0.1368180
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA         NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       PERU          NA                   NA                0.3945578   0.3152779   0.4738378
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.2989011   0.2567922   0.3410100
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2640000   0.2253243   0.3026757
6-24 months                  ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8162939   0.7859345   0.8466533
6-24 months                  ki1135781-COHORTS       INDIA         NA                   NA                0.2666991   0.2531888   0.2802093
6-24 months                  ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7086331   0.6777759   0.7394903
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2170472   0.2076850   0.2264095
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3735682   0.3548662   0.3922701


### Parameter: RR


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.7676471   0.5783681   1.0188701
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    0                 0.8571162   0.6540246   1.1232731
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    0                 0.8525367   0.6551496   1.1093938
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8596296   0.7400193   0.9985726
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9017413   0.5774366   1.4081847
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.2355009   0.8757619   1.7430108
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    0                 0.5652174   0.2691006   1.1871793
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    0                 0.9220865   0.7981503   1.0652674
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    0                 0.6038913   0.5459978   0.6679233
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5437177   0.4563253   0.6478469
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7857314   0.7430622   0.8308508
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8492712   0.7747703   0.9309361
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.1647059   0.5330353   2.5449344
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    0                 0.4612069   0.2442213   0.8709798
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    0                 0.7182663   0.4552090   1.1333397
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8563946   0.6150074   1.1925250
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9233831   0.4071506   2.0941544
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.2887043   0.7278946   2.2815923
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    0                 0.3532609   0.1619094   0.7707599
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    0                 0.8015873   0.4724548   1.3600079
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    0                 0.5582665   0.4434257   0.7028494
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    0                 0.3974577   0.2411355   0.6551200
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7466778   0.6876345   0.8107909
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.9505633   0.7119178   1.2692064
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.6519886   0.4455492   0.9540791
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    0                 1.0129870   0.6950648   1.4763266
6-24 months                  ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU          1                    0                 0.9018718   0.5660409   1.4369504
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8219904   0.6747888   1.0013033
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8917051   0.4784415   1.6619335
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.2482517   0.7529474   2.0693775
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    0                 0.8998959   0.7731684   1.0473950
6-24 months                  ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       INDIA         1                    0                 0.5906451   0.5259854   0.6632535
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5902690   0.4867938   0.7157394
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7327826   0.6750761   0.7954220
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8193299   0.7366168   0.9113307


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1297209   -0.2789614    0.0195197
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0367601   -0.1005298    0.0270096
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                -0.0232124   -0.0601136    0.0136887
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0341988   -0.0674046   -0.0009930
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0387931   -0.2138814    0.1362952
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0675886   -0.0333919    0.1685691
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                -0.1561890   -0.4101053    0.0977273
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0065202   -0.0178295    0.0047890
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                -0.0541157   -0.0641859   -0.0440455
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0564477   -0.0709274   -0.0419681
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0459014   -0.0569935   -0.0348092
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0561965   -0.0891789   -0.0232142
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0250784   -0.0968443    0.1470010
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0658998   -0.1162380   -0.0155616
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                -0.0271682   -0.0616816    0.0073451
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0132883   -0.0411241    0.0145475
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0126037   -0.1468087    0.1216014
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0379765   -0.0393124    0.1152655
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                -0.2323311   -0.4844210    0.0197587
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0052572   -0.0168073    0.0062929
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                -0.0157594   -0.0214868   -0.0100319
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0203945   -0.0286035   -0.0121855
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0290020   -0.0376714   -0.0203325
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0034615   -0.0234737    0.0165507
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1712089   -0.3407821   -0.0016358
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                 0.0026468   -0.0746159    0.0799096
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                -0.0111026   -0.0600446    0.0378395
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0433118   -0.0858470   -0.0007767
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0344322   -0.2312886    0.1624242
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0473333   -0.0515140    0.1461806
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0081742   -0.0195748    0.0032265
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                -0.0518493   -0.0625105   -0.0411882
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0499383   -0.0663478   -0.0335289
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0534206   -0.0683685   -0.0384727
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0619157   -0.0967620   -0.0270694


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.2415902   -0.5571315    0.0100090
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0689252   -0.1959918    0.0446413
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                -0.0377610   -0.0998644    0.0208356
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0568194   -0.1137785   -0.0027731
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1034483   -0.6847283    0.2772733
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1724582   -0.1298716    0.3938909
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                -0.6837607   -2.2582395    0.1298829
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0080395   -0.0221062    0.0058335
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                -0.1795607   -0.2134688   -0.1466000
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0780884   -0.0992337   -0.0573498
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1808472   -0.2255840   -0.1377433
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1345642   -0.2166196   -0.0580430
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1212121   -0.7173849    0.5503232
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.3212617   -0.5846950   -0.1016205
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                -0.0747126   -0.1741556    0.0163082
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0582051   -0.1872891    0.0568447
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0788665   -1.3495772    0.5046117
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.2034910   -0.3382826    0.5259397
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                -1.5256410   -3.8506404   -0.3150558
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0215239   -0.0698872    0.0246532
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                -0.2011301   -0.2741489   -0.1322959
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1057668   -0.1482302   -0.0648738
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2210708   -0.2886114   -0.1570702
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0405060   -0.3031928    0.1692305
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.4063018   -0.8817041   -0.0510073
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                 0.0064103   -0.1994926    0.1769682
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                -0.0281392   -0.1600244    0.0887517
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0754676   -0.1528403   -0.0032877
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1151961   -1.0129286    0.3821627
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1792929   -0.2945555    0.4796978
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0100137   -0.0241172    0.0038955
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                -0.1944114   -0.2348973   -0.1552528
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0704714   -0.0947390   -0.0467417
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2461243   -0.3171815   -0.1789003
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1657414   -0.2631244   -0.0758664
