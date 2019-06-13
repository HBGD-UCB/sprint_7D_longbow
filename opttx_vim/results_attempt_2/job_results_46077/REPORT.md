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
![](/tmp/f8ee50c6-7d54-4897-876c-e0de127c7c26/cfa90b25-84c8-4f4e-b269-350f6d901b5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f8ee50c6-7d54-4897-876c-e0de127c7c26/cfa90b25-84c8-4f4e-b269-350f6d901b5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.2071149   0.1146855   0.2995442
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.3790440   0.3008004   0.4572876
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2491948   0.1703068   0.3280828
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1812994   0.1052893   0.2573096
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                0.4326130   0.3804853   0.4847407
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.1406156   0.1049084   0.1763228
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                0.3897522   0.3670876   0.4124168
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4724378   0.3668706   0.5780049
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1742656   0.1649988   0.1835325
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.0615334   0.0262165   0.0968502
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                0.1113299   0.0600112   0.1626487
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.1169260   0.0578516   0.1760004
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                0.1802545   0.1395433   0.2209658
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.0434532   0.0254288   0.0614776
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                0.1307137   0.1133013   0.1481261
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.1555064   0.1035359   0.2074770
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.0731024   0.0672526   0.0789521
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                0.0926058   0.0213555   0.1638562
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                0.2874101   0.1932617   0.3815584
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                0.2172489   0.1436955   0.2908023
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1163636   0.0421827   0.1905445
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                0.3270792   0.2776103   0.3765480
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                0.1822493   0.1308878   0.2336107
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                0.3470783   0.3053994   0.3887571
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                0.4042815   0.2971169   0.5114460
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                0.1739518   0.1541083   0.1937953


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
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.0707787   0.7337883   1.5625310
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.9879277   0.8587184   1.1365789
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.7717162   0.6346785   0.9383426
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.6645467   0.4880503   0.9048703
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       observed             optimal           1.0143704   0.9815600   1.0482775
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           1.2629017   1.0399716   1.5336195
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         observed             optimal           1.0283294   1.0060642   1.0510873
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.1900653   0.9715339   1.4577519
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0092695   0.9769529   1.0426551
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.1185136   0.7959349   1.5718280
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          observed             optimal           1.4202796   1.0094371   1.9983357
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.5529581   0.4277308   0.7148482
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       observed             optimal           1.0737504   0.9919514   1.1622948
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           1.2129978   0.9308369   1.5806892
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         observed             optimal           1.0558718   0.9787041   1.1391238
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.0334896   0.7946128   1.3441777
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           1.0380006   1.0066600   1.0703170
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     observed             optimal           1.9217595   0.9477847   3.8966232
6-24 months                   ki0047075b-MAL-ED     INDIA                          observed             optimal           0.9557011   0.7536381   1.2119405
6-24 months                   ki0047075b-MAL-ED     NEPAL                          observed             optimal           0.7142611   0.5772062   0.8838589
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9348853   0.5528636   1.5808790
6-24 months                   ki1000109-EE          PAKISTAN                       observed             optimal           1.0136714   0.9718787   1.0572612
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     observed             optimal           0.8832716   0.7162345   1.0892642
6-24 months                   ki1101329-Keneba      GAMBIA                         observed             optimal           0.9895621   0.8931499   1.0963817
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          observed             optimal           1.2261915   0.9619863   1.5629594
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     observed             optimal           0.9530370   0.8638380   1.0514467


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0146593   -0.0636545    0.0929731
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0045759   -0.0576385    0.0484867
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0568871   -0.1068342   -0.0069400
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0608175   -0.1173059   -0.0043291
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0062168   -0.0079934    0.0204271
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0369681    0.0090937    0.0648425
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0110414    0.0025027    0.0195802
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0897940   -0.0058111    0.1853991
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0016154   -0.0040633    0.0072940
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0072925   -0.0138849    0.0284700
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.0467897    0.0068514    0.0867281
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0522708   -0.0875629   -0.0169787
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0132938   -0.0011224    0.0277100
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.0092554   -0.0026081    0.0211189
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0073032   -0.0026479    0.0172543
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0052079   -0.0357031    0.0461188
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0027779    0.0005420    0.0050139
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0853603    0.0167861    0.1539345
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0127320   -0.0812447    0.0557808
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.0620765   -0.1090221   -0.0151309
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0075770   -0.0687534    0.0535995
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0044716   -0.0092965    0.0182398
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                -0.0212737   -0.0598150    0.0172676
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                -0.0036228   -0.0392030    0.0319575
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0914450   -0.0064507    0.1893407
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0081693   -0.0252784    0.0089398


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.0661002   -0.3627908    0.3600127
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0122198   -0.1645261    0.1201666
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.2958131   -0.5756008   -0.0657088
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.5047852   -1.0489690   -0.1051307
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0141668   -0.0187864    0.0460542
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.2081727    0.0384352    0.3479478
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0275489    0.0060277    0.0486042
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1597099   -0.0293002    0.3140122
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0091844   -0.0235908    0.0409101
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.1059564   -0.2563842    0.3637981
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          optimal              NA                 0.2959133    0.0093489    0.4995836
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.8084554   -1.3379189   -0.3988984
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       optimal              NA                 0.0686849   -0.0081139    0.1396331
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                 0.1755962   -0.0743021    0.3673646
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         optimal              NA                 0.0529153   -0.0217593    0.1221323
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.0324044   -0.2584746    0.2560508
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                 0.0366094    0.0066159    0.0656973
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     optimal              NA                 0.4796435   -0.0550920    0.7433675
6-24 months                   ki0047075b-MAL-ED     INDIA                          optimal              NA                -0.0463523   -0.3268969    0.1748770
6-24 months                   ki0047075b-MAL-ED     NEPAL                          optimal              NA                -0.4000483   -0.7324831   -0.1314023
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0696500   -0.8087644    0.3674405
6-24 months                   ki1000109-EE          PAKISTAN                       optimal              NA                 0.0134870   -0.0289350    0.0541600
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     optimal              NA                -0.1321546   -0.3961907    0.0819491
6-24 months                   ki1101329-Keneba      GAMBIA                         optimal              NA                -0.0105480   -0.1196329    0.0879089
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          optimal              NA                 0.1844667   -0.0395158    0.3601881
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     optimal              NA                -0.0492772   -0.1576245    0.0489295
