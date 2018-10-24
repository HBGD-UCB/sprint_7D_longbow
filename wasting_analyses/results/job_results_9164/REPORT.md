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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       55     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      138     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       43     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0      132     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        8     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0       80     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        4     224
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       54     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1       37     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0       93     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       51     235
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      121     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1       28     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0       68     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1       17     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      201     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1       15     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       66     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        4     286
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      200     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       31     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     275
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      158     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       22     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       61     249
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     249
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      10
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        4      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        6      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0        0      10
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1        0      10
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      0       24     752
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                      1       28     752
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      0      398     752
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                      1      302     752
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                      1       10     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      0      263     443
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                      1      158     443
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       36     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      407     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       86     687
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      0      116    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                      1      104    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      0     1092    2016
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                      1      704    2016
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0       90     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       74     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0      318     932
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1      450     932
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     4340   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1040   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    37762   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7738   50880
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       26     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        6     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      220     328
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       76     328
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       61     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      169     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     247
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0      136     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        4     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0       81     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        3     224
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       69     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1       21     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      128     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      138     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        9     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0       79     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        6     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      211     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        5     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       70     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      229     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       11     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       33     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     274
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      176     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       65     249
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     249
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5       9
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        3       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        6       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0        0       9
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1        0       9
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      0       30     744
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                      1       20     744
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      0      570     744
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                      1      124     744
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      0       17     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                      1        5     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      0      365     437
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                      1       50     437
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0      175     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       15     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      472     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       21     683
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      0      168    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                      1       48    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      0     1562    2007
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                      1      229    2007
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      122     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       32     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0      630     896
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1      112     896
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0     4772   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      524   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    42006   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     3176   50478
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       28     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        2     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      288     324
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        6     324
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       59     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        6     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      135     236
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1       36     236
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0      122     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        4     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0       79     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       69     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1       23     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      100     233
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1       41     233
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      124     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1       23     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0       72     232
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1       13     232
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      190     268
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1       12     268
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       62     268
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        4     268
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0      187     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       34     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       30     253
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     253
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      154     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       20     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       59     239
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        6     239
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        6      10
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      10
6-24 months                   ki1000108-IRC              INDIA                          0                      0        7      10
6-24 months                   ki1000108-IRC              INDIA                          0                      1        3      10
6-24 months                   ki1000108-IRC              INDIA                          1                      0        0      10
6-24 months                   ki1000108-IRC              INDIA                          1                      1        0      10
6-24 months                   ki1000109-EE               PAKISTAN                       0                      0       32     748
6-24 months                   ki1000109-EE               PAKISTAN                       0                      1       20     748
6-24 months                   ki1000109-EE               PAKISTAN                       1                      0      468     748
6-24 months                   ki1000109-EE               PAKISTAN                       1                      1      228     748
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      0       12     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      0      273     417
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                      1      125     417
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0      153     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1       27     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      363     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       72     615
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      0      136    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         0                      1       74    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      0     1118    1910
6-24 months                   ki1101329-Keneba           GAMBIA                         1                      1      582    1910
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0       96     936
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       66     936
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0      376     936
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1      398     936
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2510   33444
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      566   33444
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    25420   33444
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4948   33444
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       28     330
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        4     330
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      228     330
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       70     330


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
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/9d9cafd1-87c7-4244-9701-4de58b6c6774/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d9cafd1-87c7-4244-9701-4de58b6c6774/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d9cafd1-87c7-4244-9701-4de58b6c6774/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d9cafd1-87c7-4244-9701-4de58b6c6774/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1791045   0.0871050   0.2711039
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2375691   0.1754419   0.2996962
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4065934   0.3054565   0.5077303
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3541667   0.2758856   0.4324478
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1879195   0.1250600   0.2507789
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2000000   0.1147825   0.2852175
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1222222   0.0742761   0.1701683
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1159420   0.0402486   0.1916355
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                0.5384615   0.3465854   0.7303377
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                0.4314286   0.3794721   0.4833850
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4545455   0.2817186   0.6273723
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3752969   0.3178349   0.4327589
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1855670   0.1308224   0.2403116
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1744422   0.1409194   0.2079650
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4727273   0.4067389   0.5387157
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3919822   0.3693985   0.4145658
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4512195   0.3433991   0.5590399
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5859375   0.5366193   0.6352557
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1933086   0.1770791   0.2095380
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1700659   0.1643912   0.1757406
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1875000   0.0366256   0.3383744
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2567568   0.1825062   0.3310073
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0895522   0.0210417   0.1580628
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0611111   0.0260472   0.0961750
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2333333   0.1457647   0.3209019
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1111111   0.0596713   0.1625509
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0612245   0.0223852   0.1000637
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                0.4000000   0.2077049   0.5922951
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                0.1786744   0.1383138   0.2190349
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0789474   0.0405766   0.1173181
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0425963   0.0247571   0.0604356
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2222222   0.1667659   0.2776785
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1278615   0.1123922   0.1433308
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2077922   0.1170682   0.2985162
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1509434   0.1144746   0.1874122
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.0989426   0.0865758   0.1113094
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0702935   0.0663983   0.0741887
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0923077   0.0217894   0.1628260
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2105263   0.1492921   0.2717605
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2500000   0.1613275   0.3386725
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.2907801   0.2156619   0.3658984
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1564626   0.0976074   0.2153178
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1529412   0.0762588   0.2296236
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1149425   0.0674517   0.1624334
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0923077   0.0217913   0.1628241
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                0.3846154   0.1973621   0.5718687
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                0.3275862   0.2782096   0.3769628
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1500000   0.0977940   0.2022060
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1655172   0.1305640   0.2004705
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.3523810   0.2877533   0.4170086
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3423529   0.3197913   0.3649146
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4074074   0.3002894   0.5145255
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5142119   0.4643634   0.5640603
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1840052   0.1630240   0.2049865
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1629347   0.1564472   0.1694221


### Parameter: E(Y)


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2217742   0.1699649   0.2735835
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.3744681   0.3124566   0.4364796
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1923077   0.1417029   0.2429125
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1204819   0.0799679   0.1609960
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       NA                   NA                0.4388298   0.3886039   0.4890557
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3792325   0.3255512   0.4329138
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         NA                   NA                0.4007937   0.3793963   0.4221910
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5622318   0.5171396   0.6073240
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1725236   0.1670497   0.1779975
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.2500000   0.1813067   0.3186933
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.0688259   0.0371906   0.1004612
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.1581197   0.1112720   0.2049674
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0646552   0.0329427   0.0963676
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       NA                   NA                0.1935484   0.1533466   0.2337501
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1258581   0.0910745   0.1606418
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         NA                   NA                0.1380169   0.1229232   0.1531107
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1607143   0.1266675   0.1947611
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.0732993   0.0695038   0.0770947
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.1779661   0.1290640   0.2268682
6-24 months                   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2746781   0.2172425   0.3321138
6-24 months                   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.1551724   0.1084814   0.2018634
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1087866   0.0692283   0.1483450
6-24 months                   ki1000109-EE              PAKISTAN                       NA                   NA                0.3315508   0.2837756   0.3793260
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.3165468   0.2711185   0.3619751
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1101329-Keneba          GAMBIA                         NA                   NA                0.3434555   0.3221539   0.3647571
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.4957265   0.4503800   0.5410730
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1648726   0.1585930   0.1711523


### Parameter: RR


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.3264273   0.7453417   2.3605405
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0                 0.8710586   0.6245012   1.2149584
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0642857   0.6191554   1.8294341
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9486166   0.4429052   2.0317518
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0                 0.8012245   0.5500449   1.1671061
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8256532   0.5342162   1.2760813
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.9400496   0.6610633   1.3367754
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    0                 0.8291931   0.7129704   0.9643614
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2985642   1.0079465   1.6729747
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8797642   0.8056110   0.9607429
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.3693694   0.5812729   3.2259759
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6824074   0.2622599   1.7756429
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0                 0.4761905   0.2623951   0.8641828
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1529412   0.4241314   3.1341075
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0                 0.4466859   0.2626158   0.7597724
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.5395538   0.2840553   1.0248645
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    0                 0.5753769   0.4360213   0.7592715
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7264151   0.4410338   1.1964590
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.7104471   0.6219045   0.8115957
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 2.2807016   1.0070621   5.1651230
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0                 1.1631206   0.7499952   1.8038108
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0                 0.9774936   0.5222712   1.8294974
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8030770   0.3369548   1.9140034
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0                 0.8517241   0.5116320   1.4178824
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 1.1034482   0.7344336   1.6578735
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    0                 0.9715421   0.7995116   1.1805883
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2621564   0.9536998   1.6703778
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8854893   0.7859962   0.9975765


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0426697   -0.0384159    0.1237553
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0321253   -0.1105621    0.0463114
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0043882   -0.0340844    0.0428609
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017403   -0.0265719    0.0230913
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.0996318   -0.2846924    0.0854289
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0753129   -0.2584470    0.1078211
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0079833   -0.0540506    0.0380840
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0719336   -0.1340781   -0.0097892
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1110122    0.0131999    0.2088246
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0207850   -0.0358171   -0.0057528
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0625000   -0.0893171    0.2143171
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0207263   -0.0768343    0.0353817
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0752137   -0.1381764   -0.0122509
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0034307   -0.0211162    0.0279775
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -0.2064516   -0.3898187   -0.0230845
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0262387   -0.0568068    0.0043293
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0842053   -0.1355984   -0.0328121
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0470779   -0.1280759    0.0339201
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0256433   -0.0370302   -0.0142565
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0856584    0.0176512    0.1536656
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0246781   -0.0456952    0.0950514
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0012902   -0.0367069    0.0341266
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061559   -0.0293132    0.0170013
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.0530646   -0.2332619    0.1271328
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0109756   -0.0334663    0.0554175
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0089255   -0.0698520    0.0520011
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0883191   -0.0094496    0.1860878
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0191326   -0.0388331    0.0005679


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1924016   -0.2676784    0.4855043
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0857892   -0.3169943    0.1048267
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0228188   -0.1991307    0.2036872
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0144444   -0.2429260    0.1720363
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.2270396   -0.7313263    0.1303625
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1985931   -0.8084176    0.2055898
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0449552   -0.3393342    0.1847207
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.1794779   -0.3453797   -0.0340339
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1974493    0.0022332    0.3544707
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1204761   -0.2109874   -0.0367297
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.2500000   -0.6570476    0.6605408
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.3011414   -1.4167995    0.2994997
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.4756757   -0.9180626   -0.1353220
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0530612   -0.4128256    0.3653194
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -1.0666667   -2.2682496   -0.3068497
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.4978070   -1.1792290   -0.0294585
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.6101083   -1.0253958   -0.2799715
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2929293   -0.9064039    0.1231312
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.3498445   -0.5135808   -0.2038208
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.4813186   -0.0462672    0.7428665
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0898437   -0.2057709    0.3129836
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0083144   -0.2644416    0.1959313
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0565871   -0.2915103    0.1356041
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.1600496   -0.8534328    0.2739337
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0681818   -0.2529145    0.3069877
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0259872   -0.2196397    0.1369174
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1781609   -0.0452656    0.3538298
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1160447   -0.2420038   -0.0028599
