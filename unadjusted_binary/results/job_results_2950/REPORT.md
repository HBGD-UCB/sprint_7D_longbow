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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/e9c1bed6-ddd0-4daf-a759-5ce0b7906857/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e9c1bed6-ddd0-4daf-a759-5ce0b7906857/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e9c1bed6-ddd0-4daf-a759-5ce0b7906857/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e9c1bed6-ddd0-4daf-a759-5ce0b7906857/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.5128205   0.4016382   0.6240028
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5217391   0.4382028   0.6052754
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1111111   0.0516976   0.1705246
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1700000   0.0961997   0.2438003
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5125000   0.4027047   0.6222953
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5234375   0.4367050   0.6101700
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2459016   0.1693085   0.3224947
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2777778   0.1850227   0.3705329
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5312500   0.4087613   0.6537387
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5792079   0.5109990   0.6474169
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4795918   0.3804940   0.5786896
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.5149701   0.4390273   0.5909128
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8206522   0.7650924   0.8762120
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                0.8850000   0.8406976   0.9293024
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                0.7959184   0.6828451   0.9089917
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5727459   0.5190227   0.6264691
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6666667   0.5681713   0.7651620
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2619048   0.1678092   0.3560003
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4130053   0.3725179   0.4534927
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6695652   0.6198809   0.7192496
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5306122   0.4498542   0.6113703
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3336513   0.3208864   0.3464161
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3150845   0.3033030   0.3268661
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2549921   0.2471483   0.2628358
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1948718   0.1163642   0.2733794
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3977099   0.3685115   0.4269084
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4270051   0.4036298   0.4503804
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1923077   0.1046420   0.2799734
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2246377   0.1548450   0.2944304
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0740741   0.0245628   0.1235853
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1200000   0.0561551   0.1838449
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2500000   0.1548847   0.3451153
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1875000   0.1197199   0.2552801
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0655738   0.0215454   0.1096021
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150100   0.1183233
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3437500   0.2271679   0.4603321
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.3465347   0.2807878   0.4122815
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2551020   0.1686329   0.3415712
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3053892   0.2354037   0.3753748
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3428571   0.1852433   0.5004710
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2880435   0.2224609   0.3536261
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.6200000   0.5525946   0.6874054
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.5306122   0.3905960   0.6706285
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2020513   0.1758054   0.2282972
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1494253   0.1150118   0.1838387
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2023810   0.1163957   0.2883662
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1880492   0.1559181   0.2201803
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1884058   0.1471013   0.2297103
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1700680   0.1092736   0.2308625
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1855178   0.1749864   0.1960491
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1565276   0.1473078   0.1657473
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1313945   0.1257398   0.1370491
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1752577   0.0989462   0.2515693
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0858794   0.0634722   0.1082867
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0853758   0.0724364   0.0983152
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4310345   0.3031812   0.5588877
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4100000   0.3132959   0.5067041
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3684211   0.2427885   0.4940536
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4387755   0.3402089   0.5373422
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1929825   0.1203530   0.2656119
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2345679   0.1420534   0.3270824
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3333333   0.1788247   0.4878420
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4159292   0.3247463   0.5071121
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3728814   0.2490958   0.4966669
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3571429   0.2619727   0.4523130
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865140   0.8771223
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7967480   0.7253845   0.8681115
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                0.7162162   0.6129642   0.8194682
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                0.5652174   0.3615703   0.7688645
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4918699   0.4444057   0.5393342
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6133333   0.4946575   0.7320092
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5992780   0.5414954   0.6570606
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4568966   0.3661307   0.5476624
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2465322   0.2315325   0.2615318
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2432156   0.2297602   0.2566709
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3682514   0.3399685   0.3965343
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3759148   0.3514799   0.4003498


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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.0173913   0.7770297   1.3321049
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    0                 1.5300000   0.7683655   3.0465968
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0213415   0.7790193   1.3390405
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1296296   0.7155166   1.7834150
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    0                 1.0902737   0.8415826   1.4124541
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.0737674   0.8330320   1.3840721
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0638084   0.8770817   1.2902883
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    0                 0.8993428   0.7735855   1.0455437
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.1639833   1.0028350   1.3510269
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 1.5769292   1.0866192   2.2884796
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7924728   0.6690340   0.9386865
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9443529   0.8951612   0.9962477
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.7642269   0.5104207   1.1442380
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0736596   0.9798736   1.1764221
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.1681159   0.6728207   2.0280214
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    0                 1.6200000   0.6894410   3.8065622
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    0                 0.7500000   0.4437497   1.2676066
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0166667   0.3646717   2.8343609
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    0                 1.0081008   0.6834911   1.4868770
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 1.1971257   0.7951408   1.8023349
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8401268   0.5029807   1.4032608
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    0                 0.8558262   0.6433390   1.1384954
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.7395414   0.5607294   0.9753750
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 0.9291843   0.5877892   1.4688659
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.9026688   0.5934858   1.3729241
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.8437336   0.7774601   0.9156564
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 1.3338290   0.8617895   2.0644248
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 0.9941357   0.7345077   1.3455350
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.9512000   0.6511623   1.3894868
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    0                 1.1909621   0.7916910   1.7915963
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2154882   0.7046807   2.0965690
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    0                 1.2477876   0.7472301   2.0836607
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 0.9577922   0.6257423   1.4660444
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1685637   0.8655867   1.5775902
6-24 months                  ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN                       1                    0                 0.7891715   0.5353463   1.1633435
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    0                 1.2469421   1.0081635   1.5422743
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    0                 3.7067873   1.5764260   8.7160907
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7624117   0.6113480   0.9508032
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    0                 0.9865470   0.9086655   1.0711037
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.0208103   0.9232206   1.1287158


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0056980   -0.0831526    0.0945486
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0283120   -0.0174141    0.0740380
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0067308   -0.0793768    0.0928383
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0135323   -0.0375790    0.0646436
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0364192   -0.0700768    0.1429152
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0222950   -0.0564114    0.1010013
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0413568   -0.0847733    0.1674869
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                -0.0175301   -0.0418315    0.0067713
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0076868   -0.0026057    0.0179793
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1316634    0.0423197    0.2210070
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0415164   -0.0703993   -0.0126336
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0098885   -0.0191416   -0.0006353
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0003190   -0.0007498    0.0001118
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0191224   -0.0052651    0.0435099
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0206553   -0.0509654    0.0922760
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0220798   -0.0168887    0.0610482
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0384615   -0.1104546    0.0335315
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0004640   -0.0283506    0.0292786
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0021147   -0.0995259    0.1037552
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0316904   -0.0384745    0.1018553
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0460535   -0.1895091    0.0974021
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                -0.0175904   -0.0484886    0.0133079
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0043112   -0.0079393   -0.0006830
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0124881   -0.0924736    0.0674973
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0054790   -0.0274514    0.0164935
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0154437   -0.0229049   -0.0079824
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0002318   -0.0001703    0.0006339
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0003369   -0.0177010    0.0170271
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0133130   -0.1147851    0.0881592
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0444822   -0.0566213    0.1455856
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0172740   -0.0316677    0.0662156
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.0626398   -0.0735405    0.1988202
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0098240   -0.1072956    0.0876475
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0974922   -0.0790216    0.2740059
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                -0.0358038   -0.0914465    0.0198388
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0112051   -0.0036705    0.0260807
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.1847208    0.1160939    0.2533478
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0420261   -0.0744294   -0.0096228
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0018303   -0.0129503    0.0092898
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0049427   -0.0191357    0.0290211


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0109890   -0.1761138    0.1683264
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2030651   -0.1945794    0.4683441
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0129630   -0.1676310    0.1656250
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0521610   -0.1666715    0.2299471
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0641556   -0.1437880    0.2342946
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0444223   -0.1260996    0.1891226
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0508828   -0.1179952    0.1942511
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                -0.0202083   -0.0488289    0.0076312
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0132433   -0.0047050    0.0308710
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.3345377    0.0644320    0.5266618
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0661038   -0.1136925   -0.0205487
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0305423   -0.0595221   -0.0023551
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0012525   -0.0029450    0.0004371
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0458756   -0.0143137    0.1024932
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0969900   -0.3098108    0.3774466
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2296296   -0.2875307    0.5390630
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1818182   -0.5745735    0.1129698
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0070258   -0.5408891    0.3601111
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                 0.0061141   -0.3358246    0.2605248
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.1104995   -0.1707706    0.3241962
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1551648   -0.7552876    0.2397794
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                -0.0292000   -0.0819795    0.0210049
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0218022   -0.0390090   -0.0048803
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                -0.0657642   -0.5822592    0.2821319
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0299517   -0.1572733    0.0833621
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0908055   -0.1354796   -0.0478891
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0017611   -0.0012987    0.0048115
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.0039389   -0.2287878    0.1797662
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0318704   -0.3058075    0.1845991
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                 0.1077303   -0.1743057    0.3220289
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0821566   -0.1820816    0.2873280
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                 0.1581921   -0.2668266    0.4406175
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0270592   -0.3339044    0.2092008
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1251006   -0.1351682    0.3256955
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                -0.0526208   -0.1388493    0.0270789
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0222732   -0.0079301    0.0515715
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                 0.7027726    0.3229871    0.8695089
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0754166   -0.1358483   -0.0182002
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                -0.0074796   -0.0539629    0.0369537
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0132443   -0.0533331    0.0756136
