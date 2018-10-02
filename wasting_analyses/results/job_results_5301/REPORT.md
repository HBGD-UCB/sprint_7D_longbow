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
![](/tmp/e2d43116-fd72-4917-9668-23a55a2524e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e2d43116-fd72-4917-9668-23a55a2524e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e2d43116-fd72-4917-9668-23a55a2524e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e2d43116-fd72-4917-9668-23a55a2524e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.4219418   0.3545177   0.4893659
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.2692503   0.2124533   0.3260473
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                0.4217764   0.3319514   0.5116013
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    NA                0.4139781   0.3367745   0.4911817
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1907581   0.1262442   0.2552719
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1846874   0.1071969   0.2621779
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1216330   0.0644289   0.1788370
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1657475   0.1127324   0.2187627
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                0.4568527   0.4035648   0.5101406
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    NA                0.2749702   0.2096286   0.3403119
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3666364   0.3129640   0.4203088
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4240150   0.2277970   0.6202331
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5376693   0.4880440   0.5872947
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4623934   0.3918930   0.5328938
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0956334   0.0883065   0.1029603
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1016881   0.0946862   0.1086900
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1700582   0.1647284   0.1753879
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1266075   0.0907735   0.1624415
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2582633   0.2378774   0.2786492
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2589204   0.2414168   0.2764239
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.0600000   0.0133640   0.1066360
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0807453   0.0385810   0.1229097
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                0.1253131   0.0564666   0.1941596
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    NA                0.1456358   0.0867476   0.2045240
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                0.0642857   0.0235729   0.1049985
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    NA                0.0618557   0.0138155   0.1098959
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                0.1939320   0.1501655   0.2376986
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    NA                0.1645731   0.0918698   0.2372765
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1257045   0.0965229   0.1548861
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1681421   0.1003475   0.2359367
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1369632   0.1024318   0.1714946
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1681047   0.1163591   0.2198502
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0324988   0.0280336   0.0369641
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0325422   0.0283941   0.0366904
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0715806   0.0679108   0.0752504
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1164585   0.0787991   0.1541179
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0210981   0.0135722   0.0286241
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0267610   0.0206213   0.0329008
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1849470   0.1078504   0.2620436
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1576359   0.0991147   0.2161572
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                0.2489872   0.1644887   0.3334858
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    NA                0.2885957   0.2140299   0.3631615
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                0.1576436   0.0973382   0.2179490
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    NA                0.1466757   0.0753654   0.2179860
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1237286   0.0598653   0.1875920
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1521460   0.0970343   0.2072576
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                0.3420694   0.2891081   0.3950306
6-24 months                   ki1000109-EE              PAKISTAN       1                    NA                0.1339375   0.0547053   0.2131698
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3078963   0.2591984   0.3565941
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3113079   0.1454122   0.4772035
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4764998   0.4265371   0.5264624
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4176990   0.3434664   0.4919316
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0902791   0.0822639   0.0982943
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0970145   0.0893192   0.1047098
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.1641505   0.1580178   0.1702832
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1639162   0.0933215   0.2345108
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2500869   0.2292319   0.2709418
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2452037   0.2277426   0.2626647


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.6381219   0.4895541   0.8317765
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          1                    0                 0.9815109   0.7390393   1.3035351
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9681763   0.5653298   1.6580857
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.3626856   0.7794332   2.3823877
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       1                    0                 0.6018794   0.4635807   0.7814363
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1565001   0.6983337   1.9152629
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.6819570   0.8784624   3.2203762
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8599959   0.7195782   1.0278145
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0633117   0.9604781   1.1771552
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.7444953   0.5602787   0.9892813
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0025441   0.9044725   1.1112497
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.3457557   0.5275912   3.4326926
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          1                    0                 1.1621759   0.5877280   2.2980916
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          1                    0                 0.9621993   0.3532196   2.6211100
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       1                    0                 0.8486124   0.5187447   1.3882417
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.3375983   0.9082883   1.9698252
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          1                    0                 1.2273710   0.8246357   1.8267939
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0013349   0.8312738   1.2061869
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 1.6269565   1.1729223   2.2567458
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.2684072   0.8218381   1.9576322
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8523302   0.4873818   1.4905499
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA          1                    0                 1.1590783   0.7622393   1.7625206
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL          1                    0                 0.9304262   0.5017410   1.7253779
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.2296747   0.6618594   2.2846238
6-24 months                   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN       1                    0                 0.3915507   0.2123804   0.7218743
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.0110804   0.5490025   1.8620744
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 2.8221519   1.1760088   6.7725184
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8765986   0.7131404   1.0775228
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.0746065   0.9556905   1.2083191
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.9985728   0.6480659   1.5386515
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.9804740   0.8791655   1.0934566


### Parameter: PAR


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.2043846   -0.2581549   -0.1506142
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0585111   -0.1285408    0.0115186
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0024735   -0.0433278    0.0383808
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0270157   -0.0199277    0.0739591
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0191869   -0.0409593    0.0025855
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0040121   -0.0097014    0.0177255
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0532361   -0.0009927    0.1074648
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0208783   -0.0482735    0.0065169
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0047132   -0.0007165    0.0101428
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000780   -0.0004061    0.0002501
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0020015   -0.0151397    0.0191428
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0127969   -0.0260049    0.0515987
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0304246   -0.0232514    0.0841007
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0009946   -0.0267681    0.0247790
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                -0.0009026   -0.0198023    0.0179972
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0031256   -0.0005603    0.0068115
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0050601   -0.0146918    0.0248121
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0004524   -0.0037568    0.0028520
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0003093   -0.0000097    0.0006284
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0045222   -0.0021207    0.0111651
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0050307   -0.0644424    0.0543810
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0233532   -0.0422095    0.0889159
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0044521   -0.0421421    0.0332379
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0174478   -0.0340362    0.0689319
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0114027   -0.0328684    0.0100630
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0019207   -0.0172277    0.0133862
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0804864    0.0358539    0.1251190
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0156789   -0.0425812    0.0112235
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0041478   -0.0017855    0.0100812
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0000366   -0.0002419    0.0001687
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0019822   -0.0194292    0.0154648


### Parameter: PAF


agecat                        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.9394518   -1.3267516   -0.6166201
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA          0                    NA                -0.1610698   -0.3747233    0.0193787
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0131372   -0.2551124    0.1821872
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1817417   -0.1982790    0.4412431
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN       0                    NA                -0.0438392   -0.0954120    0.0053055
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0108245   -0.0270618    0.0473132
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.3716666   -0.1397603    0.6536089
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0403998   -0.0950135    0.0114899
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0469690   -0.0085650    0.0994452
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0004590   -0.0023909    0.0014693
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0076904   -0.0603443    0.0713598
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.1757895   -0.5645205    0.5657948
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA          0                    NA                 0.1953582   -0.2382183    0.4771129
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0157143   -0.5165711    0.3197315
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN       0                    NA                -0.0046758   -0.1075578    0.0886495
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0242614   -0.0032158    0.0509861
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0356289   -0.1134042    0.1647134
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0141176   -0.1227388    0.0839949
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0043029   -0.0001445    0.0087305
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.1765080   -0.1241254    0.3967408
6-24 months                   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0279613   -0.4174463    0.2545013
6-24 months                   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0857500   -0.1892434    0.2971557
6-24 months                   ki0047075b-MAL-ED         NEPAL          0                    NA                -0.0290622   -0.3069175    0.1897200
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1235889   -0.3263664    0.4209017
6-24 months                   ki1000109-EE              PAKISTAN       0                    NA                -0.0344841   -0.1015002    0.0284548
6-24 months                   ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0062774   -0.0573230    0.0423037
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.6120323    0.1102972    0.8308211
6-24 months                   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0340238   -0.0941872    0.0228316
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0439263   -0.0208526    0.1045946
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0002231   -0.0014744    0.0010266
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0079895   -0.0808777    0.0599835
