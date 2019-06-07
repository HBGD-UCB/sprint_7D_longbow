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

**Intervention Variable:** impfloor

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
* impsan
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
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        impfloor    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       86     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      1      100     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      0      159     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      0       87     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      1       95     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      0        4     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      1       10     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      0       72     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      1       14     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      0       79     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      1       38     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      0       21     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      1       27     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      0       70     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      1      120     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       94     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1      117     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        3     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       32     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      166     209
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      177     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     198
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      0      123     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      1      147     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      0        0     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      1        0     270
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      193     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      1      276     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       18     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      1       42     529
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      366     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      1      213     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       30     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       25     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      310     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      191     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       66     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      0       39     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      1       40     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      0      121     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      1      221     421
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      0      142     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      1       42     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      1        3     197
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1379   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      280   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    12371   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4387   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      361    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      154    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1908    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1451    3874
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      148     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       38     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       13     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        4     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      0      168     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      0      145     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      1       37     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      0       10     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      1        4     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      0       85     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      0      105     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      1       12     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      0       28     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      1       20     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      0      122     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      1       68     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      145     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       66     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        8     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      139     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       59     209
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      115     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       80     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     195
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      0      186     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      1       84     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      0        0     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      1        0     270
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      372     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      1       97     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       36     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      1       24     529
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      492     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       87     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       41     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       14     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      414     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       37     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      0       69     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      1       10     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      0      278     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      1       64     421
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      0      156     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      1       28     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      1        2     197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1525   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      126   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    14441   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2281   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      457    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       30    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2882    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      282    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      0       84     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      1       62     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      1        5     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      0      157     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      1        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      0        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      1        0     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      1       58     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      1        6     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      0       71     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      1       13     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      0       79     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      1       26     189
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      0       21     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      1        7     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      0       69     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      1       52     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       93     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       51     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        5     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       30     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      107     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       98     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     119
6-24 months                  ki1000108-IRC              INDIA                          1                      0      123     186
6-24 months                  ki1000108-IRC              INDIA                          1                      1       63     186
6-24 months                  ki1000108-IRC              INDIA                          0                      0        0     186
6-24 months                  ki1000108-IRC              INDIA                          0                      1        0     186
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      0      139     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      1      179     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      0        8     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      1       18     344
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      0      301     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      1      126     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      0       19     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      1       11     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      287     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      104     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       29     506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      0       37     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      1       30     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      0      115     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      1      157     339
6-24 months                  ki1114097-CONTENT          PERU                           1                      0      142     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      1       14     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      1        1     167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      0      933   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      1      157   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      0     7290   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2125   10505
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      0      358    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      1      125    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1907    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1253    3643


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cc3d7de0-9624-423e-be3b-08c9993550dc/788590c8-5614-4db5-a653-b6951206dc28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cc3d7de0-9624-423e-be3b-08c9993550dc/788590c8-5614-4db5-a653-b6951206dc28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.6056179   0.3951560   0.8160799
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1641086   0.0853765   0.2428407
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                0.6389843   0.5189194   0.7590492
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.5546819   0.4874503   0.6219135
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5912283   0.5467300   0.6357266
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.4430613   0.3632923   0.5228302
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.3792338   0.3369209   0.4215467
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5327430   0.4186970   0.6467891
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2240030   0.1935976   0.2544083
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3238303   0.2676927   0.3799679
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                0.3084418   0.2102078   0.4066759
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3124649   0.2497342   0.3751956
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.2089656   0.1722775   0.2456537
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.1514841   0.1224957   0.1804725
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.1743509   0.1412193   0.2074825
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1300393   0.0565318   0.2035468
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1071807   0.0847148   0.1296466
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.1028464   0.0684879   0.1372048
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.3978576   0.1038293   0.6918858
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1549645   0.0768818   0.2330472
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                0.2523173   0.0846189   0.4200158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.4575570   0.2626359   0.6524780
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5630808   0.5084638   0.6176978
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.3370613   0.2925109   0.3816117
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2406020   0.1633105   0.3178934
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4653150   0.3409711   0.5896590
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2090490   0.1744981   0.2435999
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2582260   0.2039213   0.3125306


### Parameter: E(Y)


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          observed             NA                0.2561576   0.1959618   0.3163535
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           observed             NA                0.6176471   0.5557776   0.6795165
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.5627706   0.4986637   0.6268774
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.6011342   0.5593675   0.6429009
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.6199525   0.5735307   0.6663743
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2534072   0.2456310   0.2611834
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.4143005   0.3961166   0.4324844
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           observed             NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3203463   0.2600435   0.3806492
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.2287335   0.1929075   0.2645595
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          observed             NA                0.1757720   0.1393702   0.2121737
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.1310075   0.1253900   0.1366249
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       NEPAL          observed             NA                0.2063492   0.1485016   0.2641968
6-24 months                  ki0047075b-MAL-ED       PERU           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.5726744   0.5203223   0.6250266
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal     NEPAL          observed             NA                0.5516224   0.4986033   0.6046416
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2172299   0.2078539   0.2266059
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3782597   0.3596753   0.3968440


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           0.8866082   0.6355671   1.2368073
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          observed             optimal           1.5609034   1.0448510   2.3318342
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           observed             optimal           0.9666076   0.8211023   1.1378974
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0145825   0.9796481   1.0507627
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0167549   0.9932113   1.0408565
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     observed             optimal           0.8472740   0.7249289   0.9902672
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0377983   0.9835764   1.0950092
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.1636989   0.9603070   1.4101689
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.1312671   0.9911677   1.2911692
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.2793751   1.0817856   1.5130546
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           observed             optimal           1.1987605   0.9372784   1.5331909
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0252232   0.9623389   1.0922168
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0945986   1.0189661   1.1758450
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     observed             optimal           1.0516353   0.9803300   1.1281271
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0891413   0.9844573   1.2049570
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.3516833   0.8022357   2.2774449
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.2223047   0.9957814   1.5003583
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           0.8309098   0.6108125   1.1303158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     observed             optimal           1.0591319   0.5208027   2.1539066
6-24 months                  ki0047075b-MAL-ED       NEPAL          observed             optimal           1.3315905   0.8878529   1.9971026
6-24 months                  ki0047075b-MAL-ED       PERU           observed             optimal           1.5693458   0.8471563   2.9071923
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           0.7845457   0.5318670   1.1572669
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0170378   0.9908953   1.0438700
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     observed             optimal           0.8893966   0.8312024   0.9516652
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0924509   0.8233818   1.4494479
6-24 months                  ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.1854816   0.9316386   1.5084890
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0391337   0.8855370   1.2193717
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.4648398   1.1966461   1.7931415


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.0686721   -0.2697999    0.1324557
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.0920491    0.0242399    0.1598582
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                -0.0213372   -0.1255183    0.0828438
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0080887   -0.0113125    0.0274898
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0099060   -0.0039013    0.0237132
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0676670   -0.1366625    0.0013286
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0143344   -0.0059961    0.0346648
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0872095   -0.0145879    0.1890068
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0294042   -0.0002246    0.0590330
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0904701    0.0359951    0.1449451
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                 0.0613061   -0.0136164    0.1362285
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0078814   -0.0118993    0.0276620
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0197679    0.0046475    0.0348882
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                 0.0078219   -0.0029244    0.0185682
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0155419   -0.0021903    0.0332740
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0457327   -0.0225730    0.1140383
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0238268    0.0018396    0.0458139
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0173903   -0.0491019    0.0143212
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0235261   -0.2587716    0.3058237
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.0513847   -0.0123726    0.1151421
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                 0.1436558   -0.0119641    0.2992758
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                -0.0985826   -0.2758892    0.0787240
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0095936   -0.0050268    0.0242141
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0372801   -0.0587816   -0.0157786
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0222439   -0.0457910    0.0902787
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0863074   -0.0253846    0.1979994
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0081809   -0.0252614    0.0416231
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.1200337    0.0677538    0.1723137


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.1278939   -0.5733979    0.1914666
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.3593453    0.0429257    0.5711530
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                -0.0345460   -0.2178750    0.1211861
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0143729   -0.0207747    0.0483104
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0164788   -0.0068351    0.0392528
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.1802557   -0.3794456   -0.0098285
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0364216   -0.0166978    0.0867657
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1406712   -0.0413336    0.2908651
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.1160354   -0.0089110    0.2255082
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.2183684    0.0756024    0.3390853
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                 0.1658050   -0.0669189    0.3477655
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0246027   -0.0391350    0.0844308
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0864231    0.0186130    0.1495478
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                 0.0491000   -0.0200647    0.1135751
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0818455   -0.0157881    0.1700948
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.2601817   -0.2465164    0.5609114
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.1818734   -0.0042365    0.3334926
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.2035001   -0.6371637    0.1152915
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0558305   -0.9201130    0.5357273
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.2490184   -0.1263127    0.4992746
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                 0.3627918   -0.1804197    0.6560255
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                -0.2746230   -0.8801694    0.1358951
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0167524   -0.0091884    0.0420263
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.1243577   -0.2030764   -0.0507897
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0846271   -0.2145035    0.3100821
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1564610   -0.0733775    0.3370850
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0376599   -0.1292582    0.1799056
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.3173315    0.1643310    0.4423195
