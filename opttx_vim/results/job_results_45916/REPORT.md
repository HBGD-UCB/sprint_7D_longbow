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







# Results Detail

## Results Plots
![](/tmp/f60388a4-8a71-4e9f-9451-0d396c376d83/0629ec64-ebf7-4836-be15-e43281a08395/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f60388a4-8a71-4e9f-9451-0d396c376d83/0629ec64-ebf7-4836-be15-e43281a08395/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.2113785   0.1478857   0.2748713
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                0.3973087   0.3051809   0.4894365
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.2581266   0.1765373   0.3397158
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.1334271   0.0692250   0.1976291
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                0.3092119   0.1945192   0.4239047
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.0911240   0.0340834   0.1481646
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4669740   0.3884537   0.5454944
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.1054615   0.0973251   0.1135978
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1887825   0.1768177   0.2007472
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2449058   0.2060274   0.2837843
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.0611579   0.0134554   0.1088604
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                0.2247905   0.1490002   0.3005808
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1032722   0.0471894   0.1593549
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                0.2552831   0.1626737   0.3478925
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1354303   0.1001271   0.1707335
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.0389713   0.0335760   0.0443665
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.0750334   0.0696177   0.0804491
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.0168480   0.0064157   0.0272803
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.1629818   0.1029335   0.2230301
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                0.2750535   0.1871431   0.3629639
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.1784458   0.1042762   0.2526154
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.1532341   0.0853166   0.2211516
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                0.2622196   0.1500350   0.3744042
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.0530981   0.0075604   0.0986358
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4256743   0.3476409   0.5037077
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.0898430   0.0815067   0.0981794
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2322841   0.1943379   0.2702304


### Parameter: E(Y)


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.2192308   0.1688447   0.2696168
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          observed             NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          observed             NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.1527778   0.1111545   0.1944010
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.5167910   0.4744466   0.5591355
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       observed             NA                0.1098365   0.1040117   0.1156613
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.1743077   0.1664913   0.1821241
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.0733591   0.0415449   0.1051733
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          observed             NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          observed             NA                0.0635593   0.0323673   0.0947514
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       observed             NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          observed             NA                0.1420233   0.1118164   0.1722303
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       observed             NA                0.0374742   0.0337823   0.0411660
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     observed             NA                0.0753879   0.0700839   0.0806918
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     observed             NA                0.1799163   0.1311159   0.2287168
6-24 months                   ki0047075b-MAL-ED       INDIA          observed             NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL          observed             NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   observed             NA                0.1411765   0.0983547   0.1839982
6-24 months                   ki1000109-EE            PAKISTAN       observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL          observed             NA                0.4608209   0.4185829   0.5030589
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       observed             NA                0.0944269   0.0885495   0.1003044
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     observed             NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           1.0371478   0.8538139   1.2598479
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          observed             optimal           0.9256495   0.7702679   1.1123753
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          observed             optimal           0.7324919   0.5953427   0.9012363
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.1450284   0.7787880   1.6835004
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       observed             optimal           1.4154234   1.0049009   1.9936529
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.5718810   0.8645710   2.8578449
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.1066804   0.9604394   1.2751888
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           1.0414847   0.9840534   1.1022678
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           0.9233256   0.8748420   0.9744962
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.1005393   0.9692766   1.2495780
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     observed             optimal           1.1995026   0.6302800   2.2828053
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          observed             optimal           0.7014369   0.5592537   0.8797684
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          observed             optimal           0.6154545   0.4495829   0.8425236
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       observed             optimal           0.7561389   0.5597369   1.0214549
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0486823   0.9033152   1.2174427
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           0.9615851   0.8712967   1.0612296
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0047244   0.9990348   1.0104464
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.4419889   0.7657663   2.7153611
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           1.1039043   0.8654003   1.4081400
6-24 months                   ki0047075b-MAL-ED       INDIA          observed             optimal           0.9901362   0.7837043   1.2509434
6-24 months                   ki0047075b-MAL-ED       NEPAL          observed             optimal           0.8584761   0.6343700   1.1617528
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           0.9213123   0.6608166   1.2844960
6-24 months                   ki1000109-EE            PAKISTAN       observed             optimal           1.2610295   0.8485930   1.8739200
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           2.4766765   1.0766048   5.6974726
6-24 months                   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0825668   0.9271334   1.2640584
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           1.0510209   0.9813937   1.1255880
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.1093378   0.9695723   1.2692509


### Parameter: PAR


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0078522   -0.0333127    0.0490172
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0295401   -0.1021161    0.0430359
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0690509   -0.1235558   -0.0145461
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0193507   -0.0321291    0.0708305
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                 0.1284539    0.0228496    0.2340581
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0521121   -0.0029462    0.1071704
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0498170   -0.0162339    0.1158679
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0043750   -0.0016145    0.0103646
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0144748   -0.0245564   -0.0043931
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0246227   -0.0066512    0.0558965
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0122012   -0.0274495    0.0518518
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0671142   -0.1183875   -0.0158408
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0397129   -0.0750531   -0.0043726
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                -0.0622536   -0.1399073    0.0154001
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0065931   -0.0136543    0.0268404
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                -0.0014971   -0.0053405    0.0023464
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0003545   -0.0000652    0.0007742
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0074466   -0.0045126    0.0194059
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0169345   -0.0229019    0.0567709
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0027131   -0.0670471    0.0616209
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0252544   -0.0793778    0.0288691
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                -0.0120576   -0.0630035    0.0388882
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                 0.0684471   -0.0354262    0.1723203
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0784087    0.0321143    0.1247031
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0351465   -0.0307745    0.1010676
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0045839   -0.0015797    0.0107474
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0253974   -0.0061588    0.0569537


### Parameter: PAF


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0358173   -0.1712155    0.2062534
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0803225   -0.2982496    0.1010228
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.3652028   -0.6797049   -0.1095869
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1266592   -0.2840465    0.4059995
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                 0.2934976    0.0048769    0.4984082
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.3638195   -0.1566430    0.6500860
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0963968   -0.0411901    0.2158024
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0398323   -0.0162050    0.0927795
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                -0.0830416   -0.1430636   -0.0261713
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0913546   -0.0316973    0.1997298
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.1663211   -0.5865965    0.5619425
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                -0.4256450   -0.7880973   -0.1366628
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.6248155   -1.2242838   -0.1869104
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                -0.3225084   -0.7865536    0.0210042
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0464223   -0.1070333    0.1786061
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                -0.0399496   -0.1477146    0.0576968
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0047022   -0.0009661    0.0103384
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.3065134   -0.3058814    0.6317249
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0941244   -0.1555347    0.2898433
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0099621   -0.2759915    0.2006033
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.1648548   -0.5763670    0.1392317
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                -0.0854083   -0.5132792    0.2214845
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                 0.2069971   -0.1784212    0.4663593
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.5962331    0.0711541    0.8244836
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0762694   -0.0785934    0.2088973
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0485442   -0.0189591    0.1115755
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0985614   -0.0313826    0.2121337
