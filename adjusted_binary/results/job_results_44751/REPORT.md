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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

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
![](/tmp/b381bd50-077b-4843-b024-e89dd7e550bb/1aaf1ec2-46e7-4dee-a1de-01e1c631da87/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b381bd50-077b-4843-b024-e89dd7e550bb/1aaf1ec2-46e7-4dee-a1de-01e1c631da87/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b381bd50-077b-4843-b024-e89dd7e550bb/1aaf1ec2-46e7-4dee-a1de-01e1c631da87/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b381bd50-077b-4843-b024-e89dd7e550bb/1aaf1ec2-46e7-4dee-a1de-01e1c631da87/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2375691   0.1754419   0.2996962
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1791045   0.0871050   0.2711039
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                0.3541667   0.2758856   0.4324478
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    NA                0.4065934   0.3054565   0.5077303
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2000000   0.1147825   0.2852175
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1879195   0.1250600   0.2507789
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1159420   0.0402486   0.1916355
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1222222   0.0742761   0.1701683
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                0.4314286   0.3794721   0.4833850
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    NA                0.5384615   0.3465854   0.7303377
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.1744422   0.1409194   0.2079650
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.1855670   0.1308224   0.2403116
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         1                    NA                0.3919822   0.3693985   0.4145658
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         0                    NA                0.4727273   0.4067389   0.5387157
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5859375   0.5366193   0.6352557
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4512195   0.3433991   0.5590399
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1731968   0.1648693   0.1815243
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1983594   0.1751121   0.2216068
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.0611111   0.0260472   0.0961750
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.0895522   0.0210417   0.1580628
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1111111   0.0596713   0.1625509
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    NA                0.2333333   0.1457647   0.3209019
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0612245   0.0223852   0.1000637
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                0.1786744   0.1383138   0.2190349
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    NA                0.4000000   0.2077049   0.5922951
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.0425963   0.0247571   0.0604356
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.0789474   0.0405766   0.1173181
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         1                    NA                0.1278615   0.1123922   0.1433308
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         0                    NA                0.2222222   0.1667659   0.2776785
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1509434   0.1144746   0.1874122
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2077922   0.1170682   0.2985162
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0723065   0.0665943   0.0780186
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1060606   0.0891107   0.1230105
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2105263   0.1492921   0.2717605
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.0923077   0.0217894   0.1628260
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2907801   0.2156619   0.3658984
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2500000   0.1613275   0.3386725
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1529412   0.0762588   0.2296236
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1564626   0.0976074   0.2153178
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0923077   0.0217913   0.1628241
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1149425   0.0674517   0.1624334
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                0.3275862   0.2782096   0.3769628
6-24 months                   ki1000109-EE          PAKISTAN                       0                    NA                0.3846154   0.1973621   0.5718687
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                0.1655172   0.1305640   0.2004705
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     0                    NA                0.1500000   0.0977940   0.2022060
6-24 months                   ki1101329-Keneba      GAMBIA                         1                    NA                0.3423529   0.3197913   0.3649146
6-24 months                   ki1101329-Keneba      GAMBIA                         0                    NA                0.3523810   0.2877533   0.4170086
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.5142119   0.4643634   0.5640603
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.4074074   0.3002894   0.5145255
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.1638628   0.1542923   0.1734332
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1852349   0.1544104   0.2160595


### Parameter: E(Y)


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2217742   0.1699649   0.2735835
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       NA                   NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         NA                   NA                0.4007937   0.3793963   0.4221910
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1758810   0.1679189   0.1838431
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.0688259   0.0371906   0.1004612
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       NA                   NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         NA                   NA                0.1380169   0.1229232   0.1531107
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0758803   0.0704341   0.0813266
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1779661   0.1290640   0.2268682
6-24 months                   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE          PAKISTAN                       NA                   NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba      GAMBIA                         NA                   NA                0.3434555   0.3221539   0.3647571
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.1657825   0.1564932   0.1750718


### Parameter: RR


agecat                        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.7539049   0.4236318   1.3416665
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                    1                 1.1480284   0.8230735   1.6012778
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.9395973   0.5466171   1.6151033
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0541667   0.4921861   2.2578195
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                    1                 1.2480897   0.8568202   1.8180336
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     0                    1                 1.0637737   0.7480688   1.5127144
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         0                    1                 1.2059917   1.0369556   1.4025828
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.7700813   0.5977377   0.9921162
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1452835   1.0114376   1.2968415
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 1.4654003   0.5631763   3.8130119
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                    1                 2.1000000   1.1571626   3.8110462
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                    1                 0.8673469   0.3190701   2.3577600
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                    1                 2.2387097   1.3161836   3.8078434
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     0                    1                 1.8533835   0.9757387   3.5204407
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         0                    1                 1.7379913   1.3170519   2.2934659
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                    1                 1.3766234   0.8357996   2.2673998
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.4668208   1.2298963   1.7493859
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 0.4384616   0.1936062   0.9929874
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                    1                 0.8597561   0.5543819   1.3333418
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                    1                 1.0230246   0.5465982   1.9147141
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2452106   0.5224651   2.9677571
6-24 months                   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE          PAKISTAN                       0                    1                 1.1740891   0.7052771   1.9545298
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     0                    1                 0.9062500   0.6031823   1.3615935
6-24 months                   ki1101329-Keneba      GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba      GAMBIA                         0                    1                 1.0292914   0.8470353   1.2507635
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.7922948   0.5986670   1.0485480
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.1304272   0.9506126   1.3442549


### Parameter: PAR


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0157949   -0.0459603    0.0143705
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0203014   -0.0293311    0.0699339
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0076923   -0.0751240    0.0597394
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045399   -0.0602328    0.0693126
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                 0.0074012   -0.0066167    0.0214191
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0031415   -0.0149897    0.0212727
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0088115    0.0011213    0.0165016
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0237057   -0.0450837   -0.0023278
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0026842    0.0000921    0.0052763
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0077148   -0.0132213    0.0286509
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0470085    0.0072081    0.0868090
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0059331   -0.0483768    0.0365106
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0148740    0.0005158    0.0292322
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0101123   -0.0017224    0.0219470
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0101554    0.0038284    0.0164824
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0097709   -0.0071522    0.0266939
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0035739    0.0017158    0.0054319
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0325602   -0.0591546   -0.0059658
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0161020   -0.0620605    0.0298564
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0022312   -0.0590181    0.0634806
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0164789   -0.0454298    0.0783876
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                 0.0039646   -0.0095782    0.0175074
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                -0.0045416   -0.0229384    0.0138551
6-24 months                   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0011026   -0.0064250    0.0086301
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0184854   -0.0392600    0.0022892
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0019197   -0.0009586    0.0047981


### Parameter: PAF


agecat                        studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0712205   -0.2158014    0.0561671
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0542140   -0.0881101    0.1779222
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0400000   -0.4568878    0.2575956
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0376812   -0.6822643    0.4495172
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                    NA                 0.0168658   -0.0156351    0.0483266
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.0176903   -0.0898784    0.1146422
0-24 months (no birth wast)   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0219850    0.0025971    0.0409962
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0421636   -0.0811499   -0.0045833
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0152615    0.0004091    0.0298931
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1120915   -0.2453391    0.3669343
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.2972973    0.0110793    0.5006768
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0917647   -0.9894929    0.4008774
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                    NA                 0.0768492    0.0006455    0.1472421
0-6 months (no birth wast)    ki1017093b-PROVIDE    BANGLADESH                     1                    NA                 0.1918526   -0.0568742    0.3820436
0-6 months (no birth wast)    ki1101329-Keneba      GAMBIA                         1                    NA                 0.0735809    0.0271101    0.1178320
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0607966   -0.0500666    0.1599553
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0470988    0.0221390    0.0714216
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1829574   -0.3375029   -0.0462693
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0586215   -0.2397823    0.0960676
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0143791   -0.4710518    0.3396231
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1514792   -0.6551987    0.5650145
6-24 months                   ki1000109-EE          PAKISTAN                       1                    NA                 0.0119577   -0.0297444    0.0519711
6-24 months                   ki1017093b-PROVIDE    BANGLADESH                     1                    NA                -0.0282132   -0.1490124    0.0798861
6-24 months                   ki1101329-Keneba      GAMBIA                         1                    NA                 0.0032102   -0.0189496    0.0248880
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0372895   -0.0802050    0.0039210
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0115798   -0.0059113    0.0287668
