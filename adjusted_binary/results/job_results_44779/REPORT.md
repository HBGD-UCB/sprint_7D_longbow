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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                   country                        earlybf    ever_swasted   n_cell       n
----------------------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                     0      153     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                     1        7     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       95     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                     1        5     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     0      104     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                     1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     0      122     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                     1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     0      138     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     0       94     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                     1        3     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     0       95     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                     1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     0      140     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                     1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     0      220     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                     1        3     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     0       76     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                     1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      168     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        9     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0      109     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        2     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      212     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        4     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       43     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     0       59     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                     1        9     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     0      267     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                     1       42     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     0        6     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                     1        2     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      381     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                     1       57     446
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      634     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       20     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0      100     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     0      137     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                     1       24     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     0      295     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                     1       80     536
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5666   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      222   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4986   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      197   11071
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       43   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        4   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    12463   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1      490   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0      846    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1       42    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      515    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1       18    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      155     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                     1        5     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       97     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                     1        2     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     0      105     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                     1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     0      122     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                     1        2     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     0      140     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                     1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     0       96     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                     1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                     0       96     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                     1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                     0      139     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                     1        1     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                     0      222     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                     1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                     0       76     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                     1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      174     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        3     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0      110     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        0     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      214     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     0       64     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                     1        4     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     0      293     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                     1       12     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     0        7     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                     1        1     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      415     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                     1       15     438
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      650     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       98     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     0      148     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                     1        6     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     0      350     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                     1       10     514
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5318   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1       64   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4733   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1       52   10167
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       42   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1        4   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    12550   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1      231   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0      854    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1        4    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0      418    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1        0    1276
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     0      145     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                     1        2     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     0       89     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                     1        3     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     0       93     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                     1        2     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     0      112     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     0      136     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                     1        3     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     0       94     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     0       94     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     0      139     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     0      199     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                     1        2     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     0       69     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                     1        0     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      152     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1        6     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       94     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1        3     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      201     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1        2     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       40     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1        2     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                     0       62     375
6-24 months                   ki1000109-EE              PAKISTAN                       1                     1        7     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                     0      274     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                     1       32     375
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                     0        6     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                     1        1     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                     0      379     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                     1       46     432
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      612     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1       20     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       98     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        0     730
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                     0      135     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                     1       22     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     0      300     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                     1       79     536
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4964    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      163    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4234    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      149    9510
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       17    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                     1        0    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                     0     8256    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                     1      281    8554
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                     0      853    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                     1       40    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      515    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                     1       24    1432


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
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b5f87526-867a-4933-a0e6-38558a47281c/49290784-d590-47ba-bacc-ff41cf71d11f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5f87526-867a-4933-a0e6-38558a47281c/49290784-d590-47ba-bacc-ff41cf71d11f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5f87526-867a-4933-a0e6-38558a47281c/49290784-d590-47ba-bacc-ff41cf71d11f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5f87526-867a-4933-a0e6-38558a47281c/49290784-d590-47ba-bacc-ff41cf71d11f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0437500   0.0119959   0.0755041
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0500000   0.0072012   0.0927988
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1323529   0.0517021   0.2130038
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.1359223   0.0976604   0.1741843
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1490683   0.0940027   0.2041340
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2133333   0.1718319   0.2548347
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0377038   0.0328383   0.0425693
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0380089   0.0328029   0.0432149
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0472973   0.0311628   0.0634318
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0337711   0.0197600   0.0477822
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0389610   0.0083698   0.0695522
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0277778   0.0107855   0.0447700
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0118915   0.0089954   0.0147876
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0108673   0.0079295   0.0138051
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.1014493   0.0301149   0.1727837
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1045752   0.0702434   0.1389069
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1401274   0.0857795   0.1944752
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2084433   0.1675107   0.2493758
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0317925   0.0269898   0.0365952
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0339950   0.0286298   0.0393601
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0447928   0.0299697   0.0596160
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0445269   0.0289643   0.0600895


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0461538   0.0206009   0.0717068
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1940299   0.1605206   0.2275391
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0378466   0.0342919   0.0414014
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0422238   0.0310459   0.0534017
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0311284   0.0161004   0.0461564
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0114095   0.0093450   0.0134740
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1884328   0.1552959   0.2215697
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0328076   0.0292272   0.0363879
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0446927   0.0336526   0.0557329


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1428571   0.3720453   3.510654
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 1.0269687   0.5248574   2.009431
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4311111   0.9426674   2.172642
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 1.0080912   0.8351654   1.216822
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.7140177   0.4121077   1.237107
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7129630   0.2635096   1.929024
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 0.9138715   0.6351307   1.314944
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.0308123   0.4744159   2.239752
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4875270   0.9630875   2.297545
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 1.0692777   0.8594313   1.330362
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9940631   0.6171883   1.601070


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0024038   -0.0180965   0.0229042
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0029256   -0.0702400   0.0760912
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0449615   -0.0033448   0.0932678
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0001428   -0.0031932   0.0034788
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0050735   -0.0133122   0.0031652
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0078326   -0.0323458   0.0166806
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                -0.0004820   -0.0024236   0.0014595
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0025507   -0.0620489   0.0671504
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0483054    0.0001244   0.0964865
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0010151   -0.0023037   0.0043339
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0001001   -0.0081112   0.0079110


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0520833   -0.5131492   0.4061749
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0216263   -0.7005017   0.4370984
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2317248   -0.0595017   0.4429015
0-24 months (no birth wast)   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0037737   -0.0883874   0.0881309
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1201577   -0.3222957   0.0510797
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.2516234   -1.3319195   0.3282096
0-6 months (no birth wast)    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                -0.0422481   -0.2269012   0.1146140
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0245262   -0.8439352   0.4839574
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2563537   -0.0451191   0.4708643
6-24 months                   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0309410   -0.0756280   0.1269516
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0022396   -0.1983921   0.1618066
