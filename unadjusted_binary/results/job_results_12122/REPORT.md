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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        impfloor    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       86     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      1      100     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      0      159     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      0        4     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      1       10     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      0       87     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      1       95     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      0       79     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      1       38     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      0       72     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      1       14     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      0       70     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      1      120     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      0       21     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      1       27     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       94     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1      117     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       32     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      166     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        3     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     209
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      177     198
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      0        0     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      1        0     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      0      123     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      1      147     270
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       18     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      1       42     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      193     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      1      276     529
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       30     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       25     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      366     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      1      213     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       66     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      310     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      191     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      0      121     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      1      221     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      0       39     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      1       40     421
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      1        3     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      0      142     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      1       42     197
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    12371   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4387   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1379   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      280   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1908    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1451    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      361    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      154    3874
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       13     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        4     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      148     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       38     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      0      168     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      0       10     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      1        4     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      0      145     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      1       37     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      0      105     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      1       12     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      0       85     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      0      122     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      1       68     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      0       28     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      1       20     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        8     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      145     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       66     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      139     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       59     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     209
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      115     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       80     195
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      0        0     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      1        0     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      0      186     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      1       84     270
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       36     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      1       24     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      372     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      1       97     529
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       41     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       14     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      492     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       87     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       37     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      414     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       87     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      0      278     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      1       64     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      0       69     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      1       10     421
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      1        2     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      0      156     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      1       28     197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    14441   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2281   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1525   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      126   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2882    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      282    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      457    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       30    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      1        5     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      0       84     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      1       62     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      0        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      0      157     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      1        9     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      1        6     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      1       58     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      0       79     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      1       26     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      0       71     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      1       13     189
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      0       69     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      1       52     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      0       21     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      1        7     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        5     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       93     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       51     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       30     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      107     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       98     119
6-24 months                  ki1000108-IRC              INDIA                          0                      0        0     186
6-24 months                  ki1000108-IRC              INDIA                          0                      1        0     186
6-24 months                  ki1000108-IRC              INDIA                          1                      0      123     186
6-24 months                  ki1000108-IRC              INDIA                          1                      1       63     186
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      0        8     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      1       18     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      0      139     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      1      179     344
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      0       19     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      1       11     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      0      301     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      1      126     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       29     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      287     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      104     506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      0      115     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      1      157     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      0       37     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      1       30     339
6-24 months                  ki1114097-CONTENT          PERU                           0                      0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      0      142     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      1       14     167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      0     7290   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2125   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      0      933   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      1      157   10505
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1907    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1253    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      0      358    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      1      125    3643


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
![](/tmp/c34454be-66ab-4601-bb4a-c4f5e6b11bb8/054e1914-179f-4b3c-9505-199edec648eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c34454be-66ab-4601-bb4a-c4f5e6b11bb8/054e1914-179f-4b3c-9505-199edec648eb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c34454be-66ab-4601-bb4a-c4f5e6b11bb8/054e1914-179f-4b3c-9505-199edec648eb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c34454be-66ab-4601-bb4a-c4f5e6b11bb8/054e1914-179f-4b3c-9505-199edec648eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.5376344   0.4658053   0.6094635
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                0.3247863   0.2397221   0.4098506
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1627907   0.0845734   0.2410080
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                0.6315789   0.5628449   0.7003130
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                0.5625000   0.4218654   0.7031346
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405088   0.8594912
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.5545024   0.4872940   0.6217107
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7000000   0.5839372   0.8160628
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5884861   0.5439069   0.6330654
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4545455   0.3228480   0.5862429
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3678756   0.3285656   0.4071857
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.4342105   0.3553542   0.5130669
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.3812375   0.3386755   0.4237995
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.6461988   0.5954631   0.6969346
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.5063291   0.3959502   0.6167080
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2617854   0.2536609   0.2699100
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1687764   0.1480704   0.1894823
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4319738   0.4121518   0.4517958
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2990291   0.2552764   0.3427819
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                0.3578947   0.2895876   0.4262019
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                0.4166667   0.2769029   0.5564304
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848305   0.6151695
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3127962   0.2501027   0.3754897
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.4000000   0.2759237   0.5240763
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2068230   0.1701322   0.2435138
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.2545455   0.1393321   0.3697588
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1502591   0.1211308   0.1793874
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2434211   0.1751455   0.3116966
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1736527   0.1404568   0.2068486
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1871345   0.1457500   0.2285190
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1265823   0.0531734   0.1999911
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.1364071   0.1305050   0.1423092
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.0763174   0.0620218   0.0906129
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.0891277   0.0766684   0.1015870
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.0616016   0.0359026   0.0873007
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193179   0.6499128
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4246575   0.3442264   0.5050887
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                0.2476190   0.1648408   0.3303973
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                0.1547619   0.0772119   0.2323119
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368287   0.6965047
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3541667   0.2758007   0.4325326
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3666667   0.1940372   0.5392962
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.2950820   0.2517757   0.3383882
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2521739   0.1727266   0.3316212
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2659847   0.2221447   0.3098246
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5772059   0.5184116   0.6360001
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4477612   0.3285166   0.5670058
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2257037   0.2158195   0.2355878
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1440367   0.1208520   0.1672214
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3965190   0.3764032   0.4166348
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2587992   0.2111584   0.3064400


### Parameter: E(Y)


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2561576   0.1959618   0.3163535
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           NA                   NA                0.6176471   0.5557776   0.6795165
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.5627706   0.4986637   0.6268774
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6011342   0.5593675   0.6429009
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6199525   0.5735307   0.6663743
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2534072   0.2456310   0.2611834
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4143005   0.3961166   0.4324844
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3203463   0.2600435   0.3806492
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2287335   0.1929075   0.2645595
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1757720   0.1393702   0.2121737
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1310075   0.1253900   0.1366249
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2063492   0.1485016   0.2641968
6-24 months                  ki0047075b-MAL-ED       PERU           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5726744   0.5203223   0.6250266
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5516224   0.4986033   0.6046416
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2172299   0.2078539   0.2266059
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3782597   0.3596753   0.3968440


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    0                 1.0155317   0.6355185   1.6227767
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    0                 0.5012240   0.2899847   0.8663404
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    0                 0.8906250   0.6780679   1.1698134
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.8530806   0.6045731   1.2037362
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.8406945   0.7006013   1.0088009
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.8093264   0.5943040   1.1021451
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.8780016   0.7094350   1.0866208
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    0                 0.7835500   0.6214955   0.9878601
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.6447127   0.5688877   0.7306441
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6922390   0.5935366   0.8073553
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    0                 1.1642157   0.7914547   1.7125405
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.7819905   0.4404479   1.3883803
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.5170576   0.3617007   0.7391429
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.5903035   0.3607723   0.9658674
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.7133840   0.5080541   1.0016980
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    0                 0.6764241   0.3636366   1.2582604
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.5594824   0.4626113   0.6766384
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6911617   0.4454282   1.0724614
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    0                 1.1041096   0.5399572   2.2576936
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    0                 0.6250000   0.3421957   1.1415250
6-24 months                  ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU           1                    0                 0.5817308   0.2959394   1.1435133
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.8500000   0.4191021   1.7239238
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.8130678   0.6179881   1.0697281
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.8047690   0.4914714   1.3177840
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 1.0547667   0.7391610   1.5051294
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    0                 0.7757391   0.5832921   1.0316808
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.6381673   0.5413749   0.7522652
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6526779   0.5393236   0.7898569


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0075340   -0.2201234    0.2351915
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0686287   -0.1188138   -0.0184436
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                -0.0139319   -0.0456981    0.0178343
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0872294   -0.2882191    0.1137603
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.0988658   -0.2091351    0.0114035
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.0791511   -0.2046817    0.0463794
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0406424   -0.1094147    0.0281300
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0262463   -0.0496327   -0.0028600
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0083782   -0.0103653   -0.0063912
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0176733   -0.0242501   -0.0110966
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                 0.0118532   -0.0196642    0.0433705
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0796537   -0.2843911    0.1250837
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1712665   -0.2860977   -0.0564353
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.0952395   -0.2037927    0.0133137
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0535283   -0.1118185    0.0047620
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0113625   -0.0273366    0.0046115
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0053997   -0.0067780   -0.0040214
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0036716   -0.0074743    0.0001310
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0367683   -0.2177933    0.2913298
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0412698   -0.0921126    0.0095729
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                -0.0337789   -0.0700989    0.0025410
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0576923   -0.3259547    0.2105701
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1196333   -0.2914882    0.0522217
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.0668855   -0.2331885    0.0994176
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.0106719   -0.0594474    0.0807913
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0255835   -0.0524285    0.0012615
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0084738   -0.0110662   -0.0058813
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0182593   -0.0252404   -0.0112782


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0140313   -0.5157252    0.3586342
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.2679158   -0.4782772   -0.0874893
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                -0.0225564   -0.0754229    0.0277112
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.1550000   -0.5746925    0.1528346
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1644654   -0.3641820    0.0060127
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.2108480   -0.5963830    0.0815783
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.1032664   -0.2927458    0.0584407
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0423360   -0.0810800   -0.0049806
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0330624   -0.0409471   -0.0252373
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0426583   -0.0586152   -0.0269419
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                 0.0320574   -0.0570732    0.1136727
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.2486486   -1.0837068    0.2517549
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.7487603   -1.3309521   -0.3119801
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.5978398   -1.4425269   -0.0452667
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.2818867   -0.6270699   -0.0099342
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0646436   -0.1589268    0.0219693
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0412165   -0.0517816   -0.0307576
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0429653   -0.0880039    0.0002089
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0872560   -0.7693924    0.5291595
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                -0.2000000   -0.4705542    0.0207773
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                -0.0853061   -0.1817373    0.0032563
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.1607143   -1.2101558    0.3904241
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.2089028   -0.5512663    0.0579013
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.2231144   -0.9251199    0.2229010
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.0406015   -0.2669205    0.2734781
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0463786   -0.0965293    0.0014784
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0390083   -0.0510240   -0.0271300
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0482719   -0.0669482   -0.0299225
