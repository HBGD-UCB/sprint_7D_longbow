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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    0       83     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       87     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0                    1       22     203
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    0      157     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         1                    1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    0       45     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          1                    1       43     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    0       46     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0                    1       61     195
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    0      154     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          1                    1       54     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    0       26     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           1                    1       31     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    0       63     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0                    1      111     231
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1      127     227
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       31     202
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      171     202
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    0       92     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     1                    1      111     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      119     530
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0                    1      208     530
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    0      378     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     1                    1      225     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    0       17     632
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0                    1       12     632
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      341     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      228     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       50     643
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       24     643
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    0      144     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           1                    1       40     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    0        8     197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0                    1        5     197
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    0       16     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      1                    1       49     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    0      104     635
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA                      0                    1      466     635
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    0     1423    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          1                    1      389    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    0     1871    4715
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA                          0                    1     1032    4715
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    0      102    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    1                    1       75    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    0      207    1115
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES                    0                    1      731    1115
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    0        2     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         1                    1        0     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    0      293     518
0-24 months (no birth st.)   ki1148112-LCNI-5        MALAWI                         0                    1      223     518
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    10083   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1     3102   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     3684   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1     1576   18445
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1830    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1217    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0      439    3875
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1      389    3875
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      134     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     1                    1       36     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       27     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        6     203
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    0      166     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         1                    1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    0       77     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          1                    1       11     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    0       78     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0                    1       29     195
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    0      195     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          1                    1       13     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     209
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    0       41     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           1                    1       16     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    0      106     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0                    1       68     231
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        1     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      151     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       72     227
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      140     202
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       62     202
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      161     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     1                    1       42     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      248     530
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0                    1       79     530
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    0      507     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     1                    1       96     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    0       24     632
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        5     632
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      460     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      109     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       63     643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       11     643
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    0      159     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           1                    1       25     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    0        8     197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0                    1        5     197
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    0       48     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      1                    1       12     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    0      379     565
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA                      0                    1      126     565
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    0     1641    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          1                    1       91    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    0     2570    4569
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA                          0                    1      267    4569
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    0      162    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    1                    1       15    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    0      738    1115
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES                    0                    1      200    1115
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    0        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         1                    1        0     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    0      174     174
0-6 months (no birth st.)    ki1148112-LCNI-5        MALAWI                         0                    1        0     174
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    11578   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1573   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4409   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      841   18401
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     2632    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1      243    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0      707    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1       69    3651
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    0       81     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     1                    1       51     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    0       11     159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0                    1       16     159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    0      155     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         1                    1        9     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    0        4     168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0                    1        0     168
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    0       45     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          1                    1       32     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    0       46     155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0                    1       32     155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    0      153     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          1                    1       41     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    0        1     195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0                    1        0     195
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    0       26     147
6-24 months                  ki0047075b-MAL-ED       PERU                           1                    1       15     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    0       63     147
6-24 months                  ki0047075b-MAL-ED       PERU                           0                    1       43     147
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        3     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0       96     154
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       55     154
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       29     138
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109     138
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    0       67     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     1                    1       69     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    0       80     345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0                    1      129     345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    0      305     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     1                    1      129     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    0       14     455
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0                    1        7     455
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      321     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     1                    1      119     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       47     500
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0                    1       13     500
6-24 months                  ki1114097-CONTENT       PERU                           1                    0      144     167
6-24 months                  ki1114097-CONTENT       PERU                           1                    1       15     167
6-24 months                  ki1114097-CONTENT       PERU                           0                    0        8     167
6-24 months                  ki1114097-CONTENT       PERU                           0                    1        0     167
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    0       16     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      1                    1       46     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    0       99     626
6-24 months                  ki1135781-COHORTS       GUATEMALA                      0                    1      465     626
6-24 months                  ki1135781-COHORTS       INDIA                          1                    0     1329    4117
6-24 months                  ki1135781-COHORTS       INDIA                          1                    1      308    4117
6-24 months                  ki1135781-COHORTS       INDIA                          0                    0     1690    4117
6-24 months                  ki1135781-COHORTS       INDIA                          0                    1      790    4117
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    0       74     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    1                    1       60     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    0      169     834
6-24 months                  ki1135781-COHORTS       PHILIPPINES                    0                    1      531     834
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    0        2     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         1                    1        1     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    0      281     706
6-24 months                  ki1148112-LCNI-5        MALAWI                         0                    1      422     706
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    0     6232   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     1                    1     1542   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    0     2000   10518
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH                     0                    1      744   10518
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    0     1828    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     1                    1     1035    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    0      437    3644
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH                     0                    1      344    3644


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
![](/tmp/1435672c-1e47-4b39-8a5d-f2b24efb583f/cf2ef921-ebc2-4d34-8fab-4deb1441a5d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1435672c-1e47-4b39-8a5d-f2b24efb583f/cf2ef921-ebc2-4d34-8fab-4deb1441a5d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.5352068   0.4492260   0.6211876
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                0.5024204   0.3963285   0.6085123
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                0.5419411   0.4049936   0.6788885
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5525760   0.4865312   0.6186207
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.4988294   0.4007339   0.5969250
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.3266327   0.2181483   0.4351172
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                0.2180892   0.1582262   0.2779523
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                0.7997107   0.7237038   0.8757176
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                0.2414970   0.2202977   0.2626962
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4693033   0.3940007   0.5446059
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2434138   0.2344520   0.2523755
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.4137088   0.3899326   0.4374849
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.2132250   0.0779103   0.3485396
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                0.1293719   0.0589605   0.1997832
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                0.2879226   0.1620570   0.4137881
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2055707   0.1521415   0.2589998
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.1965140   0.0673190   0.3257090
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1482813   0.0645609   0.2320017
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                0.1360976   0.0863814   0.1858139
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                0.2223662   0.1199552   0.3247772
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                0.0590859   0.0469312   0.0712406
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.0839142   0.0420529   0.1257755
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1290067   0.1220339   0.1359795
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.0967418   0.0741249   0.1193587
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.4039901   0.3019446   0.5060357
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                0.5183562   0.3999505   0.6367619
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                0.4574227   0.3087709   0.6060745
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5462709   0.4630797   0.6294621
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.3640058   0.2432183   0.4847932
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.2074852   0.1205683   0.2944020
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                0.8045904   0.7149279   0.8942529
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                0.2126790   0.1912970   0.2340610
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4981088   0.4101850   0.5860326
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2153220   0.2035091   0.2271350
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.3647356   0.3440210   0.3854503


### Parameter: E(Y)


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         observed             NA                0.5333333   0.4631313   0.6035354
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          observed             NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.3750000   0.3372263   0.4127737
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.3919129   0.3541506   0.4296752
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          observed             NA                0.2284264   0.1696529   0.2871999
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     observed             NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         observed             NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   observed             NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.2536189   0.2458286   0.2614092
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.4144516   0.3962595   0.4326437
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.2068966   0.1510349   0.2627582
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         observed             NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          observed             NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.1598101   0.1312195   0.1884008
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.1866252   0.1564874   0.2167630
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          observed             NA                0.1522843   0.1019837   0.2025848
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     observed             NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         observed             NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   observed             NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.1311885   0.1255590   0.1368180
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA         observed             NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       PERU          observed             NA                0.3945578   0.3152779   0.4738378
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    observed             NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    observed             NA                0.2989011   0.2567922   0.3410100
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    observed             NA                0.2640000   0.2253243   0.3026757
6-24 months                  ki1135781-COHORTS       GUATEMALA     observed             NA                0.8162939   0.7859345   0.8466533
6-24 months                  ki1135781-COHORTS       INDIA         observed             NA                0.2666991   0.2531888   0.2802093
6-24 months                  ki1135781-COHORTS       PHILIPPINES   observed             NA                0.7086331   0.6777759   0.7394903
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    observed             NA                0.2173417   0.2079638   0.2267196
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    observed             NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           1.0032492   0.9125611   1.1029498
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         observed             optimal           1.0615280   0.9089525   1.2397145
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          observed             optimal           1.1342906   0.9098626   1.4140762
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0892381   0.9936871   1.1939770
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.7517600   0.6246263   0.9047699
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.1998581   0.8765654   1.6423867
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          observed             optimal           1.0473988   0.9613190   1.1411865
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     observed             optimal           1.0141463   0.9286871   1.1074695
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         observed             optimal           1.2479602   1.1586060   1.3442056
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.5403045   1.3275327   1.7871786
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0419249   1.0202932   1.0640152
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0017956   0.9632696   1.0418625
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.9703204   0.5481982   1.7174842
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         observed             optimal           1.5855704   1.0051641   2.5011175
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          observed             optimal           1.2629659   0.8549123   1.8657852
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.1105762   0.9033037   1.3654095
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.8132253   0.4372281   1.5125636
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.2585890   0.7359176   2.1524777
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          observed             optimal           1.1189340   0.9706814   1.2898292
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     observed             optimal           1.0984034   0.7114785   1.6957507
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         observed             optimal           1.3261046   1.1077846   1.5874507
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   observed             optimal           2.2978841   1.4229197   3.7108709
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0169127   0.9833251   1.0516475
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           0.8833411   0.7293893   1.0697874
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    observed             optimal           1.0430543   0.8769721   1.2405893
6-24 months                  ki0047075b-MAL-ED       INDIA         observed             optimal           0.7965627   0.6872379   0.9232787
6-24 months                  ki0047075b-MAL-ED       PERU          observed             optimal           0.8625673   0.6543811   1.1369862
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0506015   0.9356852   1.1796312
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.8211438   0.6056217   1.1133636
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.2723801   0.8545199   1.8945741
6-24 months                  ki1135781-COHORTS       GUATEMALA     observed             optimal           1.0145460   0.9141894   1.1259193
6-24 months                  ki1135781-COHORTS       INDIA         observed             optimal           1.2539981   1.1519833   1.3650470
6-24 months                  ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.4226473   1.2087860   1.6743454
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0093798   0.9745044   1.0455033
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0375468   1.0099048   1.0659454


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0017390   -0.0489653    0.0524433
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0309129   -0.0468372    0.1086630
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.0727776   -0.0461452    0.1917003
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0493108   -0.0012540    0.0998756
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.1238294   -0.2151421   -0.0325167
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0652802   -0.0372020    0.1677624
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                 0.0103372   -0.0084471    0.0291214
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0113129   -0.0590956    0.0817214
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                 0.0598816    0.0418713    0.0778919
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2535667    0.1851884    0.3219449
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0102051    0.0050819    0.0153283
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0007429   -0.0154827    0.0169684
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0063284   -0.1281107    0.1154538
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0757563    0.0140926    0.1374201
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                 0.0757138   -0.0364531    0.1878807
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0227312   -0.0198655    0.0653279
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.0367038   -0.1592737    0.0858661
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0383439   -0.0412999    0.1179877
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                 0.0161866   -0.0036542    0.0360275
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0218816   -0.0746756    0.1184388
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                 0.0192682    0.0084718    0.0300646
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.1089109    0.0671304    0.1506914
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0021818   -0.0021536    0.0065173
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0112858   -0.0298817    0.0073101
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0173935   -0.0527269    0.0875139
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                -0.1054530   -0.1827334   -0.0281726
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                -0.0628649   -0.1885865    0.0628568
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0276421   -0.0355104    0.0907946
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.0651047   -0.1760441    0.0458347
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0565148   -0.0268148    0.1398445
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0117035   -0.0720922    0.0954993
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                 0.0540201    0.0358754    0.0721647
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2105243    0.1306331    0.2904156
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0020197   -0.0055546    0.0095939
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0136947    0.0038436    0.0235457


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0032387   -0.0958171    0.0933404
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0579617   -0.1001674    0.1933627
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.1183917   -0.0990671    0.2928245
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0819271   -0.0063530    0.1624630
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.3302118   -0.6009574   -0.1052533
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.1665681   -0.1408162    0.3911300
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                 0.0452538   -0.0402374    0.1237190
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0139490   -0.0767890    0.0970406
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                 0.1986924    0.1368938    0.2560662
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.3507777    0.2467229    0.4404588
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0402380    0.0198896    0.0601638
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0017924   -0.0381310    0.0401804
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0305874   -0.8241578    0.4177530
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.3693121    0.0051376    0.6001787
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                 0.2082130   -0.1697106    0.4640326
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0995665   -0.1070473    0.2676190
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.2296715   -1.2871355    0.3388708
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.2054594   -0.3588478    0.5354191
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                 0.1062922   -0.0302041    0.2247036
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0895877   -0.4055239    0.4102907
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                 0.2459117    0.0972975    0.3700592
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.5648170    0.2972197    0.7305215
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0166314   -0.0169577    0.0491111
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.1320656   -0.3710100    0.0652348
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0412771   -0.1402871    0.1939315
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                -0.2553940   -0.4551002   -0.0830966
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                -0.1593299   -0.5281615    0.1204818
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0481643   -0.0687355    0.1522774
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.2178135   -0.6511958    0.1018208
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.2140714   -0.1702478    0.4721769
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0143374   -0.0938652    0.1118369
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                 0.2025506    0.1319318    0.2674245
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2970851    0.1727237    0.4027517
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0092926   -0.0261626    0.0435228
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0361880    0.0098076    0.0618657
