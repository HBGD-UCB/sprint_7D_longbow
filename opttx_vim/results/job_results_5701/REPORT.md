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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                   country                        earlybf    ever_stunted   n_cell       n
---------------------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     0       66     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     1       72     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     0       96     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     1       12     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     0       83     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     1       17     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     0       39     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     1       41     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     0       61     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     1       67     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     0       92     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     1       30     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     0       65     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     1       25     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       51     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       47     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       81     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       86     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       33     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      151     219
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     0       46     498
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     1      354     498
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     0       20     498
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     1       78     498
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     0      228     984
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     1      462     984
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     0      138     984
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     1      156     984
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3493   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1749   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4091   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1882   11215
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    27236   36753
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     9322   36753
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0      157   36753
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1       38   36753
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1578    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1     1042    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2822    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     2103    7545
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       63     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     1       15     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     0      100     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     1        8     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     0       88     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     0       60     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     1       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     0      104     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     1       24     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     0      114     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     1        8     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     0       84     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     1        6     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       73     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       25     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      116     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       51     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      131     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       53     219
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     0      152     498
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     1      248     498
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     0       46     498
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     1       52     498
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     0      560     984
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     1      130     984
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     0      244     984
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     1       50     984
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4263   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      971   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5033   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      934   11201
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    31718   36710
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4798   36710
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0      160   36710
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1       34   36710
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     2214    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      208    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     4478    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      418    7318
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     0       33     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     1       25     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     0       59     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     1       41     158
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     0       87     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     1        4     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     0       72     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     1        5     168
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     0       36     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     1       21     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     0       55     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     1       43     155
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     0       92     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     1       22     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     0       62     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     1       19     195
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     0       24     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     1       12     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     0       66     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     1       47     149
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       37     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       22     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       63     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       35     157
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       25     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     145
6-24 months                  ki1000109-EE              PAKISTAN                       0                     0       42     194
6-24 months                  ki1000109-EE              PAKISTAN                       0                     1      106     194
6-24 months                  ki1000109-EE              PAKISTAN                       1                     0       20     194
6-24 months                  ki1000109-EE              PAKISTAN                       1                     1       26     194
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     0      222     786
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     1      332     786
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     0      126     786
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     1      106     786
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     2390    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      782    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     2956    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      950    7078
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     0    16414   20992
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4553   20992
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     0       21   20992
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     1        4   20992
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1568    6991
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     1      914    6991
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2814    6991
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1695    6991


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6f1581d6-3eae-4286-87fb-8d3c206f154d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f1581d6-3eae-4286-87fb-8d3c206f154d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4785389   0.3890675   0.5680102
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.1096675   0.0505999   0.1687351
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.5207148   0.4322433   0.6091863
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2385435   0.1670828   0.3100041
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5166669   0.4040202   0.6293137
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.3785960   0.2952165   0.4619755
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7658222   0.6263784   0.9052660
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                0.7828565   0.6923609   0.8733522
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.5721870   0.5173565   0.6270176
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.2668437   0.1811415   0.3525459
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.6237871   0.5715048   0.6760693
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.3051697   0.2942770   0.3160624
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1131355   0.0888538   0.1374172
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.3595320   0.3335241   0.3855399
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.1985411   0.1131621   0.2839200
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0739838   0.0244725   0.1234950
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1528973   0.0945774   0.2112172
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.0664901   0.0162005   0.1167798
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.3138824   0.2018102   0.4259546
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.2519231   0.1720842   0.3317621
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2924607   0.2270734   0.3578481
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.5022293   0.4152593   0.5891993
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.0926867   0.0653770   0.1199965
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.1558878   0.1260337   0.1857420
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.1693710   0.1108091   0.2279330
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.1595562   0.1509307   0.1681818
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1314562   0.1257892   0.1371232
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.0638372   0.0522840   0.0753905
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4081322   0.3095447   0.5067198
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.3581371   0.2411525   0.4751216
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.1949145   0.1223226   0.2675064
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.3355577   0.1813454   0.4897700
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.3640271   0.2550311   0.4730230
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7798434   0.6227019   0.9369850
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                0.5234429   0.3625572   0.6843286
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.4921911   0.4452469   0.5391352
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.0769033   0.0110886   0.1427179
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.3112988   0.2406301   0.3819675
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.2095082   0.1971106   0.2219058
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.3259343   0.3007740   0.3510947


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.5171784   0.4503900   0.5839668
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.1401430   0.0929557   0.1873303
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             NA                0.5164198   0.4483567   0.5844828
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2610173   0.2018745   0.3201601
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             NA                0.5669652   0.5073192   0.6266111
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.5046829   0.4443696   0.5649962
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8124434   0.7606615   0.8642253
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       observed             NA                0.8720821   0.8298826   0.9142815
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.5800358   0.5274283   0.6326434
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.3952535   0.3577541   0.4327530
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.6290927   0.5863416   0.6718438
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.3243253   0.3156650   0.3329855
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2548390   0.2470184   0.2626597
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.4176914   0.3993874   0.4359954
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.2133679   0.1586438   0.2680920
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.0965467   0.0563868   0.1367067
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             NA                0.2119469   0.1563120   0.2675819
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          observed             NA                0.0675378   0.0340284   0.1010473
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             NA                0.3479589   0.2906909   0.4052269
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.2880604   0.2335049   0.3426158
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2967223   0.2360776   0.3573670
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             NA                0.6092502   0.5483406   0.6701599
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.1981374   0.1740244   0.2222504
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.1901058   0.1600001   0.2202116
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.1831078   0.1489117   0.2173039
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.1703661   0.1634082   0.1773240
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.1317418   0.1260967   0.1373868
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.0859414   0.0745818   0.0973010
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.4140286   0.3368837   0.4911735
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             NA                0.4125980   0.3348361   0.4903598
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2105916   0.1532506   0.2679325
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             NA                0.3957251   0.3169338   0.4745164
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3631711   0.2877099   0.4386323
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793504   0.7116155   0.8470854
6-24 months                  ki1000109-EE              PAKISTAN                       observed             NA                0.6828793   0.5895982   0.7761603
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.5028831   0.4586572   0.5471090
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.2628500   0.2244587   0.3012412
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.5579245   0.5087535   0.6070955
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.2459553   0.2359391   0.2559714
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.3747503   0.3560473   0.3934532


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.9252878   0.8073648   1.0604345
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          0.7825402   0.5203114   1.1769283
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              observed          1.0083169   0.8840697   1.1500258
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              observed          0.9138990   0.7598021   1.0992487
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              observed          0.9112852   0.7572581   1.0966416
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          0.7501661   0.6328630   0.8892117
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9426161   0.7991966   1.1117728
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              observed          0.8976867   0.8149655   0.9888044
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          0.9864684   0.9694404   1.0037956
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          0.6751204   0.4992859   0.9128789
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.9915662   0.9396092   1.0463963
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          0.9409373   0.9189974   0.9634010
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          0.4439488   0.3582961   0.5500773
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          0.8607599   0.8132435   0.9110525
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.9305106   0.6590725   1.3137401
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          0.7662999   0.4581872   1.2816062
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              observed          0.7213942   0.5536326   0.9399907
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              observed          0.9844874   0.5911020   1.6396754
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              observed          0.9020674   0.6653431   1.2230164
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          0.8745498   0.6841703   1.1179049
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9856379   0.8974563   1.0824839
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              observed          0.8243400   0.7079231   0.9599015
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          0.4677902   0.3456767   0.6330415
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          0.8200055   0.7399747   0.9086919
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.9249799   0.6900409   1.2399087
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          0.9365493   0.9035064   0.9708007
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          0.9978324   0.9949589   1.0007142
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          0.7427997   0.6450429   0.8553718
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          0.9857585   0.8139131   1.1938866
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              observed          0.8680049   0.6686164   1.1268532
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              observed          0.9255570   0.7209641   1.1882086
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              observed          0.8479566   0.5656363   1.2711887
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          1.0023570   0.8093586   1.2413773
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0006326   0.8447835   1.1852333
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              observed          0.7665234   0.5945301   0.9882731
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          0.9787386   0.9511365   1.0071416
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              observed          0.2925748   0.1267522   0.6753335
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              observed          0.5579586   0.4587349   0.6786444
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              observed          0.8518143   0.8161605   0.8890257
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          0.8697374   0.8168309   0.9260707
