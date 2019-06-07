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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     0       66     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     1       72     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     0       83     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     1       17     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     0       96     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     1       12     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     0       61     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     1       67     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     0       39     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     1       41     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     0       65     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     1       25     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     0       92     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     1       30     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       81     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       86     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       51     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       47     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       33     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      151     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     0       10     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     1       39     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     0       23     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     1      177     249
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     0       69     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     1       78     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     0      114     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     1      231     492
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4091   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1882   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3493   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1749   11215
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       79   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1       19   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    13637   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4663   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1421    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1056    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      858    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1      551    3886
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       63     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     1       15     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     0       88     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     0      100     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     1        8     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     0      104     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     1       24     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     0       60     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     1       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     0       84     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     1        6     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     0      114     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     1        8     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      116     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       51     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       73     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       25     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      131     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       53     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     0       23     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     1       26     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     0       76     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     1      124     249
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     0      122     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     1       25     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     0      280     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     1       65     492
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5033   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      934   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4263   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      971   11201
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       80   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1       17   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    15859   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2399   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2239    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      209    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1107    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      104    3659
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     0       59     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     1       41     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     0       33     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     1       25     158
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     0       72     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     1        5     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     0       87     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     1        4     168
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     0       55     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     1       43     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     0       36     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     1       21     155
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     0       62     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     1       19     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     0       92     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     1       22     195
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     0       66     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     1       47     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     0       24     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     1       12     149
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       63     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       35     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       37     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       22     157
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       25     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     145
6-24 months                  ki1000109-EE              PAKISTAN                       1                     0       10      97
6-24 months                  ki1000109-EE              PAKISTAN                       1                     1       13      97
6-24 months                  ki1000109-EE              PAKISTAN                       0                     0       21      97
6-24 months                  ki1000109-EE              PAKISTAN                       0                     1       53      97
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     0       63     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     1       53     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     0      111     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     1      166     393
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     2956    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      950    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     2390    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      782    7078
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     0       11   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     1        2   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     0     8226   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2286   10525
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1417    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     1      855    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     0      853    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     1      524    3649


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
![](/tmp/6e753aa6-6a1d-4a2a-8d0a-0c2c10ee8edd/5c9c5648-bca4-4467-9fe2-d71ee8aeeb18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6e753aa6-6a1d-4a2a-8d0a-0c2c10ee8edd/5c9c5648-bca4-4467-9fe2-d71ee8aeeb18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4872683   0.3822137   0.5923229
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.1123698   0.0521802   0.1725594
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.6252834   0.5319694   0.7185973
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2233238   0.1453287   0.3013190
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5145542   0.3913581   0.6377503
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.4790072   0.3845752   0.5734392
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7722047   0.6191548   0.9252546
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                0.7903869   0.6724860   0.9082877
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.5628479   0.5058201   0.6198757
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.2662241   0.1712048   0.3612434
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.5338329   0.4511252   0.6165407
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.3143892   0.3026246   0.3261537
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2126785   0.1957162   0.2296407
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.4120862   0.3855583   0.4386141
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.1955373   0.1086725   0.2824021
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0739166   0.0238969   0.1239363
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1528032   0.0869346   0.2186718
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.1158729   0.0514717   0.1802741
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.2571526   0.1656426   0.3486627
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.2396242   0.1653160   0.3139324
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3171412   0.2485057   0.3857767
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.5234902   0.3699395   0.6770410
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.1171239   0.0956236   0.1386242
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.2528483   0.1778707   0.3278258
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.1373612   0.0870585   0.1876640
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.1614409   0.1522940   0.1705877
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1364986   0.1299088   0.1430884
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.0903700   0.0751934   0.1055466
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4601602   0.3317564   0.5885640
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.3511421   0.2284210   0.4738632
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2339566   0.1496084   0.3183047
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.3325667   0.1759475   0.4891860
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.5389844   0.4296748   0.6482941
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6903472   0.4863681   0.8943263
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                0.5561613   0.3438646   0.7684580
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.5028509   0.4590263   0.5466755
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.0742393   0.0080412   0.1404373
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.4570957   0.3668488   0.5473426
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.2504365   0.2362726   0.2646004
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.3772942   0.3504480   0.4041404


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.5185185   0.4517302   0.5853069
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.1394231   0.0922358   0.1866104
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             NA                0.5192308   0.4511677   0.5872938
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.5018868   0.4415735   0.5622001
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       observed             NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.6280488   0.5852977   0.6707999
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.3237628   0.3151026   0.3324231
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.2544842   0.2466711   0.2622973
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.2129630   0.1582389   0.2676870
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             NA                0.0961538   0.0559939   0.1363138
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             NA                0.2115385   0.1559035   0.2671734
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          observed             NA                0.0660377   0.0325283   0.0995472
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.2867925   0.2322370   0.3413479
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.1829268   0.1487307   0.2171229
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.1700741   0.1631162   0.1770320
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             NA                0.1316263   0.1259812   0.1372713
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             NA                0.4177215   0.3405766   0.4948664
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             NA                0.3630573   0.2875961   0.4385185
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1000109-EE              PAKISTAN                       observed             NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             NA                0.5572519   0.5080809   0.6064229
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       observed             NA                0.2447019   0.2346857   0.2547181
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     observed             NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.0641335   0.8996701   1.2586616
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.2407524   0.8269557   1.8616069
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             optimal           0.8303927   0.7448343   0.9257792
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             optimal           1.1616940   0.9091073   1.4844596
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             optimal           1.1032253   0.8968698   1.3570599
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.0477646   0.8958812   1.2253976
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0525517   0.8788262   1.2606191
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       observed             optimal           1.0975257   0.9651509   1.2480562
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.0312426   0.9727741   1.0932254
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           1.4783341   1.0550209   2.0714961
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.1764894   1.0334462   1.3393317
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           1.0298154   1.0038234   1.0564805
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.1965677   1.1018476   1.2994303
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           1.0035176   0.9541970   1.0553875
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.0891170   0.7609030   1.5589054
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.3008423   0.7725200   2.1904816
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             optimal           1.3843854   1.0005267   1.9155140
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          observed             optimal           0.5699151   0.4404029   0.7375139
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             optimal           1.3449780   1.0042382   1.8013314
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.1968428   0.9336478   1.5342326
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9358722   0.8307019   1.0543575
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             optimal           1.1507562   0.8818834   1.5016042
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.6882989   1.3527754   2.1070410
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           0.7510149   0.5790594   0.9740337
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.3317208   0.9838687   1.8025578
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           1.0534760   1.0136588   1.0948573
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           0.9643049   0.9396800   0.9895751
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           0.9465808   0.8343058   1.0739650
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.9077741   0.7407924   1.1123951
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             optimal           1.1758864   0.8869984   1.5588628
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             optimal           0.8986984   0.7168770   1.1266352
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             optimal           1.1906578   0.7854872   1.8048237
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           0.6735952   0.5705412   0.7952632
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1288673   0.8623441   1.4777643
6-24 months                  ki1000109-EE              PAKISTAN                       observed             optimal           1.2234083   0.8806778   1.6995182
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.0004457   0.9718111   1.0299240
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           3.5405238   1.4808344   8.4650308
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.2191144   1.0311594   1.4413290
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           0.9771016   0.9386595   1.0171181
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           1.0016368   0.9506684   1.0553379


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0312502   -0.0504966    0.1129970
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0270533   -0.0191938    0.0733004
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                -0.1060526   -0.1721542   -0.0399510
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0361101   -0.0185326    0.0907528
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0531150   -0.0531499    0.1593799
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0228796   -0.0521939    0.0979531
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0405807   -0.0984356    0.1795970
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                 0.0770830   -0.0235604    0.1777264
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0175848   -0.0155094    0.0506791
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.1273441    0.0375619    0.2171262
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0942159    0.0256498    0.1627819
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0093737    0.0013386    0.0174087
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0418057    0.0238733    0.0597381
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0014495   -0.0193231    0.0222221
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0174257   -0.0527743    0.0876257
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0222372   -0.0171371    0.0616115
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0587353    0.0077430    0.1097276
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.0498352   -0.0878477   -0.0118227
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0887120    0.0142579    0.1631662
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0471683   -0.0131724    0.1075090
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0203376   -0.0575895    0.0169143
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                 0.0789194   -0.0598757    0.2177145
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0806162    0.0481231    0.1131094
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                -0.0629555   -0.1288757    0.0029648
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0455656    0.0036757    0.0874554
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0086332    0.0024089    0.0148576
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0048723   -0.0083927   -0.0013519
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0048275   -0.0161523    0.0064973
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0424387   -0.1365587    0.0516813
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0617611   -0.0371337    0.1606559
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.0237002   -0.0772122    0.0298118
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0634064   -0.0748033    0.2016162
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.1759271   -0.2567715   -0.0950827
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0889632   -0.0959237    0.2738500
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                 0.1242511   -0.0557678    0.3042699
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0002241   -0.0143821    0.0148304
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.1886066    0.1196789    0.2575343
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1001562    0.0240553    0.1762572
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                -0.0057346   -0.0157831    0.0043139
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0006176   -0.0190873    0.0203225


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0602683   -0.1115186    0.2055052
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.1940374   -0.2092546    0.4628297
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                -0.2042495   -0.3425805   -0.0801712
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.1391881   -0.0999802    0.3263542
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0935668   -0.1149890    0.2631128
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0455871   -0.1162195    0.1839384
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0499279   -0.1378814    0.2067390
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                 0.0888596   -0.0361074    0.1987540
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0302961   -0.0279879    0.0852756
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.3235629    0.0521515    0.5172571
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1500136    0.0323638    0.2533590
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0289522    0.0038088    0.0534610
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.1642763    0.0924335    0.2304320
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0035053   -0.0480016    0.0524807
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0818250   -0.3142280    0.3585243
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.2312673   -0.2944649    0.5434794
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.2776578    0.0005264    0.4779469
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.7546472   -1.2706481   -0.3559066
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.2564934    0.0042203    0.4448551
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.1644684   -0.0710677    0.3482083
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0685219   -0.2038012    0.0515551
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                 0.1310062   -0.1339368    0.3340456
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.4076878    0.2607790    0.5254008
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                -0.3315315   -0.7269386   -0.0266585
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.2490918   -0.0163958    0.4452328
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0507615    0.0134748    0.0866390
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                -0.0370164   -0.0641921   -0.0105347
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0564338   -0.1986013    0.0688710
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.1015956   -0.3499058    0.1010388
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.1495777   -0.1273977    0.3585067
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.1127203   -0.3949394    0.1124012
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.1601281   -0.2730952    0.4459293
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                -0.4845712   -0.7527217   -0.2574453
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1141563   -0.1596299    0.3233021
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                 0.1826114   -0.1354891    0.4115979
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0004455   -0.0290065    0.0290545
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.7175559    0.3247050    0.8818669
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1797324    0.0302178    0.3061959
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                -0.0234350   -0.0653491    0.0168300
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0016342   -0.0518915    0.0524362
