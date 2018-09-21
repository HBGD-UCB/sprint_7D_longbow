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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
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
* delta_W_gagebrth
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
![](/tmp/3497c0b8-32e8-44be-9894-c3ff28e27599/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3497c0b8-32e8-44be-9894-c3ff28e27599/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3497c0b8-32e8-44be-9894-c3ff28e27599/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3497c0b8-32e8-44be-9894-c3ff28e27599/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.4153398   0.3464799   0.4841998
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2713489   0.2137485   0.3289493
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.4174040   0.3269925   0.5078155
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.4111865   0.3338032   0.4885698
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1906366   0.1260916   0.2551815
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1848593   0.1073692   0.2623494
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1217780   0.0641812   0.1793747
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1656938   0.1125021   0.2188855
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.4565482   0.4029915   0.5101048
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.2738941   0.2053680   0.3424201
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3666364   0.3129640   0.4203088
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4240150   0.2277970   0.6202331
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5377273   0.4879972   0.5874575
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4624479   0.3912301   0.5336658
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0957151   0.0884251   0.1030052
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1012970   0.0943240   0.1082701
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1700582   0.1647284   0.1753879
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1266055   0.0907723   0.1624386
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2574035   0.2367621   0.2780449
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2588203   0.2412509   0.2763898
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1246649   0.0565835   0.1927463
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1454808   0.0868905   0.2040710
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0642857   0.0235729   0.1049985
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.1935050   0.1497627   0.2372473
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.1645694   0.0921949   0.2369438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1257045   0.0965229   0.1548861
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1681421   0.1003475   0.2359367
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1371553   0.1028367   0.1714740
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1710772   0.1202190   0.2219354
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0325146   0.0280475   0.0369817
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0325378   0.0283944   0.0366813
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0715806   0.0679108   0.0752504
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1164572   0.0787952   0.1541192
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0209884   0.0134782   0.0284987
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0267395   0.0206060   0.0328730
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1850325   0.1078991   0.2621659
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1575980   0.0990403   0.2161556
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2491023   0.1651451   0.3330594
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2885466   0.2142741   0.3628191
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1578021   0.0975262   0.2180781
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1464599   0.0751753   0.2177446
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1237069   0.0580559   0.1893580
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1519020   0.0958264   0.2079775
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.3410827   0.2886274   0.3935380
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.1261215   0.0572930   0.1949499
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3078963   0.2591984   0.3565941
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3113079   0.1454122   0.4772035
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4755629   0.4259439   0.5251819
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4158228   0.3441132   0.4875325
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0903211   0.0823352   0.0983070
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0970547   0.0893898   0.1047196
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1641505   0.1580178   0.1702832
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1639154   0.0933211   0.2345097
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2503253   0.2297901   0.2708606
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2456621   0.2283257   0.2629986


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


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.6533178   0.4998693   0.8538715
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    0                 0.9851045   0.7394202   1.3124212
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9696947   0.5661697   1.6608234
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.3606219   0.7749433   2.3889385
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    0                 0.5999237   0.4566010   0.7882340
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1565001   0.6983337   1.9152629
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.6819570   0.8784624   3.2203762
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8600045   0.7185752   1.0292699
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0583180   0.9567389   1.1706818
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.7444833   0.5602707   0.9892636
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0055046   0.9056295   1.1163941
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.3457557   0.5275912   3.4326926
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    0                 1.1669743   0.5923307   2.2991022
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    0                 0.9621993   0.3532196   2.6211100
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    0                 0.8504658   0.5208544   1.3886645
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.3375983   0.9082883   1.9698252
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    0                 1.2473244   0.8461567   1.8386880
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0007149   0.8308346   1.2053306
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 1.6269387   1.1728792   2.2567793
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.2740106   0.8256565   1.9658332
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8517313   0.4869361   1.4898179
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    0                 1.1583459   0.7651450   1.7536089
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9281239   0.5005966   1.7207748
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.2279180   0.6433007   2.3438224
6-24 months                   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN       1                    0                 0.3697680   0.2099251   0.6513197
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.0110804   0.5490025   1.8620744
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 2.8221519   1.1760088   6.7725184
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8743804   0.7147280   1.0696951
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0745520   0.9561171   1.2076575
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.9985680   0.6480628   1.5386443
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.9813715   0.8817965   1.0921908


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.1977826   -0.2518045   -0.1437606
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0541387   -0.1244464    0.0161691
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0023521   -0.0432258    0.0385217
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0268707   -0.0204290    0.0741703
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0188824   -0.0407425    0.0029777
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0040121   -0.0097014    0.0177255
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0532361   -0.0009927    0.1074648
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0209363   -0.0483788    0.0065062
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0046315   -0.0007513    0.0100142
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000780   -0.0004061    0.0002501
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0028614   -0.0145193    0.0202421
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0127969   -0.0260049    0.0515987
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0310728   -0.0220541    0.0841996
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0009946   -0.0267681    0.0247790
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                -0.0004755   -0.0193696    0.0184186
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0031256   -0.0005603    0.0068115
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0048680   -0.0147751    0.0245111
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0004681   -0.0037760    0.0028397
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0003093   -0.0000097    0.0006284
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0046319   -0.0019858    0.0112496
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0051162   -0.0643892    0.0541568
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0232381   -0.0416568    0.0881330
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0046107   -0.0422687    0.0330474
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0174695   -0.0360535    0.0709926
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0104160   -0.0314179    0.0105858
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0019207   -0.0172277    0.0133862
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0804864    0.0358539    0.1251190
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0147420   -0.0414695    0.0119855
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0041058   -0.0018244    0.0100361
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000366   -0.0002419    0.0001687
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0022207   -0.0193272    0.0148858


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.9091058   -1.2863468   -0.5941086
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                -0.1490334   -0.3631047    0.0314186
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0124921   -0.2546078    0.1828998
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1807663   -0.2029348    0.4420779
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0431435   -0.0948527    0.0061236
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0108245   -0.0270618    0.0473132
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.3716666   -0.1397603    0.6536089
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0405121   -0.0952108    0.0114547
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0461548   -0.0088823    0.0981895
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0004590   -0.0023909    0.0014693
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0109941   -0.0580106    0.0754983
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.1757895   -0.5645205    0.5657948
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.1995199   -0.2285669    0.4784425
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0157143   -0.5165711    0.3197315
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                -0.0024634   -0.1053045    0.0908091
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0242614   -0.0032158    0.0509861
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0342761   -0.1137932    0.1626608
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0146082   -0.1233501    0.0836073
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0043029   -0.0001445    0.0087305
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.1807896   -0.1187839    0.4001472
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0284364   -0.4167914    0.2534671
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0853275   -0.1864442    0.2948461
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0300973   -0.3076610    0.1885508
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1237426   -0.3485814    0.4306410
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0315001   -0.0970930    0.0301711
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0062774   -0.0573230    0.0423037
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.6120323    0.1102972    0.8308211
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0319907   -0.0917796    0.0245240
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0434816   -0.0212442    0.1041052
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0002231   -0.0014744    0.0010266
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0089506   -0.0803759    0.0577526
