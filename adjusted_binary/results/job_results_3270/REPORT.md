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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/510363a9-92af-4b2a-8d55-e4dd02aa7f3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/510363a9-92af-4b2a-8d55-e4dd02aa7f3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/510363a9-92af-4b2a-8d55-e4dd02aa7f3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/510363a9-92af-4b2a-8d55-e4dd02aa7f3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4461889   0.3549886   0.5373893
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5217258   0.4439092   0.5995423
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1280657   0.0691672   0.1869642
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1995119   0.1264587   0.2725651
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5127276   0.4170027   0.6084525
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5188503   0.4361012   0.6015994
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2435878   0.1727223   0.3144533
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2878940   0.2099333   0.3658546
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5181101   0.4022348   0.6339854
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5830428   0.5159916   0.6500940
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4717509   0.3785755   0.5649263
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.5192597   0.4453427   0.5931767
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8206522   0.7650924   0.8762120
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                0.8853668   0.8423336   0.9284001
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                0.7440042   0.6548791   0.8331294
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5724455   0.5176307   0.6272604
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.7059895   0.6364050   0.7755739
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2658358   0.1799251   0.3517465
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4141112   0.3740780   0.4541445
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6652612   0.6166744   0.7138481
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5030567   0.4304353   0.5756782
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3269853   0.3152797   0.3386908
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3155733   0.3045834   0.3265633
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2550083   0.2471546   0.2628620
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1713562   0.1352009   0.2075114
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3997248   0.3721734   0.4272762
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4222119   0.3992785   0.4451453
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1940217   0.1089609   0.2790825
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2235537   0.1548652   0.2922423
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0740741   0.0245628   0.1235853
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1200000   0.0561551   0.1838449
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.3027356   0.2148527   0.3906185
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1976296   0.1352199   0.2600392
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0655738   0.0215454   0.1096021
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150100   0.1183233
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3124341   0.1980776   0.4267905
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.3569516   0.2926032   0.4213000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.1798177   0.1021804   0.2574549
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.2811298   0.2142652   0.3479944
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3731462   0.2195873   0.5267050
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2899362   0.2245651   0.3553074
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.5992513   0.5343286   0.6641740
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.3362171   0.2434189   0.4290153
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2030011   0.1767523   0.2292498
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1409336   0.1116137   0.1702535
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1644857   0.0962819   0.2326895
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1893592   0.1572933   0.2214251
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1811568   0.1403424   0.2219712
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1372185   0.0804345   0.1940026
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1761093   0.1666325   0.1855862
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1588377   0.1501819   0.1674935
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1313902   0.1257232   0.1370572
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1342166   0.1010931   0.1673401
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0869501   0.0654783   0.1084220
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0848164   0.0720226   0.0976102
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.2729359   0.1836282   0.3622436
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.3721307   0.2875136   0.4567479
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3524927   0.2353731   0.4696123
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4474868   0.3493872   0.5455863
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1930614   0.1204416   0.2656813
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2344398   0.1419679   0.3269116
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3333007   0.1787973   0.4878041
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4159406   0.3247584   0.5071228
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4018253   0.2914440   0.5122065
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3648506   0.2737438   0.4559573
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865140   0.8771223
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7967480   0.7253845   0.8681115
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                0.7234578   0.6233720   0.8235436
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                0.5454207   0.3722850   0.7185563
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4911083   0.4441494   0.5380671
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6210665   0.5064062   0.7357267
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6021039   0.5444310   0.6597768
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4724595   0.3828474   0.5620715
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2425187   0.2285951   0.2564424
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2407154   0.2280066   0.2534241
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3656613   0.3390793   0.3922434
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3723619   0.3484117   0.3963121


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5185185   0.4517302   0.5853069
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1394231   0.0922358   0.1866104
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5192308   0.4511677   0.5872938
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5018868   0.4415735   0.5622001
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.6280488   0.5852977   0.6707999
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.3237628   0.3151026   0.3324231
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2546731   0.2468524   0.2624937
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4168323   0.3985283   0.4351363
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2129630   0.1582389   0.2676870
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0961538   0.0559939   0.1363138
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2115385   0.1559035   0.2671734
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0660377   0.0325283   0.0995472
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2867925   0.2322370   0.3413479
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1829268   0.1487307   0.2171229
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1700741   0.1631162   0.1770320
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1316263   0.1259812   0.1372713
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4177215   0.3405766   0.4948664
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3630573   0.2875961   0.4385185
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1000109-EE              PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5572519   0.5080809   0.6064229
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2447019   0.2346857   0.2547181
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3731941   0.3544912   0.3918971


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1692934   0.9262389   1.4761279
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    0                 1.5578869   0.8628277   2.8128577
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0119414   0.7996456   1.2805991
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1818897   0.8123316   1.7195727
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    0                 1.1253261   0.8802288   1.4386699
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.1007075   0.8706333   1.3915812
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0638084   0.8770817   1.2902883
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    0                 0.8403345   0.7392794   0.9552031
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.2332867   1.0881764   1.3977478
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.5577707   1.1164002   2.1736376
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7561792   0.6434969   0.8885934
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9650996   0.9205537   1.0118010
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.6719631   0.5434741   0.8308296
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0562565   0.9701442   1.1500124
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1522102   0.6823458   1.9456239
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    0                 1.6200000   0.6894410   3.8065622
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    0                 0.6528125   0.4383862   0.9721204
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0166667   0.3646717   2.8343609
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    0                 1.1424861   0.7659548   1.7041143
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.5634160   0.9639968   2.5355579
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7770044   0.4862525   1.2416099
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    0                 0.5610620   0.4202046   0.7491364
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.6942505   0.5362050   0.8988798
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.1512195   0.7375402   1.7969277
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7574574   0.4728353   1.2134072
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9019267   0.8388535   0.9697422
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.0215115   0.7963362   1.3103583
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9754600   0.7337808   1.2967391
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.3634363   0.9309670   1.9968041
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    0                 1.2694924   0.8628359   1.8678070
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2143273   0.7041907   2.0940218
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    0                 1.2479438   0.7473112   2.0839563
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9079831   0.6263818   1.3161836
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1685637   0.8655867   1.5775902
6-24 months                  ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN                       1                    0                 0.7539081   0.5349431   1.0625005
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.2646223   1.0372874   1.5417805
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 3.7067873   1.5764260   8.7160907
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7846809   0.6344759   0.9704453
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9925640   0.9197646   1.0711254
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0183244   0.9262952   1.1194969


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0723296    0.0032532    0.1414060
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0113574   -0.0343513    0.0570660
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0065032   -0.0670744    0.0800807
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0158461   -0.0272731    0.0589654
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0495591   -0.0494370    0.1485552
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0301359   -0.0419422    0.1022140
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0413568   -0.0847733    0.1674869
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                -0.0178969   -0.0419750    0.0061811
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0079872   -0.0017727    0.0177471
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1277323    0.0467454    0.2087193
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0372125   -0.0653148   -0.0091101
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0032224   -0.0113737    0.0049288
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0003352   -0.0007524    0.0000820
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0171076   -0.0055050    0.0397201
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0189413   -0.0494108    0.0872934
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0220798   -0.0168887    0.0610482
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0911971   -0.1528337   -0.0295605
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0004640   -0.0283506    0.0292786
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0334306   -0.0640545    0.1309157
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.1069748    0.0439647    0.1699849
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0763425   -0.2159434    0.0632584
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                 0.0031583   -0.0235820    0.0298987
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0052610   -0.0094168   -0.0011051
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.0254071   -0.0380425    0.0888566
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0017701   -0.0199408    0.0234809
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0060352   -0.0125040    0.0004335
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0002361   -0.0001426    0.0006148
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0014077   -0.0178084    0.0149931
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1447856    0.0721997    0.2173715
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0604106   -0.0334845    0.1543057
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0171950   -0.0317193    0.0661093
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0626724   -0.0735024    0.1988473
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0387679   -0.1260516    0.0485157
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0974922   -0.0790216    0.2740059
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                -0.0430454   -0.0974659    0.0113750
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0119668   -0.0020853    0.0260188
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1847208    0.1160939    0.2533478
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0448520   -0.0773034   -0.0124007
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0021832   -0.0079948    0.0123611
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0075328   -0.0149059    0.0299714


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1394928   -0.0039253    0.2624225
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0814598   -0.3064127    0.3541734
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0125246   -0.1396959    0.1444142
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0610796   -0.1203473    0.2131267
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0873028   -0.1052190    0.2462885
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0600453   -0.0951860    0.1932741
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0508828   -0.1179952    0.1942511
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                -0.0206312   -0.0490442    0.0070122
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0137608   -0.0034191    0.0306466
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.3245495    0.0848726    0.5014537
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0592509   -0.1055899   -0.0148541
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0099531   -0.0354562    0.0149218
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0013163   -0.0029543    0.0003190
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0410418   -0.0146009    0.0936330
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0889418   -0.2951012    0.3591025
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2296296   -0.2875307    0.5390630
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.4311136   -0.7643949   -0.1607867
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0070258   -0.5408891    0.3601111
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0966580   -0.2353233    0.3394225
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3730042    0.1070923    0.5597264
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.2572155   -0.8300231    0.1363001
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                 0.0052429   -0.0401189    0.0486263
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0266054   -0.0465657   -0.0070259
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1337969   -0.2726323    0.4104284
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0096763   -0.1164643    0.1215653
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0354858   -0.0742641    0.0018926
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0017935   -0.0010907    0.0046693
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0164556   -0.2270242    0.1579776
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.3466080    0.1564843    0.4938789
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1463068   -0.1136162    0.3455627
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0817809   -0.1822786    0.2868633
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.1582745   -0.2667334    0.4406859
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1067819   -0.3789229    0.1116500
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1251006   -0.1351682    0.3256955
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                -0.0632637   -0.1483317    0.0155024
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0237872   -0.0047183    0.0514839
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.7027726    0.3229871    0.8695089
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0804879   -0.1411125   -0.0230840
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                 0.0089217   -0.0335395    0.0496384
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0201846   -0.0416453    0.0783444
