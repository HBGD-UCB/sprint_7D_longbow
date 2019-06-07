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

**Intervention Variable:** exclfeed3

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
* month
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
* delta_month
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

agecat                        studyid                    country                        exclfeed3    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      138     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       55     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       80     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        4     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      132     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        8     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       93     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       51     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       54     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       37     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       68     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      121     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       66     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      201     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       15     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       31     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      200     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       61     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      158     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       22     249
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        4      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        6      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      199     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1      151     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       12     376
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       14     376
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0       70     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1       35     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0        7     116
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4     116
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      407     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       86     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       36     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0     1092    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      704    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      116    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      104    2016
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      159     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      225     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       45     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       37     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9285   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1945   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1075   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      266   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       25      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       13      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        1      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        1      40
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      169     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       61     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       81     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      136     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      128     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       69     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       79     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      138     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        9     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       70     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      211     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       33     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      229     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       11     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       65     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      176     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        3       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        6       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      285     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1       62     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0       15     372
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       10     372
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0       89     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       14     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0        8     114
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     114
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      472     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       21     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      175     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       15     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0     1562    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1      229    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0      168    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1       48    2007
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      315     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1       56     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0       61     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       16     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10341   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      806   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1180   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      140   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0       36      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        2      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0        2      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0      40
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      135     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       59     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     236
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       79     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      122     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        4     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      100     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1       41     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       69     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       23     233
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       72     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1       13     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      124     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       23     232
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       62     268
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      190     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     268
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       30     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      187     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     253
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       59     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        6     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      154     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       20     239
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        6      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      10
6-24 months                   ki1000108-IRC              INDIA                          0                      0        7      10
6-24 months                   ki1000108-IRC              INDIA                          0                      1        3      10
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      234     374
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1      114     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0       16     374
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       10     374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0       76     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1       26     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6     111
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        3     111
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      363     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       72     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27     615
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0     1118    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      582    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      136    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1       74    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      188     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      199     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       48     468
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       33     468
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6312    8294
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1237    8294
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      607    8294
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      138    8294
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       28      41
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       11      41
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        1      41
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        1      41


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/009d812a-f52b-41a6-92d9-e7b5f89e3dc4/2f225226-1d2a-49ad-a780-53ab0241fa3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/009d812a-f52b-41a6-92d9-e7b5f89e3dc4/2f225226-1d2a-49ad-a780-53ab0241fa3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.2005851   0.1088906   0.2922795
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3756293   0.2923478   0.4589108
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2316118   0.1518636   0.3113600
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1646303   0.0846292   0.2446315
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                0.4318099   0.3797615   0.4838582
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.1724226   0.1360989   0.2087463
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                0.3922218   0.3696787   0.4147649
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4445042   0.3383157   0.5506926
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1744897   0.1652829   0.1836965
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.0611333   0.0259118   0.0963549
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1104266   0.0589164   0.1619368
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1045648   0.0460565   0.1630731
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                0.1802968   0.1395448   0.2210488
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.0434947   0.0254354   0.0615540
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                0.1255545   0.1102430   0.1408659
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1403191   0.1052515   0.1753866
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.0750227   0.0671074   0.0829381
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.0904714   0.0194096   0.1615332
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.2903182   0.2015045   0.3791319
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2122604   0.1306111   0.2939096
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1164287   0.0423218   0.1905355
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                0.3269280   0.2774812   0.3763748
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.1547295   0.1102233   0.1992357
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                0.3700559   0.3298508   0.4102610
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4024742   0.2931899   0.5117585
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1714061   0.1494372   0.1933750


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.2217742   0.1699649   0.2735835
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         observed             NA                0.4007937   0.3793963   0.4221910
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1758810   0.1679189   0.1838431
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.0688259   0.0371906   0.1004612
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         observed             NA                0.1380169   0.1229232   0.1531107
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.0758803   0.0704341   0.0813266
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     observed             NA                0.1779661   0.1290640   0.2268682
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE          PAKISTAN                       observed             NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba      GAMBIA                         observed             NA                0.3434555   0.3221539   0.3647571
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             NA                0.1657825   0.1564932   0.1750718


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.1056365   0.7473428   1.6357046
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.9969087   0.8505023   1.1685176
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.8303017   0.6689911   1.0305084
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7318331   0.5045001   1.0616049
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             optimal           1.0162570   0.9836717   1.0499216
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           1.0299330   0.8842458   1.1996234
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         observed             optimal           1.0218546   1.0028031   1.0412681
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2648515   1.0174341   1.5724353
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0079736   0.9767251   1.0402218
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.1258333   0.8002923   1.5837972
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             optimal           1.4318983   1.0136385   2.0227456
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.6183264   0.4583857   0.8340739
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             optimal           1.0734987   0.9917880   1.1619414
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           1.2118396   0.9295548   1.5798481
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         observed             optimal           1.0992595   1.0441933   1.1572297
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.1453489   1.0021253   1.3090420
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0114310   0.9382713   1.0902950
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.9670985   0.9556016   4.0492569
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.9461277   0.7498237   1.1938241
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.7310475   0.5750462   0.9293696
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9343627   0.5526297   1.5797806
6-24 months                   ki1000109-EE          PAKISTAN                       observed             optimal           1.0141401   0.9724639   1.0576025
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           1.0403680   0.8330934   1.2992126
6-24 months                   ki1101329-Keneba      GAMBIA                         observed             optimal           0.9281179   0.8494787   1.0140370
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2316976   0.9605318   1.5794156
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9671915   0.8646872   1.0818471


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0211891   -0.0574992    0.0998774
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0011612   -0.0608107    0.0584883
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0393041   -0.0906295    0.0120213
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0441484   -0.1062731    0.0179763
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0070199   -0.0070359    0.0210757
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0051611   -0.0212301    0.0315524
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0085719    0.0011986    0.0159451
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1177276    0.0213928    0.2140624
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0013913   -0.0041098    0.0068924
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0076926   -0.0134232    0.0288085
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0476931    0.0076961    0.0876900
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0399096   -0.0758460   -0.0039732
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0132516   -0.0011468    0.0276500
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0092139   -0.0026730    0.0211008
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0124625    0.0058998    0.0190252
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0203952    0.0011391    0.0396514
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0008576   -0.0047737    0.0064888
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0874947    0.0190508    0.1559387
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0156401   -0.0830881    0.0518079
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0570879   -0.1108333   -0.0033425
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0076421   -0.0688297    0.0535455
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0046228   -0.0090931    0.0183387
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0062461   -0.0281401    0.0406323
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                -0.0266004   -0.0594229    0.0062221
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0932523   -0.0065289    0.1930335
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0056236   -0.0248470    0.0135999


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0955436   -0.3380741    0.3886427
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0031009   -0.1757758    0.1442149
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.2043814   -0.4947881    0.0296052
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3664317   -0.9821603    0.0580300
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0159969   -0.0165993    0.0475480
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0290630   -0.1309073    0.1664050
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0213872    0.0027953    0.0396325
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.2093934    0.0171354    0.3640438
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0079105   -0.0238295    0.0386666
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.1117690   -0.2495435    0.3686060
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.3016264    0.0134550    0.5056224
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.6172687   -1.1815688   -0.1989345
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0684665   -0.0082800    0.1393714
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.1748083   -0.0757839    0.3670278
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0902967    0.0423229    0.1358673
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1269036    0.0021208    0.2360826
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0113018   -0.0657898    0.0828170
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.4916370   -0.0464612    0.7530411
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0569398   -0.3336468    0.1623557
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.3679001   -0.7389906   -0.0759982
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0702482   -0.8095299    0.3670007
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0139430   -0.0283158    0.0544651
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0388016   -0.2003456    0.2303031
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                -0.0774493   -0.1771926    0.0138427
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1881124   -0.0410899    0.3668544
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0339214   -0.1564875    0.0756550
