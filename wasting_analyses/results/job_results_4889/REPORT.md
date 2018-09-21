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
![](/tmp/e483d61f-2eef-47a1-a7b4-2685c7a6b7da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e483d61f-2eef-47a1-a7b4-2685c7a6b7da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e483d61f-2eef-47a1-a7b4-2685c7a6b7da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e483d61f-2eef-47a1-a7b4-2685c7a6b7da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1803260   0.0943417   0.2663102
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2380593   0.1771255   0.2989932
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4094479   0.3087363   0.5101595
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3524601   0.2744212   0.4304989
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1974281   0.1366440   0.2582122
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2394978   0.1613863   0.3176092
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1222222   0.0742761   0.1701683
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1159420   0.0402486   0.1916355
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                0.5938858   0.4305225   0.7572491
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                0.4327201   0.3808490   0.4845912
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4488320   0.2704930   0.6271711
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3755890   0.3176466   0.4335315
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1898031   0.1379436   0.2416626
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1728655   0.1397775   0.2059534
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4714457   0.4158670   0.5270244
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3924285   0.3700202   0.4148367
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4517563   0.3450955   0.5584171
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5858036   0.5365512   0.6350561
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2023495   0.1893299   0.2153690
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1699133   0.1643052   0.1755214
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1875000   0.0366256   0.3383744
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2567568   0.1825062   0.3310073
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0895522   0.0210417   0.1580628
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0611111   0.0260472   0.0961750
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2428610   0.1597044   0.3260175
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1140683   0.0639760   0.1641607
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0612245   0.0223852   0.1000637
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                0.5542716   0.4398965   0.6686468
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                0.1798749   0.1397530   0.2199967
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0746618   0.0376853   0.1116384
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0434382   0.0254160   0.0614604
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2132041   0.1633655   0.2630427
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1284384   0.1130368   0.1438400
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2077922   0.1170682   0.2985162
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1509434   0.1144746   0.1874122
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1050407   0.0949004   0.1151809
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0706776   0.0668118   0.0745434
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0923077   0.0217894   0.1628260
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2105263   0.1492921   0.2717605
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2943465   0.2094599   0.3792331
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3031899   0.2300413   0.3763385
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1619215   0.1038289   0.2200141
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1715044   0.0975912   0.2454176
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1149425   0.0674517   0.1624334
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0923077   0.0217913   0.1628241
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                0.4328221   0.2865904   0.5790539
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                0.3268486   0.2777010   0.3759963
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1791623   0.1317648   0.2265598
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1670687   0.1328058   0.2013316
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.4174386   0.3552423   0.4796349
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3432705   0.3207769   0.3657641
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4055810   0.2994741   0.5116878
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5145749   0.4647649   0.5643849
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1642361   0.1485482   0.1799240
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1641534   0.1577188   0.1705880


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.3201613   0.7763939   2.2447699
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0                 0.8608179   0.6190220   1.1970615
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2130886   0.7743328   1.9004539
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9486166   0.4429052   2.0317518
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0                 0.7286251   0.5402377   0.9827054
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8368142   0.5288237   1.3241806
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.9107618   0.6568030   1.2629162
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    0                 0.8323938   0.7322077   0.9462882
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2967248   1.0099221   1.6649751
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8397021   0.7841328   0.8992096
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.3693694   0.5812729   3.2259759
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6824074   0.2622599   1.7756429
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0                 0.4696857   0.2705968   0.8152522
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1529412   0.4241314   3.1341075
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0                 0.3245248   0.2398157   0.4391553
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.5817990   0.3053753   1.1084397
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    0                 0.6024200   0.4649788   0.7804869
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7264151   0.4410338   1.1964590
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.6728592   0.6051579   0.7481344
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 2.2807016   1.0070621   5.1651230
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0300441   0.7148273   1.4842620
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0591822   0.6052338   1.8536094
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8030770   0.3369548   1.9140034
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0                 0.7551569   0.5218172   1.0928386
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.9324991   0.6727538   1.2925301
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    0                 0.8223257   0.6996553   0.9665038
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2687353   0.9604253   1.6760171
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9994966   0.9039338   1.1051622


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0414482   -0.0335095    0.1164060
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0349798   -0.1128453    0.0428857
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0051204   -0.0426421    0.0324013
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017403   -0.0265719    0.0230913
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.1550560   -0.3130271    0.0029151
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0695995   -0.2605210    0.1213220
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0122194   -0.0552961    0.0308572
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0706520   -0.1225717   -0.0187323
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1104754    0.0138549    0.2070960
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0298259   -0.0417783   -0.0178735
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0625000   -0.0893171    0.2143171
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0207263   -0.0768343    0.0353817
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0847413   -0.1435379   -0.0259448
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0034307   -0.0211162    0.0279775
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -0.3607232   -0.4705575   -0.2508890
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0219532   -0.0512594    0.0073530
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0751871   -0.1209922   -0.0293821
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0470779   -0.1280759    0.0339201
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0317414   -0.0410569   -0.0224259
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0856584    0.0176512    0.1536656
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0196684   -0.0853187    0.0459819
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0067491   -0.0416285    0.0281303
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061559   -0.0293132    0.0170013
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.1012713   -0.2431852    0.0406425
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0181867   -0.0580709    0.0216975
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0739831   -0.1324372   -0.0155291
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0901455   -0.0066328    0.1869239
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0006365   -0.0141695    0.0154426


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1868939   -0.2286989    0.4619174
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0934120   -0.3226773    0.0961137
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0266261   -0.2422749    0.1515878
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0144444   -0.2429260    0.1720363
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.3533397   -0.7713086   -0.0339973
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1835273   -0.8265250    0.2331137
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0688094   -0.3413401    0.1483490
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.1762803   -0.3139101   -0.0530670
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1964944    0.0039711    0.3518048
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1728801   -0.2446239   -0.1052718
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.2500000   -0.6570476    0.6605408
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.3011414   -1.4167995    0.2994997
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.5359316   -0.9534510   -0.2076504
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0530612   -0.4128256    0.3653194
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -1.8637367   -2.6672802   -1.2362590
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.4165007   -1.0752737    0.0331521
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.5447674   -0.9131831   -0.2472964
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2929293   -0.9064039    0.1231312
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.4330387   -0.5675176   -0.3100968
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.4813186   -0.0462672    0.7428665
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0716053   -0.3409478    0.1436371
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0434942   -0.2948993    0.1591005
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0565871   -0.2915103    0.1356041
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.3054474   -0.8197757    0.0635149
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1129780   -0.3936043    0.1111393
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.2154082   -0.3987109   -0.0561276
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1818453   -0.0391461    0.3558392
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0038607   -0.0901038    0.0897257
