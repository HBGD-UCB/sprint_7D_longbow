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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      0      242     842
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      1      442     842
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      0       78     842
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      1       80     842
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      1        3     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      0      142     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      1       42     197
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    24709   36790
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     8771   36790
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2751   36790
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      559   36790
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     3678    7525
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     2845    7525
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      705    7525
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      297    7525
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      0      556     842
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      1      128     842
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      0      138     842
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      1       20     842
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      1        2     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      0      156     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      1       28     197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    28882   36746
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4562   36746
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     3050   36746
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      252   36746
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     5764    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      564    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      914    7302
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       60    7302
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      0      230     678
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      1      314     678
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      0       74     678
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      1       60     678
6-24 months                  ki1114097-CONTENT          PERU                           0                      0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      0      142     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      1       14     167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      0    14547   20951
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4234   20951
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1859   20951
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      1      311   20951
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      0     3676    6983
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      1     2370    6983
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      0      699    6983
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      1      238    6983


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
![](/tmp/05254467-3fa8-47d3-81d6-e88a67b7ea17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05254467-3fa8-47d3-81d6-e88a67b7ea17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05254467-3fa8-47d3-81d6-e88a67b7ea17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05254467-3fa8-47d3-81d6-e88a67b7ea17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.5376344   0.4658053   0.6094635
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                0.3219636   0.2370304   0.4068969
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1651925   0.0869368   0.2434483
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                0.6305937   0.5618875   0.6992999
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                0.5665913   0.4277235   0.7054591
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405088   0.8594912
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.5545024   0.4872940   0.6217107
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.7638317   0.6656837   0.8619798
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5930628   0.5486898   0.6374358
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4292367   0.2975470   0.5609264
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3702584   0.3310709   0.4094459
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.5356084   0.4824009   0.5888159
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.3873065   0.3470138   0.4275992
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.6492214   0.5990835   0.6993592
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.5335863   0.4423247   0.6248478
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2563424   0.2483445   0.2643404
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2263152   0.2047989   0.2478315
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4364998   0.4165520   0.4564475
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3115552   0.2619505   0.3611598
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                0.3575538   0.2894365   0.4256711
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                0.4189935   0.2827011   0.5552859
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848305   0.6151695
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3127962   0.2501027   0.3754897
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.3950977   0.3024205   0.4877749
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2089423   0.1725049   0.2453798
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.2375390   0.1255380   0.3495400
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1513973   0.1222844   0.1805102
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.1966209   0.1333176   0.2599242
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1704898   0.1376401   0.2033394
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1912467   0.1506863   0.2318070
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1470419   0.0907697   0.2033142
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.1327853   0.1270164   0.1385542
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.0964726   0.0814905   0.1114548
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.0892977   0.0772084   0.1013870
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.0919857   0.0602544   0.1237170
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193179   0.6499128
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4246575   0.3442264   0.5050887
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                0.2463342   0.1636469   0.3290215
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                0.1558959   0.0783794   0.2334125
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368287   0.6965047
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3541667   0.2758007   0.4325326
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4488090   0.3034879   0.5941300
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.2960650   0.2527367   0.3393933
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2119270   0.1412085   0.2826455
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2603208   0.2171787   0.3034628
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5877774   0.5308052   0.6447496
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                0.5439767   0.4634957   0.6244577
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2193042   0.2096222   0.2289862
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2150344   0.1917271   0.2383417
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3937484   0.3735208   0.4139760
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2541624   0.2051807   0.3031442


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
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2536015   0.2458167   0.2613863
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4175415   0.3992416   0.4358414
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
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2169348   0.2075745   0.2262950
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3734784   0.3547820   0.3921749


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    0                 1.0155317   0.6355185   1.6227767
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    0                 0.5130783   0.2984021   0.8821965
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    0                 0.8985046   0.6876093   1.1740831
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.8530806   0.6045731   1.2037362
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.7764312   0.6699660   0.8998150
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.8625973   0.6241561   1.1921284
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.7231151   0.6317370   0.8277105
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    0                 0.8218865   0.6812729   0.9915225
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.8828629   0.8002805   0.9739670
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.7137579   0.6044909   0.8427760
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    0                 1.1718335   0.8054273   1.7049259
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.7819905   0.4404479   1.3883803
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.5288371   0.3960124   0.7062120
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.6373574   0.3837168   1.0586570
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 0.8670987   0.5969383   1.2595275
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    0                 0.7688601   0.4966225   1.1903325
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.7265310   0.6195652   0.8519642
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    0                 1.0301018   0.7125946   1.4890790
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    0                 1.1041096   0.5399572   2.2576936
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    0                 0.6328636   0.3474950   1.1525818
6-24 months                  ki0047075b-MAL-ED       PERU           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU           1                    0                 0.5817308   0.2959394   1.1435133
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    0                 0.8500000   0.4191021   1.7239238
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    0                 0.8130678   0.6179881   1.0697281
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    0                 0.6596681   0.4622662   0.9413666
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    0                 1.2283510   0.8461944   1.7830963
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    0                 0.9254807   0.7752353   1.1048447
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    0                 0.9805302   0.8738298   1.1002595
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    0                 0.6454945   0.5288073   0.7879301


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0075340   -0.2201234    0.2351915
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0658060   -0.1158419   -0.0157701
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                -0.0129466   -0.0442921    0.0183988
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0872294   -0.2882191    0.1137603
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1626975   -0.2565910   -0.0688040
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.0538423   -0.1789730    0.0712883
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.1420402   -0.1878613   -0.0962192
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0292689   -0.0526104   -0.0059274
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0027409   -0.0046625   -0.0008193
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0189582   -0.0263067   -0.0116098
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                 0.0121941   -0.0187619    0.0431501
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0796537   -0.2843911    0.1250837
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1663642   -0.2514218   -0.0813066
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.0782330   -0.1836177    0.0271516
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0067281   -0.0603910    0.0469348
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0154747   -0.0316557    0.0007064
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0017778   -0.0031147   -0.0004409
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0038417   -0.0077570    0.0000737
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0367683   -0.2177933    0.2913298
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                -0.0399850   -0.0907125    0.0107426
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                -0.0337789   -0.0700989    0.0025410
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.0576923   -0.3259547    0.2105701
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.1196333   -0.2914882    0.0522217
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1490278   -0.2897468   -0.0083089
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.0509188   -0.0128830    0.1147207
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0361550   -0.0631697   -0.0091403
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0023694   -0.0049161    0.0001773
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0202699   -0.0280059   -0.0125340


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0140313   -0.5157252    0.3586342
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                -0.2568965   -0.4663965   -0.0773271
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                -0.0209612   -0.0730901    0.0286354
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.1550000   -0.5746925    0.1528346
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.2706509   -0.4406100   -0.1207431
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.1434287   -0.5303151    0.1456470
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.3609038   -0.4947957   -0.2390049
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0472115   -0.0860306   -0.0097799
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0108080   -0.0184247   -0.0032482
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0454044   -0.0631991   -0.0279075
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                 0.0329795   -0.0545192    0.1132180
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.2486486   -1.0837068    0.2517549
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.7273279   -1.1619278   -0.3800932
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.4910866   -1.3185235    0.0410538
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                -0.0354312   -0.3599200    0.2116317
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0880385   -0.1850819    0.0010583
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0135704   -0.0238459   -0.0033979
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0449549   -0.0920794    0.0001361
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                 0.0872560   -0.7693924    0.5291595
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                -0.1937733   -0.4636768    0.0263596
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                -0.0853061   -0.1817373    0.0032563
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                -0.1607143   -1.2101558    0.3904241
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                -0.2089028   -0.5512663    0.0579013
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                -0.4971219   -1.0591201   -0.0885106
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                 0.1937213   -0.0874948    0.4022175
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                -0.0655430   -0.1167515   -0.0166827
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                -0.0109223   -0.0227432    0.0007621
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                -0.0542734   -0.0753749   -0.0335860
