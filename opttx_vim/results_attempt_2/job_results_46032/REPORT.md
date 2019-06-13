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
![](/tmp/9736e402-fab9-4168-949f-c94ee41b31f9/7feb2387-a67a-4bff-b50b-2f4ebfa46d08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9736e402-fab9-4168-949f-c94ee41b31f9/7feb2387-a67a-4bff-b50b-2f4ebfa46d08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.7870628   0.7298534   0.8442722
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1620102   0.0832465   0.2407740
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                0.6172509   0.4809580   0.7535439
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.5541913   0.4869269   0.6214558
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5917684   0.5472935   0.6362434
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.4013668   0.3377756   0.4649579
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.3790783   0.3367926   0.4213639
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5353750   0.4246290   0.6461211
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2285187   0.1988049   0.2582324
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3193193   0.2634733   0.3751654
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                0.3081750   0.2119453   0.4044046
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3125743   0.2498472   0.3753014
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.2095300   0.1728201   0.2462399
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.1473464   0.1186796   0.1760132
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.1746494   0.1414447   0.2078540
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1342829   0.0596349   0.2089310
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1061737   0.0833713   0.1289761
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.0989795   0.0648958   0.1330632
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.5352144   0.3147646   0.7556642
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1561351   0.0781618   0.2341085
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                0.2506436   0.0799420   0.4213452
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3543760   0.2759009   0.4328511
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5628867   0.5082618   0.6175116
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.3210297   0.2731980   0.3688613
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2460224   0.1737192   0.3183257
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4458884   0.3192027   0.5725742
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2089313   0.1772634   0.2405992
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2659979   0.2052543   0.3267415


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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           0.6822147   0.6140303   0.7579705
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          observed             optimal           1.5811201   1.0516076   2.3772563
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           observed             optimal           1.0006418   0.8288831   1.2079918
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0154806   0.9803816   1.0518363
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0158268   0.9923054   1.0399056
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     observed             optimal           0.9352900   0.8259424   1.0591142
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0382240   0.9834412   1.0960585
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.1579780   0.9620951   1.3937426
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.1089125   0.9767675   1.2589350
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.2974487   1.0953387   1.5368516
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           observed             optimal           1.1997987   0.9353869   1.5389534
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0248645   0.9620100   1.0918258
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0916504   1.0163740   1.1725020
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     observed             optimal           1.0811663   1.0011536   1.1675737
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0872803   0.9825205   1.2032100
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.3089672   0.7823727   2.1899985
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.2338973   0.9996930   1.5229702
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           0.8633714   0.6282746   1.1864401
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     observed             optimal           0.7873175   0.5226838   1.1859346
6-24 months                  ki0047075b-MAL-ED       NEPAL          observed             optimal           1.3216064   0.8845236   1.9746712
6-24 months                  ki0047075b-MAL-ED       PERU           observed             optimal           1.5798254   0.8393984   2.9733776
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0129760   0.9502324   1.0798625
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     observed             optimal           1.0173884   0.9913102   1.0441527
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     observed             optimal           0.9338115   0.8764978   0.9948728
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.0683817   0.8261149   1.3816957
6-24 months                  ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.2371311   0.9561064   1.6007562
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0397191   0.8975860   1.2043590
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.4220402   1.1404579   1.7731459


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.2501170   -0.3094762   -0.1907578
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.0941474    0.0261133    0.1621815
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                 0.0003961   -0.1158397    0.1166320
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0085792   -0.0108760    0.0280344
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0093658   -0.0044585    0.0231900
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0259725   -0.0758959    0.0239510
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0144899   -0.0060490    0.0350288
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0845775   -0.0141898    0.1833447
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0248885   -0.0041306    0.0539077
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0949811    0.0407444    0.1492179
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                 0.0615729   -0.0148519    0.1379978
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0077720   -0.0120142    0.0275582
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0192035    0.0040736    0.0343334
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                 0.0119596    0.0004235    0.0234956
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0152434   -0.0025594    0.0330463
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0414890   -0.0281030    0.1110811
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0248337    0.0024594    0.0472081
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.0135234   -0.0450341    0.0179872
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.1138307   -0.3296605    0.1019991
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.0502141   -0.0134575    0.1138856
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                 0.1453295   -0.0130157    0.3036748
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0045984   -0.0180566    0.0272533
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0097877   -0.0047832    0.0243586
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0212485   -0.0415512   -0.0009458
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0168234   -0.0465288    0.0801757
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1057340   -0.0085674    0.2200353
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0082986   -0.0224298    0.0390269
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.1122618    0.0535721    0.1709514


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.4658143   -0.6285841   -0.3193125
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.3675370    0.0490750    0.5793470
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                 0.0006414   -0.2064428    0.1721798
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0152446   -0.0200110    0.0492817
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0155802   -0.0077542    0.0383743
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0691871   -0.2107382    0.0558148
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0368167   -0.0168376    0.0876399
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1364257   -0.0393982    0.2825074
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0982156   -0.0237851    0.2056778
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.2292566    0.0870404    0.3493191
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                 0.1665268   -0.0690763    0.3502077
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0242613   -0.0394903    0.0841030
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0839558    0.0161102    0.1471230
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                 0.0750729    0.0011522    0.1435230
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0802740   -0.0177905    0.1688899
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.2360389   -0.2781631    0.5433787
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.1895598   -0.0003071    0.3433883
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                -0.1582501   -0.5916608    0.1571425
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.2701356   -0.9132026    0.1567832
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                 0.2433450   -0.1305520    0.4935866
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                 0.3670187   -0.1913294    0.6636821
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0128098   -0.0523742    0.0739562
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                 0.0170912   -0.0087660    0.0422857
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                -0.0708800   -0.1409041   -0.0051536
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0640049   -0.2104854    0.2762516
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1916782   -0.0459087    0.3752952
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0382018   -0.1140993    0.1696828
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.2967850    0.1231592    0.4360306
