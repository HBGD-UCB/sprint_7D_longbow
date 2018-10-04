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
![](/tmp/9485848f-961c-43b2-b25d-3de7cee86d09/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9485848f-961c-43b2-b25d-3de7cee86d09/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.5124042   0.4385080   0.5863003
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                0.4906987   0.3883795   0.5930180
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                0.5363827   0.4372852   0.6354801
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5489826   0.4821872   0.6157779
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.3736876   0.3351317   0.4122436
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.3275888   0.2553752   0.3998025
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                0.2174056   0.1576556   0.2771556
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                0.7329953   0.6504755   0.8155151
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                0.2429501   0.2238473   0.2620530
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4890147   0.4355352   0.5424942
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2431200   0.2344828   0.2517572
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.4062091   0.3859067   0.4265116
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.1851513   0.0532282   0.3170743
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                0.1233960   0.0539693   0.1928228
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                0.2736258   0.1767339   0.3705178
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2105291   0.1576092   0.2634489
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.1592464   0.1300213   0.1884715
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1509944   0.0766580   0.2253309
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                0.1359851   0.0863493   0.1856209
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                0.1955504   0.0957248   0.2953761
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                0.0604114   0.0495927   0.0712301
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.0847238   0.0447898   0.1246577
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1185896   0.1123742   0.1248051
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.0874967   0.0646765   0.1103168
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.3934637   0.3127625   0.4741649
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                0.3851773   0.2776273   0.4927273
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                0.3865290   0.2561525   0.5169054
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5292850   0.4502325   0.6083375
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.2972077   0.2541614   0.3402541
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1806910   0.0995463   0.2618357
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                0.7390427   0.6450751   0.8330102
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                0.2139535   0.1949749   0.2329321
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4854637   0.4276392   0.5432882
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2075154   0.1970726   0.2179582
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.3609520   0.3402553   0.3816488


### Parameter: E(Y)


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.5375127   0.4687499   0.6062755
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         observed             NA                0.5342805   0.4640785   0.6044826
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          observed             NA                0.6199551   0.5570608   0.6828494
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.6026763   0.5609624   0.6443902
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.3754012   0.3376275   0.4131749
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.3914477   0.3536854   0.4292099
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          observed             NA                0.2283312   0.1695576   0.2871047
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     observed             NA                0.8116023   0.7811287   0.8420759
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         observed             NA                0.3012872   0.2881884   0.3143860
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   observed             NA                0.7232054   0.6969223   0.7494886
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.2538448   0.2460458   0.2616438
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.4178479   0.3995429   0.4361528
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.2072637   0.1514020   0.2631254
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         observed             NA                0.2046284   0.1478074   0.2614493
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          observed             NA                0.3647355   0.3025669   0.4269040
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.2316682   0.1958998   0.2674365
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.1596535   0.1310628   0.1882442
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.1874897   0.1573519   0.2176275
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          observed             NA                0.1522753   0.1019748   0.2025759
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     observed             NA                0.2442825   0.2088246   0.2797405
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         observed             NA                0.0783769   0.0705840   0.0861698
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   observed             NA                0.1929420   0.1697749   0.2161091
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.1316788   0.1260493   0.1373083
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.0856196   0.0742558   0.0969833
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.4205256   0.3435321   0.4975190
6-24 months                  ki0047075b-MAL-ED       INDIA         observed             NA                0.4143157   0.3365538   0.4920776
6-24 months                  ki0047075b-MAL-ED       PERU          observed             NA                0.3946932   0.3154133   0.4739732
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.5761065   0.5238499   0.6283631
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.2989258   0.2568169   0.3410347
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.2647394   0.2260636   0.3034151
6-24 months                  ki1135781-COHORTS       GUATEMALA     observed             NA                0.8170485   0.7866892   0.8474079
6-24 months                  ki1135781-COHORTS       INDIA         observed             NA                0.2668168   0.2533066   0.2803270
6-24 months                  ki1135781-COHORTS       PHILIPPINES   observed             NA                0.7104163   0.6795591   0.7412735
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.2170072   0.2076449   0.2263694
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.3740356   0.3553337   0.3927375


### Parameter: RR


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              observed          0.9532876   0.9042992   1.0049297
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              observed          0.9184290   0.7900905   1.0676142
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              observed          0.8651960   0.7377307   1.0146847
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              observed          0.9109078   0.8296559   1.0001171
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              observed          0.9954353   0.9740146   1.0173272
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          0.8368650   0.6804114   1.0292934
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              observed          0.9521504   0.8734404   1.0379533
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              observed          0.9031459   0.8146204   1.0012915
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              observed          0.8063739   0.7547281   0.8615539
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              observed          0.6761768   0.6126507   0.7462900
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          0.9577505   0.9408338   0.9749713
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          0.9721460   0.9507526   0.9940207
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              observed          0.8933125   0.4626929   1.7247015
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              observed          0.6030251   0.3767873   0.9651048
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              observed          0.7502036   0.5479679   1.0270774
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              observed          0.9087525   0.7446502   1.1090190
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              observed          0.9974502   0.9578136   1.0387271
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          0.8053478   0.5047911   1.2848582
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              observed          0.8930210   0.7750090   1.0290029
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              observed          0.8005094   0.4922111   1.3019114
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              observed          0.7707804   0.6594870   0.9008555
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              observed          0.4391152   0.2793031   0.6903687
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          0.9005978   0.8737176   0.9283050
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          1.0219238   0.8143792   1.2823613
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              observed          0.9356475   0.8618942   1.0157119
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              observed          0.9296710   0.7677788   1.1256995
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              observed          0.9793149   0.7327784   1.3087964
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              observed          0.9187277   0.8218823   1.0269847
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              observed          0.9942525   0.9628114   1.0267204
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              observed          0.6825241   0.4439691   1.0492604
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              observed          0.9045272   0.8028071   1.0191358
6-24 months                  ki1135781-COHORTS       INDIA         optimal              observed          0.8018741   0.7443649   0.8638265
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              observed          0.6833510   0.6138389   0.7607348
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              observed          0.9562608   0.9318505   0.9813105
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              observed          0.9650205   0.9398203   0.9908965
