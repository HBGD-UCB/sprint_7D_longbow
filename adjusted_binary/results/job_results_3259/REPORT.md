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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

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
![](/tmp/f5db35e9-275c-44fa-95ec-93e78bd7a9f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5db35e9-275c-44fa-95ec-93e78bd7a9f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5db35e9-275c-44fa-95ec-93e78bd7a9f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5db35e9-275c-44fa-95ec-93e78bd7a9f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.6373551   0.4947248   0.7799854
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.5159171   0.4421154   0.5897188
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                0.5924989   0.5031162   0.6818817
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    NA                0.5223888   0.4232203   0.6215572
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                0.6248035   0.5558111   0.6937959
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    NA                0.4023422   0.3042455   0.5004390
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6349365   0.5834811   0.6863918
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5491163   0.4820391   0.6161936
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4079512   0.2366784   0.5792240
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3734059   0.3348426   0.4119692
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2587253   0.1833625   0.3340881
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.3986627   0.3589130   0.4384125
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    NA                0.2173913   0.1576413   0.2771413
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8139128   0.7822247   0.8456009
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7279416   0.6389451   0.8169381
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                0.3422273   0.3257038   0.3587509
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    NA                0.2463225   0.2272715   0.2653735
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7692132   0.7429416   0.7954847
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4199382   0.3673132   0.4725632
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3142482   0.3013363   0.3271600
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2434133   0.2347642   0.2520623
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4739425   0.4385955   0.5092895
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.4052703   0.3849673   0.4255732
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2117647   0.1501973   0.2733321
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                0.2701906   0.1860523   0.3543289
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1255616   0.0561319   0.1949912
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                0.3919557   0.3205360   0.4633754
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    NA                0.2512798   0.1551543   0.3474054
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2421017   0.1961659   0.2880375
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2057578   0.1528281   0.2586874
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.1724138   0.0348242   0.3100034
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592040   0.1299789   0.1884291
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1309873   0.0564706   0.2055040
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1911266   0.1588523   0.2234009
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                0.3846154   0.1194797   0.6497510
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    NA                0.1358696   0.0862338   0.1855054
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                0.2503823   0.2126171   0.2881475
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    NA                0.1938492   0.0935768   0.2941215
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                0.0889958   0.0789754   0.0990163
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    NA                0.0585538   0.0478194   0.0692883
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2124669   0.1863085   0.2386252
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0782080   0.0377065   0.1187095
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1874165   0.1767397   0.1980933
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1259274   0.1194964   0.1323585
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0980623   0.0753877   0.1207370
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0860271   0.0733085   0.0987458
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5878023   0.4621467   0.7134580
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.3948803   0.3141785   0.4755821
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                0.4150728   0.3133896   0.5167559
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    NA                0.4117324   0.3087375   0.5147273
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                0.4257667   0.3334029   0.5181305
6-24 months                  ki0047075b-MAL-ED       PERU          1                    NA                0.4903249   0.3531687   0.6274811
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6062110   0.5427525   0.6696694
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5237850   0.4434511   0.6041189
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.3333333   0.1314921   0.5351746
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.2972350   0.2541887   0.3402813
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1550657   0.0705686   0.2395629
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2666170   0.2253844   0.3078495
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                0.8201476   0.7887606   0.8515347
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    NA                0.7189031   0.6265959   0.8112104
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                0.3057775   0.2885344   0.3230206
6-24 months                  ki1135781-COHORTS       INDIA         1                    NA                0.2168926   0.1979933   0.2357919
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7507056   0.7195526   0.7818586
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4946274   0.4388612   0.5503937
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2543293   0.2388828   0.2697758
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2075618   0.1971148   0.2180089
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4414350   0.4041177   0.4787523
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3594588   0.3387518   0.3801658


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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.8094657   0.6277651   1.0437578
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         1                    0                 0.8816704   0.6976689   1.1142001
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          1                    0                 0.6439501   0.4928783   0.8413267
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8648366   0.7487364   0.9989395
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9153199   0.5949302   1.4082502
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.5408727   1.1381101   2.0861677
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          1                    0                 0.5652174   0.2691006   1.1871793
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     1                    0                 0.8943730   0.7872932   1.0160166
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         1                    0                 0.7197629   0.6577380   0.7876367
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   1                    0                 0.5459322   0.4799533   0.6209811
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.7745893   0.7371548   0.8139248
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8551043   0.7829503   0.9339076
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    1                    0                 1.1647059   0.5330353   2.5449344
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         1                    0                 0.4647148   0.2463792   0.8765344
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          1                    0                 0.6410924   0.4199459   0.9786961
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8498814   0.6226600   1.1600206
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.9233831   0.4071506   2.0941544
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.4591229   0.8065533   2.6396766
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          1                    0                 0.3532609   0.1619094   0.7707599
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     1                    0                 0.7742128   0.4520009   1.3261155
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         1                    0                 0.6579390   0.5309419   0.8153126
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   1                    0                 0.3680950   0.2161419   0.6268749
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.6719122   0.6250889   0.7222430
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8772696   0.6743310   1.1412823
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    1                    0                 0.6717909   0.5075564   0.8891683
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA         1                    0                 0.9919524   0.7155119   1.3751967
6-24 months                  ki0047075b-MAL-ED       PERU          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU          1                    0                 1.1516282   0.8063700   1.6447132
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    1                    0                 0.8640309   0.7218181   1.0342625
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    1                    0                 0.8917051   0.4784415   1.6619335
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    1                    0                 1.7193803   0.9748363   3.0325794
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       GUATEMALA     1                    0                 0.8765533   0.7671735   1.0015280
6-24 months                  ki1135781-COHORTS       INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       INDIA         1                    0                 0.7093150   0.6401498   0.7859532
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1135781-COHORTS       PHILIPPINES   1                    0                 0.6588833   0.5852082   0.7418338
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    1                    0                 0.8161145   0.7567077   0.8801852
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    1                    0                 0.8142961   0.7358837   0.9010639


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1004093   -0.2292862    0.0284676
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.0591656   -0.1180439   -0.0002872
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                -0.0100849   -0.0457685    0.0255988
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0330497   -0.0650688   -0.0010305
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0329512   -0.1997840    0.1338815
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1331876    0.0615665    0.2048087
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                -0.1561890   -0.4101053    0.0977273
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0028892   -0.0142563    0.0084780
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                -0.0408488   -0.0503997   -0.0312978
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0463432   -0.0595942   -0.0330922
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0604350   -0.0709197   -0.0499503
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0563236   -0.0878419   -0.0248053
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.0250784   -0.0968443    0.1470010
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.0650624   -0.1153145   -0.0148103
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                -0.0283193   -0.0623155    0.0056768
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0137998   -0.0399161    0.0123165
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0126037   -0.1468087    0.1216014
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0556379   -0.0154575    0.1267333
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                -0.2323311   -0.4844210    0.0197587
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0061345   -0.0175757    0.0053067
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                -0.0106417   -0.0159850   -0.0052984
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0196418   -0.0278192   -0.0114643
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0562280   -0.0649766   -0.0474794
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0126063   -0.0323832    0.0071706
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1664187   -0.2793489   -0.0534885
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                -0.0021695   -0.0693652    0.0650262
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                -0.0312089   -0.0811127    0.0186950
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0322979   -0.0718768    0.0072810
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0344322   -0.2312886    0.1624242
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.1089343    0.0272032    0.1906654
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0038537   -0.0154972    0.0077898
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                -0.0390785   -0.0490733   -0.0290836
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0420725   -0.0572998   -0.0268453
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.0372820   -0.0503825   -0.0241816
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.0678668   -0.1011156   -0.0346180


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1870008   -0.4561014    0.0323676
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         0                    NA                -0.1109355   -0.2288495   -0.0043359
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          0                    NA                -0.0164057   -0.0763552    0.0402048
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0549101   -0.1097908   -0.0027434
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0878699   -0.6375598    0.2773021
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.3398398    0.1324330    0.4976624
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          0                    NA                -0.6837607   -2.2582395    0.1298829
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0035624   -0.0176876    0.0103669
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         0                    NA                -0.1355397   -0.1679908   -0.1039902
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0641100   -0.0833364   -0.0452249
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.2381082   -0.2809625   -0.1966876
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1348684   -0.2135836   -0.0612588
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    0                    NA                 0.1212121   -0.7173849    0.5503232
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         0                    NA                -0.3171791   -0.5807929   -0.0975257
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          0                    NA                -0.0778782   -0.1762981    0.0123070
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0604456   -0.1808340    0.0476689
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.0788665   -1.3495772    0.5046117
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.2981264   -0.2050600    0.5912016
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          0                    NA                -1.5256410   -3.8506404   -0.3150558
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0251159   -0.0730150    0.0206450
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         0                    NA                -0.1358153   -0.2056000   -0.0700700
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.1018630   -0.1442171   -0.0610768
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.4286044   -0.4983866   -0.3620719
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1475180   -0.4052746    0.0629607
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.3949339   -0.7159255   -0.1339890
6-24 months                  ki0047075b-MAL-ED       INDIA         0                    NA                -0.0052543   -0.1819357    0.1450159
6-24 months                  ki0047075b-MAL-ED       PERU          0                    NA                -0.0790984   -0.2149561    0.0415676
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.0562767   -0.1280995    0.0109735
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    0                    NA                -0.1151961   -1.0129286    0.3821627
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.4126298    0.0118180    0.6508703
6-24 months                  ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0047210   -0.0191058    0.0094608
6-24 months                  ki1135781-COHORTS       INDIA         0                    NA                -0.1465264   -0.1849565   -0.1093427
6-24 months                  ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.0593714   -0.0818248   -0.0373840
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.1717692   -0.2348351   -0.1119243
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.1816718   -0.2751032   -0.0950865
