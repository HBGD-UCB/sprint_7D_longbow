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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                   country                        earlybf    ever_wasted   n_cell       n
----------------------------  ------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0       77     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1       24     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0      128     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1       33     262
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    0      117     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1        8     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    0      103     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1        4     232
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0       65     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1       34     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0       91     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1       55     245
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0      115     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1       27     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0       79     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1       18     239
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    0       76     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    1        1     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    0      206     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    1       19     302
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      101     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       14     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      151     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       30     296
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      189     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0      336     754
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1      282     754
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0       88     754
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1       48     754
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0      862    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1      500    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0       60    1465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1       43    1465
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       91     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        9     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      555     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       99     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0      346    1072
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1      404    1072
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0      172    1072
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1      150    1072
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5108   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      547   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5794   12118
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      669   12118
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    43636   52865
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     8942   52865
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0      243   52865
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       44   52865
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     2742   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      962   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     5023   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1     1770   10497
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0       94     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1        6     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0      148     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1       13     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    0      120     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    1        5     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    0      105     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    1        2     232
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0       84     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1       15     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0      122     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1       23     244
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0      131     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1        9     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0       91     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1        6     237
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    0       77     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    1        0     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    0      220     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    1        5     302
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      112     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1        2     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      171     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       10     295
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      208     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1        8     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0      494     746
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1      116     746
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0      108     746
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1       28     746
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0     1167    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1      167    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0       84    1436
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    1436
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       94     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        4     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      635     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0      622    1028
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1       98    1028
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0      260    1028
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1       48    1028
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     5369   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      174   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     6139   11889
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      207   11889
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0    48320   52330
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3726   52330
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0      248   52330
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       36   52330
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0     3218    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1       74    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0     6442    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      180    9914
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0       73     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0      123     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1       24     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    0      109     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    1        3     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    0       92     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    1        3     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0       72     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1       24     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0       99     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1       40     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0      118     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1       22     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0       81     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1       14     235
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    0       68     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    1        1     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    0      185     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    1       16     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       85     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      134     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       24     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      180     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       23     245
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0      398     750
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1      214     750
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0      104     750
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1       34     750
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0      892    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1      396    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0       72    1389
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    1389
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       93     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        5     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      541     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       91     730
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0      396    1072
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1      362    1072
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0      182    1072
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1      132    1072
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     3982    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      401    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     4630    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      497    9510
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    28808   34537
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     5658   34537
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       61   34537
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       10   34537
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     2791   10552
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      939   10552
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     5143   10552
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    1     1679   10552


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/8289edc0-e511-4f21-bfde-727ccf5621d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8289edc0-e511-4f21-bfde-727ccf5621d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8289edc0-e511-4f21-bfde-727ccf5621d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8289edc0-e511-4f21-bfde-727ccf5621d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2376238   0.1544575   0.3207901
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2049689   0.1424946   0.2674433
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.3434343   0.2497041   0.4371645
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.3767123   0.2979517   0.4554729
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1901408   0.1254628   0.2548189
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1855670   0.1080404   0.2630936
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1217391   0.0618758   0.1816025
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1657459   0.1114816   0.2200102
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.4563107   0.4007009   0.5119205
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.3529412   0.2392064   0.4666760
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3671072   0.3133339   0.4208805
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4174757   0.2246570   0.6102945
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5386667   0.4881650   0.5891683
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4658385   0.3887136   0.5429634
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0967286   0.0890242   0.1044329
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1035123   0.0960852   0.1109394
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1700711   0.1647433   0.1753990
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1533101   0.0925110   0.2141092
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2597192   0.2375148   0.2819236
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2605623   0.2426047   0.2785200
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1515152   0.0807414   0.2222889
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1586207   0.0990364   0.2182050
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0642857   0.0235729   0.1049985
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.1901639   0.1460634   0.2342645
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.2058824   0.1096483   0.3021164
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1251874   0.0958138   0.1545610
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1764706   0.1043238   0.2486174
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1361111   0.1006546   0.1715676
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1558442   0.0985029   0.2131854
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0313909   0.0268003   0.0359816
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0326190   0.0282483   0.0369897
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0715905   0.0679225   0.0752585
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1267606   0.0691103   0.1844109
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0224787   0.0147706   0.0301869
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0271821   0.0209842   0.0333801
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2065217   0.1236293   0.2894142
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1632653   0.1033910   0.2231396
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2500000   0.1631961   0.3368039
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2877698   0.2123475   0.3631920
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1571429   0.0967293   0.2175564
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1473684   0.0759360   0.2188008
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1237113   0.0580600   0.1893627
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1518987   0.0958232   0.2079743
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.3496732   0.2961719   0.4031745
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.2463768   0.1445692   0.3481845
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3074534   0.2588273   0.3560796
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2871287   0.1041120   0.4701454
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4775726   0.4272380   0.5279072
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4203822   0.3430969   0.4976674
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0914898   0.0829542   0.1000255
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0969378   0.0888385   0.1050370
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1641618   0.1580315   0.1702921
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1408451   0.0428392   0.2388511
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2517426   0.2295910   0.2738943
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2461155   0.2283729   0.2638581


### Parameter: E(Y)


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.2175573   0.1675030   0.2676115
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          NA                   NA                0.3632653   0.3029199   0.4236107
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1486486   0.1080537   0.1892436
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3706485   0.3201448   0.4211521
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5167910   0.4744466   0.5591355
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1003466   0.0949968   0.1056964
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1699801   0.1646639   0.1752964
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2602648   0.2465010   0.2740287
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0727969   0.0412174   0.1043764
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          NA                   NA                0.1557377   0.1101466   0.2013289
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0632911   0.0322265   0.0943557
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1288301   0.0985331   0.1591271
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1420233   0.1118164   0.1722303
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0320464   0.0288804   0.0352124
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0718899   0.0682258   0.0755541
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0256203   0.0209093   0.0303314
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1799163   0.1311159   0.2287168
6-24 months                   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1411765   0.0983547   0.1839982
6-24 months                   ki1000109-EE              PAKISTAN       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.4608209   0.4185829   0.5030589
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0944269   0.0885495   0.1003044
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.1641138   0.1579966   0.1702311
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2481046   0.2344735   0.2617358


### Parameter: RR


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8625776   0.5422986   1.372012
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    0                 1.0968977   0.7777794   1.546948
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9759450   0.5694425   1.672634
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.3614838   0.7541389   2.457953
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    0                 0.7734668   0.5480463   1.091606
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1372039   0.6872993   1.881615
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.6819570   0.8784624   3.220376
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8647992   0.7149651   1.046034
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0701317   0.9613472   1.191226
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.9014470   0.6060131   1.340906
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0032463   0.8970766   1.121981
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.3457557   0.5275912   3.432693
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    0                 1.0468965   0.5748872   1.906448
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    0                 0.9621993   0.3532196   2.621110
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    0                 1.0826572   0.6425108   1.824322
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.4096513   0.9524740   2.086269
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    0                 1.1449775   0.7294720   1.797154
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0391205   0.8521705   1.267084
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 1.7706335   1.1206179   2.797691
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.2092370   0.7906572   1.849416
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.7905478   0.4589963   1.361592
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    0                 1.1510791   0.7450306   1.778428
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9377990   0.5051542   1.740987
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.2278481   0.6432686   2.343673
6-24 months                   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE              PAKISTAN       1                    0                 0.7045916   0.4534940   1.094721
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    0                 0.9338934   0.4592754   1.898984
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 2.8221519   1.1760088   6.772518
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8802477   0.7121506   1.088023
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0595469   0.9348229   1.200911
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.8579655   0.4271718   1.723206
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.9776473   0.8706373   1.097810


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0200665   -0.0840148   0.0438818
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0198310   -0.0531548   0.0928167
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0018563   -0.0428341   0.0391215
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0269095   -0.0225576   0.0763767
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0186449   -0.0418310   0.0045412
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0035413   -0.0100785   0.0171610
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0532361   -0.0009927   0.1074648
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0218756   -0.0497106   0.0059594
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0036180   -0.0020897   0.0093258
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000910   -0.0004216   0.0002396
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0005456   -0.0182788   0.0193700
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0127969   -0.0260049   0.0515987
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0042226   -0.0507580   0.0592031
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0009946   -0.0267681   0.0247790
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                 0.0028656   -0.0164427   0.0221739
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0036427   -0.0000087   0.0072941
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0059122   -0.0143021   0.0261265
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0006555   -0.0027278   0.0040388
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0002994   -0.0000208   0.0006196
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0031416   -0.0036840   0.0099672
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0266054   -0.0895555   0.0363447
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0223404   -0.0457184   0.0903992
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0039514   -0.0417761   0.0338734
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0174651   -0.0360582   0.0709885
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0190065   -0.0405536   0.0025405
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0014779   -0.0167831   0.0138273
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0804864    0.0358539   0.1251190
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0167517   -0.0438570   0.0103537
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0029371   -0.0034068   0.0092809
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000479   -0.0002535   0.0001576
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0036380   -0.0223339   0.0150579


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0922355   -0.4291316   0.1652424
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0545909   -0.1692903   0.2356060
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0098592   -0.2527180   0.1859177
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1810277   -0.2255848   0.4527383
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0426008   -0.0970936   0.0091854
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0095543   -0.0280579   0.0457903
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.3716666   -0.1397603   0.6536089
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0423297   -0.0977513   0.0102938
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0360554   -0.0225096   0.0912660
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0005353   -0.0024822   0.0014078
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0020964   -0.0729056   0.0718553
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.1757895   -0.5645205   0.5657948
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0271132   -0.3983950   0.3231464
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0157143   -0.5165711   0.3197315
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                 0.0148452   -0.0904092   0.1099396
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0282751    0.0008594   0.0549384
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0416286   -0.1115962   0.1737326
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0204543   -0.0910009   0.1205233
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0041649   -0.0002973   0.0086072
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.1226213   -0.1854997   0.3506591
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.1478766   -0.5553943   0.1528703
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0820312   -0.2049547   0.3006653
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0257937   -0.3048586   0.1935888
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1237113   -0.3486119   0.4306132
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0574794   -0.1247165   0.0057381
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0048301   -0.0559306   0.0437975
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.6120323    0.1102972   0.8308211
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0363518   -0.0969497   0.0208986
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0311042   -0.0384387   0.0959898
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0002921   -0.0015448   0.0009591
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0146632   -0.0929675   0.0580311
