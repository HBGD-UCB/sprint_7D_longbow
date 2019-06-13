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
![](/tmp/3c5e3e41-f2f6-4e54-9d93-beac80735a74/51bda03b-e106-4bb4-859a-4afc9c7188a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3c5e3e41-f2f6-4e54-9d93-beac80735a74/51bda03b-e106-4bb4-859a-4afc9c7188a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.2200421   0.1468644   0.2932198
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                0.3989537   0.3012036   0.4967038
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.2210670   0.1429219   0.2992121
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.1487524   0.0827501   0.2147547
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                0.3160985   0.1988804   0.4333167
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.0888669   0.0325141   0.1452198
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4650523   0.3855359   0.5445688
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.1077595   0.0993803   0.1161386
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.1612089   0.1527687   0.1696491
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2355946   0.1960565   0.2751327
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.0821885   0.0309747   0.1334023
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                0.1876663   0.1145207   0.2608119
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                0.0992058   0.0459774   0.1524343
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                0.2014180   0.1069187   0.2959174
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.1349446   0.0995496   0.1703396
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.0388792   0.0333993   0.0443591
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                0.0750332   0.0696177   0.0804487
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.0169568   0.0064967   0.0274168
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                0.1625819   0.1023887   0.2227752
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                0.2457763   0.1609426   0.3306100
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                0.2024067   0.1264622   0.2783513
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                0.1169685   0.0544164   0.1795206
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                0.2567211   0.1468572   0.3665850
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                0.0512369   0.0071273   0.0953465
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                0.4301091   0.3515809   0.5086373
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                0.0851767   0.0770254   0.0933280
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                0.2462913   0.2076646   0.2849179


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


agecat                        studyid                 country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           0.9963128   0.7935632   1.250863
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          observed             optimal           0.9218328   0.7669369   1.108012
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          observed             optimal           0.8552864   0.6663643   1.097770
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.0270608   0.7296988   1.445602
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       observed             optimal           1.3845865   0.9830292   1.950176
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           1.6118037   0.8796315   2.953409
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.1112535   0.9615696   1.284238
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           1.0192749   0.9627432   1.079126
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0812535   1.0478050   1.115770
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.1440352   0.9955472   1.314671
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     observed             optimal           0.8925714   0.5610221   1.420058
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          observed             optimal           0.8401953   0.6312608   1.118283
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          observed             optimal           0.6406813   0.4679098   0.877247
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       observed             optimal           0.9583526   0.6298232   1.458250
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0524567   0.9060221   1.222559
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           0.9638621   0.8721038   1.065275
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     observed             optimal           1.0047262   0.9990364   1.010449
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.4327402   0.7626177   2.691709
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     observed             optimal           1.1066193   0.8640044   1.417361
6-24 months                   ki0047075b-MAL-ED       INDIA          observed             optimal           1.1080825   0.8577040   1.431551
6-24 months                   ki0047075b-MAL-ED       NEPAL          observed             optimal           0.7568498   0.5879073   0.974340
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   observed             optimal           1.2069615   0.7853009   1.855029
6-24 months                   ki1000109-EE            PAKISTAN       observed             optimal           1.2880387   0.8667625   1.914069
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     observed             optimal           2.5666434   1.1122295   5.922931
6-24 months                   ki1113344-GMS-Nepal     NEPAL          observed             optimal           1.0714047   0.9180393   1.250391
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       observed             optimal           1.1086003   1.0318659   1.191041
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     observed             optimal           1.0462473   0.9242809   1.184308


### Parameter: PAR


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.0008113   -0.0508881    0.0492655
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0311851   -0.1046553    0.0422851
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0319914   -0.0873743    0.0233915
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0040254   -0.0467995    0.0548502
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                 0.1215672    0.0136567    0.2294777
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0543691   -0.0000664    0.1088046
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0517387   -0.0153927    0.1188701
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0020770   -0.0040731    0.0082272
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0130988    0.0079461    0.0182515
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0339339    0.0008872    0.0669806
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.0088294   -0.0470389    0.0293801
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0299900   -0.0835588    0.0235789
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0356465   -0.0687386   -0.0025544
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                -0.0083885   -0.0929644    0.0761874
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0070787   -0.0131682    0.0273257
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                -0.0014050   -0.0052980    0.0024880
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0003546   -0.0000651    0.0007743
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0073379   -0.0046303    0.0193061
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0173344   -0.0230979    0.0577667
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                 0.0265641   -0.0361295    0.0892577
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.0492152   -0.1011441    0.0027136
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0242080   -0.0263391    0.0747551
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                 0.0739456   -0.0277950    0.1756862
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.0802700    0.0352035    0.1253364
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0307118   -0.0356874    0.0971110
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0092502    0.0031224    0.0153780
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0113903   -0.0192109    0.0419915


### Parameter: PAF


agecat                        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.0037008   -0.2601391    0.2005522
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA          optimal              NA                -0.0847955   -0.3038882    0.0974831
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.1691990   -0.5006806    0.0890625
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.0263478   -0.3704285    0.3082466
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN       optimal              NA                 0.2777627   -0.0172638    0.4872257
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.3795771   -0.1368397    0.6614082
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.1001153   -0.0399663    0.2213282
0-24 months (no birth wast)   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0189104   -0.0386986    0.0733242
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0751475    0.0456240    0.1037578
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.1259011   -0.0044727    0.2393532
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH     optimal              NA                -0.1203586   -0.7824610    0.2958032
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA          optimal              NA                -0.1901995   -0.5841313    0.1057718
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.5608385   -1.1371638   -0.1399298
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN       optimal              NA                -0.0434573   -0.5877470    0.3142465
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0498421   -0.1037258    0.1820433
0-6 months (no birth wast)    ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                -0.0374928   -0.1466526    0.0612751
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH     optimal              NA                 0.0047040   -0.0009645    0.0103404
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.3020368   -0.3112730    0.6284888
6-24 months                   ki0047075b-MAL-ED       BANGLADESH     optimal              NA                 0.0963469   -0.1574015    0.2944635
6-24 months                   ki0047075b-MAL-ED       INDIA          optimal              NA                 0.0975401   -0.1659034    0.3014568
6-24 months                   ki0047075b-MAL-ED       NEPAL          optimal              NA                -0.3212662   -0.7009485   -0.0263358
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA   optimal              NA                 0.1714732   -0.2733973    0.4609250
6-24 months                   ki1000109-EE            PAKISTAN       optimal              NA                 0.2236258   -0.1537185    0.4775529
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH     optimal              NA                 0.6103861    0.1009050    0.8311647
6-24 months                   ki1113344-GMS-Nepal     NEPAL          optimal              NA                 0.0666459   -0.0892780    0.2002501
6-24 months                   ki1126311-ZVITAMBO      ZIMBABWE       optimal              NA                 0.0979616    0.0308819    0.1603983
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH     optimal              NA                 0.0442030   -0.0819222    0.1556252
