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
![](/tmp/1e7a6cbd-64a0-455c-bc88-9a03f0ff79fa/ad3814a4-ab91-49c4-9cb2-7433a3bcde1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1e7a6cbd-64a0-455c-bc88-9a03f0ff79fa/ad3814a4-ab91-49c4-9cb2-7433a3bcde1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4787874   0.3744471   0.5831276
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.1126592   0.0520077   0.1733108
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                0.5681579   0.4762161   0.6600998
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2223055   0.1474940   0.2971170
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                0.5162406   0.3928912   0.6395901
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.4558546   0.3641517   0.5475575
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8289249   0.7100601   0.9477898
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                0.8016884   0.6897707   0.9136060
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.5628479   0.5058201   0.6198757
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.2606813   0.1654166   0.3559459
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.5346081   0.4526847   0.6165315
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.3231599   0.3113872   0.3349325
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.2033530   0.1864254   0.2202806
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.4098146   0.3830707   0.4365585
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.2420743   0.1512233   0.3329252
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                0.0744870   0.0244910   0.1244831
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                0.1689519   0.0952600   0.2426438
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.0923592   0.0371895   0.1475289
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                0.2574971   0.1671460   0.3478483
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.1793572   0.1137608   0.2449536
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3635180   0.2490132   0.4780229
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                0.5114414   0.3553873   0.6674956
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.1171239   0.0956236   0.1386242
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.2146807   0.1388804   0.2904811
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.1502309   0.0971163   0.2033455
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.1594429   0.1503098   0.1685761
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                0.1314720   0.1257381   0.1372059
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.0872678   0.0702942   0.1042414
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                0.4639783   0.3467665   0.5811900
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                0.3755351   0.2559676   0.4951026
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                0.2353653   0.1476181   0.3231126
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                0.3289893   0.1692017   0.4887770
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                0.3558203   0.2451747   0.4664658
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.6834621   0.4773173   0.8896069
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                0.5499734   0.3352650   0.7646818
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                0.5028509   0.4590263   0.5466755
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                0.0801353   0.0117980   0.1484727
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                0.4618724   0.3698831   0.5538616
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                0.2464436   0.2323591   0.2605281
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                0.3866459   0.3597021   0.4135897


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


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           1.0829829   0.9138402   1.283432
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.2375647   0.8221871   1.862796
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          observed             optimal           0.9138846   0.8122332   1.028258
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          observed             optimal           1.1670156   0.9212769   1.478302
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           observed             optimal           1.0996212   0.8942679   1.352130
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.1009800   0.9463412   1.280888
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9805295   0.8600733   1.117856
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       observed             optimal           1.0820537   0.9583040   1.221784
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.0312426   0.9727741   1.093225
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           1.5097676   1.0685773   2.133115
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.1747836   1.0336242   1.335221
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           1.0018658   0.9772025   1.027152
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.2514404   1.1485630   1.363533
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           1.0090802   0.9598172   1.060872
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.8797423   0.6656566   1.162681
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         observed             optimal           1.2908802   0.7701546   2.163685
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          observed             optimal           1.2520631   0.9071809   1.728059
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          observed             optimal           0.7150100   0.4925001   1.038049
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           observed             optimal           1.3431787   1.0018262   1.800840
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.5990017   1.1775169   2.171355
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8164758   0.6376964   1.045376
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       observed             optimal           1.1778663   0.8914657   1.556279
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.6882989   1.3527754   2.107041
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           0.8845359   0.6411582   1.220297
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.2176378   0.9100122   1.629255
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           1.0666769   1.0249937   1.110055
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     observed             optimal           1.0011731   0.9905163   1.011945
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           0.9802296   0.8514171   1.128531
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     observed             optimal           0.9003040   0.7380247   1.098266
6-24 months                  ki0047075b-MAL-ED         INDIA                          observed             optimal           1.0995063   0.8544057   1.414918
6-24 months                  ki0047075b-MAL-ED         NEPAL                          observed             optimal           0.8933194   0.7106997   1.122864
6-24 months                  ki0047075b-MAL-ED         PERU                           observed             optimal           1.2036049   0.7835894   1.848755
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   observed             optimal           1.0203391   0.8112609   1.283301
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1402393   0.8659545   1.501402
6-24 months                  ki1000109-EE              PAKISTAN                       observed             optimal           1.2371733   0.8833079   1.732802
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          observed             optimal           1.0004457   0.9718111   1.029924
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     observed             optimal           3.2800242   1.4253720   7.547895
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          observed             optimal           1.2065063   1.0196856   1.427555
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       observed             optimal           0.9929327   0.9534391   1.034062
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     observed             optimal           0.9774105   0.9281659   1.029268


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0397312   -0.0414957   0.1209580
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0267639   -0.0199287   0.0734564
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                -0.0489272   -0.1152091   0.0173547
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.0371285   -0.0156933   0.0899503
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0514285   -0.0550100   0.1578670
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0460322   -0.0227097   0.1147741
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0161395   -0.1247542   0.0924751
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                 0.0657815   -0.0309928   0.1625558
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0175848   -0.0155094   0.0506791
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.1328869    0.0428623   0.2229114
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0934407    0.0256097   0.1612717
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0006030   -0.0074521   0.0086580
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0511312    0.0332137   0.0690487
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0037212   -0.0167981   0.0242405
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0291113   -0.0968755   0.0386529
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.0216668   -0.0176643   0.0609979
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0425865   -0.0118625   0.0970356
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.0263214   -0.0619239   0.0092810
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0883675    0.0129137   0.1638214
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.1074353    0.0495294   0.1653412
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0667144   -0.1570982   0.0236695
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                 0.0909682   -0.0509520   0.2328884
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0806162    0.0481231   0.1131094
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                -0.0247879   -0.0938265   0.0442507
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0326959   -0.0111848   0.0765767
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0106312    0.0042631   0.0169992
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0001542   -0.0012531   0.0015616
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0017253   -0.0140243   0.0105737
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.0462568   -0.1377281   0.0452145
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0373681   -0.0574371   0.1321733
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.0251089   -0.0800358   0.0298180
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0669838   -0.0739001   0.2078678
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0072371   -0.0743522   0.0888263
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0958483   -0.0910528   0.2827493
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                 0.1304390   -0.0517983   0.3126763
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0002241   -0.0143821   0.0148304
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.1827105    0.1119500   0.2534711
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.0953795    0.0182372   0.1725218
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                -0.0017417   -0.0117432   0.0082598
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0087341   -0.0287069   0.0112386


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                 0.0766244   -0.0942832   0.2208393
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.1919614   -0.2162682   0.4631724
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          optimal              NA                -0.0942301   -0.2311735   0.0274811
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          optimal              NA                 0.1431134   -0.0854500   0.3235482
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           optimal              NA                 0.0905959   -0.1182332   0.2604264
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0917183   -0.0567014   0.2192915
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0198571   -0.1626916   0.1054305
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       optimal              NA                 0.0758315   -0.0435102   0.1815245
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0302961   -0.0279879   0.0852756
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.3376464    0.0641763   0.5312020
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1487794    0.0325304   0.2510602
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0018624   -0.0233293   0.0264339
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.2009208    0.1293468   0.2666108
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                 0.0089985   -0.0418650   0.0573788
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.1366965   -0.5022761   0.1399191
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         optimal              NA                 0.2253348   -0.2984406   0.5378255
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.2013182   -0.1023160   0.4213161
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.3985819   -1.0304565   0.0366543
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           optimal              NA                 0.2554974    0.0018229   0.4447037
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.3746098    0.1507553   0.5394580
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2247761   -0.5681443   0.0434067
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       optimal              NA                 0.1510072   -0.1217482   0.3574416
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.4076878    0.2607790   0.5254008
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                -0.1305364   -0.5596774   0.1805276
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1787377   -0.0988864   0.3862225
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                 0.0625090    0.0243843   0.0991438
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     optimal              NA                 0.0011718   -0.0095745   0.0118037
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0201691   -0.1745125   0.1138919
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     optimal              NA                -0.1107359   -0.3549681   0.0894736
6-24 months                  ki0047075b-MAL-ED         INDIA                          optimal              NA                 0.0905009   -0.1704042   0.2932453
6-24 months                  ki0047075b-MAL-ED         NEPAL                          optimal              NA                -0.1194205   -0.4070640   0.1094206
6-24 months                  ki0047075b-MAL-ED         PERU                           optimal              NA                 0.1691625   -0.2761786   0.4590954
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              NA                 0.0199337   -0.2326491   0.2207596
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1229911   -0.1547951   0.3339558
6-24 months                  ki1000109-EE              PAKISTAN                       optimal              NA                 0.1917058   -0.1321080   0.4229000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          optimal              NA                 0.0004455   -0.0290065   0.0290545
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     optimal              NA                 0.6951242    0.2984288   0.8675127
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          optimal              NA                 0.1711605    0.0193055   0.2995017
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       optimal              NA                -0.0071176   -0.0488347   0.0329401
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     optimal              NA                -0.0231116   -0.0773936   0.0284356
