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
![](/tmp/cd0a6d25-2983-49c7-a2ea-4302020d63af/d27bdcc0-e810-4073-9ea3-5a78806d1d8f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cd0a6d25-2983-49c7-a2ea-4302020d63af/d27bdcc0-e810-4073-9ea3-5a78806d1d8f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.5490310   0.4732789   0.6247831
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                0.4905270   0.3851325   0.5959215
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                0.5385335   0.4028119   0.6742552
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5606227   0.4934550   0.6277904
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.4605803   0.3635747   0.5575860
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.3359853   0.2277421   0.4442285
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                0.2164583   0.1567084   0.2762082
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                0.8239787   0.7440408   0.9039166
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                0.2417969   0.2205202   0.2630737
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4845108   0.4075013   0.5615202
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2438891   0.2348137   0.2529646
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.4130997   0.3872277   0.4389716
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.2722012   0.1386329   0.4057695
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                0.1299553   0.0591172   0.2007934
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                0.2930486   0.1691012   0.4169960
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.2161920   0.1624818   0.2699021
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.2639720   0.1478275   0.3801164
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.1398295   0.0593032   0.2203557
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                0.1359265   0.0862436   0.1856094
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                0.2146403   0.1213386   0.3079421
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                0.0594196   0.0474638   0.0713754
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.0849381   0.0429613   0.1269149
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.1280323   0.1214305   0.1346341
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.0950560   0.0735815   0.1165306
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                0.3734240   0.2469333   0.4999148
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                0.4443806   0.3395172   0.5492441
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                0.4953525   0.3479765   0.6427286
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                0.5319745   0.4483563   0.6155927
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                0.3642087   0.1903919   0.5380254
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                0.2174668   0.1233025   0.3116311
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                0.8152113   0.7404004   0.8900222
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                0.2155588   0.1937057   0.2374119
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                0.4934708   0.4080921   0.5788495
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                0.2113808   0.1993570   0.2234045
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                0.3701718   0.3452050   0.3951386


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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.9779881   0.9193367   1.0403813
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         observed             optimal           1.0872659   0.9280841   1.2737501
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          observed             optimal           1.1414676   0.9168579   1.4211018
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0736041   0.9797443   1.1764557
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.8141902   0.6701419   0.9892020
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.1664585   0.8605308   1.5811467
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          observed             optimal           1.0552905   0.9670529   1.1515792
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     observed             optimal           0.9842774   0.8980277   1.0788109
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         observed             optimal           1.2464119   1.1568927   1.3428580
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.4919585   1.2874796   1.7289129
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0398942   1.0186466   1.0615850
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0032727   0.9621624   1.0461395
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    observed             optimal           0.7600868   0.4887562   1.1820455
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         observed             optimal           1.5784523   1.0003499   2.4906402
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          observed             optimal           1.2408739   0.8514784   1.8083468
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0560146   0.8703007   1.2813582
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.6054057   0.3998566   0.9166188
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.3346628   0.7719070   2.3076935
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          observed             optimal           1.1203428   0.9716367   1.2918079
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     observed             optimal           1.1379398   0.7546817   1.7158320
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         observed             optimal           1.3186577   1.1069875   1.5708019
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   observed             optimal           2.2701838   1.4121193   3.6496453
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0246516   0.9914683   1.0589456
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           0.8990070   0.7524017   1.0741783
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    observed             optimal           1.1284320   0.8618520   1.4774680
6-24 months                  ki0047075b-MAL-ED       INDIA         observed             optimal           0.9291656   0.7822191   1.1037173
6-24 months                  ki0047075b-MAL-ED       PERU          observed             optimal           0.7965193   0.6253176   1.0145932
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    observed             optimal           1.0788356   0.9563306   1.2170334
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    observed             optimal           0.8206864   0.5233404   1.2869752
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    observed             optimal           1.2139784   0.8080322   1.8238675
6-24 months                  ki1135781-COHORTS       GUATEMALA     observed             optimal           1.0013280   0.9191381   1.0908674
6-24 months                  ki1135781-COHORTS       INDIA         observed             optimal           1.2372448   1.1354913   1.3481166
6-24 months                  ki1135781-COHORTS       PHILIPPINES   observed             optimal           1.4360183   1.2246728   1.6838363
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    observed             optimal           1.0282000   0.9916475   1.0660998
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    observed             optimal           1.0223099   0.9745455   1.0724153


### Parameter: PAR


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0120852   -0.0459592   0.0217888
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0428063   -0.0345365   0.1201491
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.0761851   -0.0411979   0.1935680
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0412641   -0.0098374   0.0923656
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.0855803   -0.1748584   0.0036977
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0559276   -0.0462315   0.1580867
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                 0.0119681   -0.0070210   0.0309572
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                -0.0129551   -0.0884922   0.0625820
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                 0.0595816    0.0414938   0.0776695
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2383592    0.1682156   0.3085028
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0097298    0.0046896   0.0147700
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0013519   -0.0159280   0.0186319
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0653047   -0.1847876   0.0541783
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0751729    0.0133194   0.1370264
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                 0.0705878   -0.0396985   0.1808741
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0121099   -0.0297560   0.0539758
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.1041618   -0.2139263   0.0056026
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0467957   -0.0298984   0.1234898
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                 0.0163578   -0.0035045   0.0362201
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0296074   -0.0586735   0.1178884
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                 0.0189345    0.0083674   0.0295016
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.1078870    0.0660073   0.1497667
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0031562   -0.0010737   0.0073861
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.0096000   -0.0266147   0.0074147
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.0479596   -0.0522830   0.1482022
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                -0.0314774   -0.1073444   0.0443896
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                -0.1007947   -0.2202064   0.0186170
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0419385   -0.0219674   0.1058444
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.0653076   -0.2298243   0.0992091
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.0465332   -0.0422309   0.1352973
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0010826   -0.0687389   0.0709041
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                 0.0511402    0.0325625   0.0697179
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.2151623    0.1378735   0.2924511
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0059609   -0.0016896   0.0136114
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0082585   -0.0094717   0.0259887


### Parameter: PAF


agecat                       studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.0225073   -0.0877408    0.0388140
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA         optimal              NA                 0.0802618   -0.0774886    0.2149166
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU          optimal              NA                 0.1239349   -0.0906816    0.2963207
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0685579   -0.0206745    0.1499892
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.2282143   -0.4922214   -0.0109159
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.1427042   -0.1620734    0.3675476
0-24 months (no birth st.)   ki1114097-CONTENT       PERU          optimal              NA                 0.0523936   -0.0340696    0.1316272
0-24 months (no birth st.)   ki1135781-COHORTS       GUATEMALA     optimal              NA                -0.0159737   -0.1135514    0.0730535
0-24 months (no birth st.)   ki1135781-COHORTS       INDIA         optimal              NA                 0.1976970    0.1356156    0.2553197
0-24 months (no birth st.)   ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.3297401    0.2232887    0.4216019
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0383637    0.0183052    0.0580123
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0032620   -0.0393256    0.0441045
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH    optimal              NA                -0.3156392   -1.0460101    0.1540089
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA         optimal              NA                 0.3664680    0.0003497    0.5984968
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU          optimal              NA                 0.1941164   -0.1744280    0.4470087
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0530434   -0.1490282    0.2195781
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.6517849   -1.5008966   -0.0909661
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.2507471   -0.2954929    0.5666669
0-6 months (no birth st.)    ki1114097-CONTENT       PERU          optimal              NA                 0.1074161   -0.0291913    0.2258911
0-6 months (no birth st.)    ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.1212189   -0.3250620    0.4171924
0-6 months (no birth st.)    ki1135781-COHORTS       INDIA         optimal              NA                 0.2416531    0.0966474    0.3633825
0-6 months (no birth st.)    ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.5595070    0.2918445    0.7260008
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0240586   -0.0086051    0.0556644
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                -0.1123384   -0.3290773    0.0690558
6-24 months                  ki0047075b-MAL-ED       BANGLADESH    optimal              NA                 0.1138146   -0.1602920    0.3231664
6-24 months                  ki0047075b-MAL-ED       INDIA         optimal              NA                -0.0762344   -0.2784142    0.0939709
6-24 months                  ki0047075b-MAL-ED       PERU          optimal              NA                -0.2554624   -0.5991875    0.0143833
6-24 months                  ki1017093-NIH-Birth     BANGLADESH    optimal              NA                 0.0730747   -0.0456635    0.1783299
6-24 months                  ki1017093b-PROVIDE      BANGLADESH    optimal              NA                -0.2184922   -0.9108021    0.2229842
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH    optimal              NA                 0.1762621   -0.2375745    0.4517145
6-24 months                  ki1135781-COHORTS       GUATEMALA     optimal              NA                 0.0013262   -0.0879758    0.0832983
6-24 months                  ki1135781-COHORTS       INDIA         optimal              NA                 0.1917525    0.1193239    0.2582244
6-24 months                  ki1135781-COHORTS       PHILIPPINES   optimal              NA                 0.3036301    0.1834554    0.4061181
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH    optimal              NA                 0.0274266   -0.0084229    0.0620015
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH    optimal              NA                 0.0218230   -0.0261193    0.0675254
