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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0      127     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    1       33     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0       76     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    1       24     260
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    0      101     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         1                    1        4     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    0      116     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         BRAZIL                         0                    1        8     229
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0       90     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    1       55     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0       63     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    1       34     242
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0       78     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    1       18     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0      115     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    1       27     238
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    0      204     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           1                    1       19     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    0       75     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         PERU                           0                    1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      147     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       30     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       97     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       14     288
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      189     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       27     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       42     261
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0       44     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    1       24     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0      168     377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    1      141     377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0        3     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    1        5     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0      283     446
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    1      155     446
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      555     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       99     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       91     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        9     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0       86     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    1       75     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0      173     536
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    1      202     536
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5219   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      669   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     4636   11071
0-24 months (no birth wast)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      547   11071
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       37   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       10   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0    10697   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     2256   13000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      630    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      258    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      408    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      125    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0      147     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    1       13     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0       93     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    1        6     259
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    0      103     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         1                    1        2     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    0      119     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         BRAZIL                         0                    1        5     229
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0      121     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    1       23     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0       82     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    1       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0       90     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    1        6     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0      131     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    1        9     236
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    0      218     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           1                    1        5     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    0       76     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         PERU                           0                    1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      167     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       10     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0      108     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1        2     287
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      208     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1        8     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       45     261
0-6 months (no birth wast)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        0     261
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0       54     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    1       14     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0      247     373
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    1       58     373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0        3     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    1        5     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0      365     438
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    1       65     438
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      635     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       94     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        4     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0      130     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    1       24     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0      311     514
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    1       49     514
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     5175   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      207   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     4611   10167
0-6 months (no birth wast)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      174   10167
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       38   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1        8   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0    11822   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1      959   12827
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      834    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1       24    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    0      411    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1        7    1276
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0      123     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    1       24     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0       73     239
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     239
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    0       92     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         1                    1        3     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    0      109     207
6-24 months                   ki0047075b-MAL-ED         BRAZIL                         0                    1        3     207
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0       99     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    1       40     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0       72     235
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    1       24     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0       81     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    1       14     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0      118     235
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    1       22     235
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    0      185     270
6-24 months                   ki0047075b-MAL-ED         PERU                           1                    1       16     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    0       68     270
6-24 months                   ki0047075b-MAL-ED         PERU                           0                    1        1     270
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0      134     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       24     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0       85     255
6-24 months                   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       12     255
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0      180     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       23     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0       39     245
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0       52     375
6-24 months                   ki1000109-EE              PAKISTAN                       1                    1       17     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0      199     375
6-24 months                   ki1000109-EE              PAKISTAN                       0                    1      107     375
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0        6     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    1        1     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0      309     432
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    1      116     432
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      541     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       91     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       93     730
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        5     730
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0       91     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    1       66     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0      198     536
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    1      181     536
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0     4630    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      497    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0     3982    9510
6-24 months                   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      401    9510
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       15    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        2    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     7126    8554
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1411    8554
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      648    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      245    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      415    1432
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      124    1432


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/c75c8976-efd6-4a16-971f-5259247e97a7/33986059-c391-4dbd-bf3f-8c67db7c1479/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c75c8976-efd6-4a16-971f-5259247e97a7/33986059-c391-4dbd-bf3f-8c67db7c1479/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c75c8976-efd6-4a16-971f-5259247e97a7/33986059-c391-4dbd-bf3f-8c67db7c1479/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c75c8976-efd6-4a16-971f-5259247e97a7/33986059-c391-4dbd-bf3f-8c67db7c1479/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.2062500   0.1434349   0.2690651
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.2400000   0.1561318   0.3238682
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          1                    NA                0.3793103   0.3001700   0.4584507
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          0                    NA                0.3505155   0.2553675   0.4456634
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1875000   0.1092582   0.2657418
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          0                    NA                0.1901408   0.1254622   0.2548195
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.1694915   0.1141230   0.2248600
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.1261261   0.0642577   0.1879945
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       1                    NA                0.3529412   0.2392064   0.4666760
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       0                    NA                0.4563107   0.4007009   0.5119205
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1513761   0.1238887   0.1788636
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.0900000   0.0338722   0.1461278
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4658385   0.3887136   0.5429634
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5386667   0.4881650   0.5891683
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.1136209   0.1055146   0.1217272
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.1055373   0.0971724   0.1139022
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2127660   0.1969616   0.2285703
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.1741681   0.1661990   0.1821373
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2905405   0.2552552   0.3258259
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2345216   0.1942165   0.2748267
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.0812500   0.0388331   0.1236669
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.0606061   0.0135135   0.1076986
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          1                    NA                0.1597222   0.0997619   0.2196825
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          0                    NA                0.1546392   0.0825374   0.2267409
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          1                    NA                0.0625000   0.0139756   0.1110244
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          0                    NA                0.0642857   0.0235725   0.1049989
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       1                    NA                0.2058824   0.1096483   0.3021164
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       0                    NA                0.1901639   0.1460634   0.2342645
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1558442   0.0985029   0.2131854
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1361111   0.1006546   0.1715676
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.0384615   0.0333235   0.0435995
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.0363636   0.0310595   0.0416678
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1739130   0.1586096   0.1892165
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.0750333   0.0696182   0.0804483
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.0279720   0.0144252   0.0415189
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.0167464   0.0063888   0.0271040
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.1632653   0.1033910   0.2231396
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.2065217   0.1236293   0.2894142
6-24 months                   ki0047075b-MAL-ED       INDIA          1                    NA                0.2877698   0.2123475   0.3631920
6-24 months                   ki0047075b-MAL-ED       INDIA          0                    NA                0.2500000   0.1631961   0.3368039
6-24 months                   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1473684   0.0759360   0.2188008
6-24 months                   ki0047075b-MAL-ED       NEPAL          0                    NA                0.1571429   0.0967293   0.2175564
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.1518987   0.0958232   0.2079743
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.1237113   0.0580600   0.1893627
6-24 months                   ki1000109-EE            PAKISTAN       1                    NA                0.2463768   0.1445692   0.3481845
6-24 months                   ki1000109-EE            PAKISTAN       0                    NA                0.3496732   0.2961719   0.4031745
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1439873   0.1165975   0.1713772
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.0510204   0.0074258   0.0946151
6-24 months                   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4203822   0.3430969   0.4976674
6-24 months                   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4775726   0.4272380   0.5279072
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.0969378   0.0888385   0.1050370
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.0914898   0.0829542   0.1000255
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2743561   0.2394863   0.3092259
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2300557   0.1910484   0.2690629


### Parameter: E(Y)


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.2192308   0.1688447   0.2696168
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          NA                   NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1527778   0.1111545   0.1944010
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5167910   0.4744466   0.5591355
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.1098365   0.1040117   0.1156613
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1743077   0.1664913   0.1821241
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.0733591   0.0415449   0.1051733
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          NA                   NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          NA                   NA                0.0635593   0.0323673   0.0947514
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1420233   0.1118164   0.1722303
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.0374742   0.0337823   0.0411660
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.0753879   0.0700839   0.0806918
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.1799163   0.1311159   0.2287168
6-24 months                   ki0047075b-MAL-ED       INDIA          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.1411765   0.0983547   0.1839982
6-24 months                   ki1000109-EE            PAKISTAN       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4608209   0.4185829   0.5030589
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.0944269   0.0885495   0.1003044
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.1636364   0.7319872   1.8498269
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          0                    1                 0.9240862   0.6561797   1.3013742
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          0                    1                 1.0140845   0.5919209   1.7373393
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.7441441   0.4127675   1.3415554
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       0                    1                 1.2928803   0.9160810   1.8246632
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.5945455   0.3105227   1.1383527
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.1563378   0.9559921   1.3986696
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 0.9288547   0.8348995   1.0333832
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 0.8185903   0.7527481   0.8901917
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.8071905   0.6530119   0.9977713
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.7459207   0.2925115   1.9021395
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          0                    1                 0.9681757   0.5320893   1.7616669
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          0                    1                 1.0285714   0.3776592   2.8013591
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       0                    1                 0.9236534   0.5481488   1.5563942
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          0                    1                 0.8733796   0.5564354   1.3708546
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 0.9454545   0.7757823   1.1522359
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 0.4314412   0.3856823   0.4826291
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.5986843   0.2636889   1.3592642
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.2649457   0.7344342   2.1786668
6-24 months                   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA          0                    1                 0.8687500   0.5622944   1.3422267
6-24 months                   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL          0                    1                 1.0663265   0.5743867   1.9795936
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.8144330   0.4266807   1.5545607
6-24 months                   ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE            PAKISTAN       0                    1                 1.4192618   0.9134749   2.2051006
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.3543395   0.1476556   0.8503338
6-24 months                   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.1360438   0.9190983   1.4041975
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 0.9437997   0.8327008   1.0697213
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.8385294   0.6774993   1.0378336


### Parameter: PAR


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0129808   -0.0273702    0.0533317
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          1                    NA                -0.0115417   -0.0611797    0.0380962
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0015756   -0.0589918    0.0621431
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0167137   -0.0488065    0.0153790
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       1                    NA                 0.0847246   -0.0191197    0.1885689
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0081401   -0.0165611    0.0002810
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0509525   -0.0136068    0.1155119
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0037844   -0.0092382    0.0016694
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                -0.0384583   -0.0551157   -0.0218009
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0210120   -0.0414045   -0.0006196
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0078909   -0.0321478    0.0163659
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          1                    NA                -0.0020459   -0.0397910    0.0356992
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0010593   -0.0365165    0.0386351
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       1                    NA                -0.0128529   -0.0994143    0.0737085
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.0138208   -0.0610461    0.0334045
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0009874   -0.0044629    0.0024882
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                -0.0985252   -0.1141978   -0.0828526
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0036774   -0.0095749    0.0022202
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0166510   -0.0228015    0.0561035
6-24 months                   ki0047075b-MAL-ED       INDIA          1                    NA                -0.0154294   -0.0624655    0.0316068
6-24 months                   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0058231   -0.0499147    0.0615609
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0107223   -0.0436084    0.0221638
6-24 months                   ki1000109-EE            PAKISTAN       1                    NA                 0.0842899   -0.0096455    0.1782252
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0124805   -0.0197650   -0.0051960
6-24 months                   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0404387   -0.0248142    0.1056917
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0025109   -0.0079342    0.0029125
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0166745   -0.0365425    0.0031934


### Parameter: PAF


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0592105   -0.1437963    0.2261866
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          1                    NA                -0.0313832   -0.1756060    0.0951464
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0083333   -0.3697854    0.2820753
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.1093991   -0.3391283    0.0809198
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       1                    NA                 0.1935829   -0.0826367    0.3993289
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0568298   -0.1167117   -0.0001589
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0985941   -0.0356782    0.2154584
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0344550   -0.0852935    0.0140022
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                -0.2206344   -0.3241642   -0.1251990
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0779585   -0.1558860   -0.0052847
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.1075658   -0.4892170    0.1762772
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          1                    NA                -0.0129751   -0.2829864    0.2002108
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0166667   -0.7938350    0.4609624
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       1                    NA                -0.0665850   -0.6238583    0.2994441
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.0973136   -0.4851561    0.1892454
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0263477   -0.1233769    0.0623009
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                -1.3069107   -1.5670866   -1.0731038
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.1513647   -0.3897948    0.0461608
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0925486   -0.1543951    0.2866671
6-24 months                   ki0047075b-MAL-ED       INDIA          1                    NA                -0.0566547   -0.2441814    0.1026075
6-24 months                   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0380117   -0.4040285    0.3408813
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0759494   -0.3351161    0.1329091
6-24 months                   ki1000109-EE            PAKISTAN       1                    NA                 0.2549088   -0.0899977    0.4906771
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0949037   -0.1496991   -0.0427200
6-24 months                   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0877537   -0.0655784    0.2190219
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0265905   -0.0856421    0.0292490
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0647099   -0.1440678    0.0091434
