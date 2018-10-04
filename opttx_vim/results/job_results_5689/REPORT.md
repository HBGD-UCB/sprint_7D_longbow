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
![](/tmp/80d797d5-1fa3-4707-9661-c0191e033698/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/80d797d5-1fa3-4707-9661-c0191e033698/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.5379801   0.3000925   0.7758678
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1634180   0.0851688   0.2416673
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              NA                0.5664325   0.4289681   0.7038970
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.5850747   0.4553218   0.7148276
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5915003   0.5471700   0.6358306
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.3707072   0.3314952   0.4099192
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.3683273   0.3284927   0.4081619
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5112978   0.4236619   0.5989338
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.2256178   0.2040002   0.2472354
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.3174155   0.2688295   0.3660016
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              NA                0.2741477   0.2109184   0.3373770
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.3354592   0.2075088   0.4634096
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.2086111   0.1723022   0.2449201
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.1515193   0.1224117   0.1806270
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.1743802   0.1416894   0.2070709
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1368885   0.0775237   0.1962532
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1026559   0.0875268   0.1177850
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.0821664   0.0505654   0.1137674
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.3612799   0.1687546   0.5538053
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1550976   0.0775703   0.2326249
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              NA                0.2576451   0.0966966   0.4185936
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.4024201   0.2942671   0.5105732
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              NA                0.5630803   0.5084827   0.6176779
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              NA                0.2667436   0.2248177   0.3086695
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.2326910   0.1620234   0.3033586
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.5343963   0.4755952   0.5931973
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1824965   0.1597392   0.2052539
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2557067   0.2077078   0.3037055


### Parameter: E(Y)


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.5372512   0.4684884   0.6060140
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          observed             NA                0.2569805   0.1967846   0.3171763
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           observed             NA                0.6180987   0.5562293   0.6799682
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.5617034   0.4975965   0.6258102
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.6008773   0.5591106   0.6426440
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.3750562   0.3373343   0.4127781
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.3955708   0.3580713   0.4330703
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.6252650   0.5788433   0.6716868
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2534917   0.2457069   0.2612765
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.4180758   0.3997759   0.4363757
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           observed             NA                0.3722481   0.3107893   0.4337069
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3188746   0.2585718   0.3791775
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.2286442   0.1928182   0.2644702
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.1595307   0.1310217   0.1880397
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.1899030   0.1597972   0.2200088
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          observed             NA                0.1774229   0.1410212   0.2138246
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.1311454   0.1255279   0.1367628
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.0856355   0.0742717   0.0969992
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.4229233   0.3459299   0.4999168
6-24 months                  ki0047075b-MAL-ED       NEPAL          observed             NA                0.2065625   0.1487149   0.2644101
6-24 months                  ki0047075b-MAL-ED       PERU           observed             NA                0.3968056   0.3180143   0.4755969
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.3520073   0.2764891   0.4275255
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     observed             NA                0.5732865   0.5209343   0.6256386
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     observed             NA                0.3006127   0.2585609   0.3426645
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.2633855   0.2249942   0.3017767
6-24 months                  ki1113344-GMS-Nepal     NEPAL          observed             NA                0.5552468   0.5022277   0.6082659
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.2172714   0.2079112   0.2266317
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.3738659   0.3551695   0.3925624


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     optimal              observed          1.0013567   0.6558211   1.5289464
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          optimal              observed          0.6359161   0.4260681   0.9491187
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           optimal              observed          0.9164110   0.7384754   1.1372202
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          1.0416080   0.8505075   1.2756469
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.9843944   0.9618173   1.0075015
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     optimal              observed          0.9884043   0.9566720   1.0211892
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.9311286   0.8841686   0.9805828
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.8177298   0.7012003   0.9536249
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.8900401   0.8103219   0.9776009
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.7592297   0.6542001   0.8811213
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           optimal              observed          0.7364649   0.6374909   0.8508052
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          1.0520097   0.7343485   1.5070833
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.9123831   0.8498736   0.9794903
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     optimal              observed          0.9497817   0.8879649   1.0159021
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.9182591   0.8326665   1.0126500
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.7715379   0.5144305   1.1571450
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.7827643   0.6774450   0.9044571
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.9594904   0.6600266   1.3948254
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     optimal              observed          0.8542446   0.5186497   1.4069877
6-24 months                  ki0047075b-MAL-ED       NEPAL          optimal              observed          0.7508506   0.5024827   1.1219823
6-24 months                  ki0047075b-MAL-ED       PERU           optimal              observed          0.6492981   0.3643290   1.1571631
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   optimal              observed          1.1432154   0.8590860   1.5213162
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     optimal              observed          0.9821971   0.9571361   1.0079142
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     optimal              observed          0.8873331   0.8294566   0.9492481
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     optimal              observed          0.8834618   0.6738517   1.1582739
6-24 months                  ki1113344-GMS-Nepal     NEPAL          optimal              observed          0.9624482   0.8923596   1.0380417
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     optimal              observed          0.8399472   0.7423878   0.9503272
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     optimal              observed          0.6839529   0.5709628   0.8193030
