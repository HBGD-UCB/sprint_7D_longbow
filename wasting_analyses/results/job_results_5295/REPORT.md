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
![](/tmp/aadf5c11-0c9c-444b-a0b7-92f8df05c494/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aadf5c11-0c9c-444b-a0b7-92f8df05c494/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aadf5c11-0c9c-444b-a0b7-92f8df05c494/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aadf5c11-0c9c-444b-a0b7-92f8df05c494/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1809162   0.0907266   0.2711058
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2371523   0.1755252   0.2987793
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.4122725   0.3145265   0.5100186
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3506828   0.2739815   0.4273842
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1965445   0.1357007   0.2573884
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2362721   0.1580216   0.3145226
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1222222   0.0742761   0.1701683
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1159420   0.0402486   0.1916355
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                0.5945167   0.4299812   0.7590521
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    NA                0.4326958   0.3808200   0.4845715
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4488320   0.2704930   0.6271711
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3755890   0.3176466   0.4335315
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.2140541   0.1630190   0.2650893
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1763128   0.1432991   0.2093264
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                0.4704088   0.4167657   0.5240519
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    NA                0.3923628   0.3699544   0.4147712
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4517650   0.3450717   0.5584583
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5858067   0.5365535   0.6350599
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2022942   0.1892936   0.2152948
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1699216   0.1643142   0.1755290
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.1875000   0.0366256   0.3383744
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.2567568   0.1825062   0.3310073
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0895522   0.0210417   0.1580628
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.0611111   0.0260472   0.0961750
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2293151   0.1434292   0.3152010
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1119622   0.0611047   0.1628197
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0612245   0.0223852   0.1000637
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                0.5434176   0.4230503   0.6637849
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    NA                0.1800534   0.1398968   0.2202100
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.0746624   0.0376861   0.1116387
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.0434380   0.0254157   0.0614602
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                0.2132113   0.1633688   0.2630538
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    NA                0.1284379   0.1130363   0.1438396
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.2078081   0.1172639   0.2983523
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1509408   0.1144785   0.1874030
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1051840   0.0950146   0.1153535
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.0706620   0.0667956   0.0745284
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.0923077   0.0217894   0.1628260
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2105263   0.1492921   0.2717605
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                0.2946566   0.2142151   0.3750980
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    NA                0.3049470   0.2335191   0.3763748
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1617250   0.1038714   0.2195787
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.1716751   0.0985030   0.2448472
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1149425   0.0674517   0.1624334
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0923077   0.0217913   0.1628241
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                0.4398727   0.2798513   0.5998942
6-24 months                   ki1000109-EE              PAKISTAN                       1                    NA                0.3273876   0.2781150   0.3766602
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                0.1775117   0.1276526   0.2273709
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                0.1665162   0.1318814   0.2011510
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                0.3522691   0.2891398   0.4153984
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    NA                0.3423570   0.3198549   0.3648590
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.4055627   0.2994643   0.5116611
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5145782   0.4647684   0.5643880
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1642104   0.1485155   0.1799052
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1641428   0.1577080   0.1705776


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
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 1.3108402   0.7498650   2.2914819
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          1                    0                 0.8506092   0.6198316   1.1673107
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.2021299   0.7644081   1.8905034
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9486166   0.4429052   2.0317518
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       1                    0                 0.7278110   0.5387893   0.9831465
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8368142   0.5288237   1.3241806
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.8236830   0.6125089   1.1076632
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         1                    0                 0.8340890   0.7359901   0.9452634
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2967066   1.0098287   1.6650825
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.8399727   0.7844690   0.8994034
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 1.3693694   0.5812729   3.2259759
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     1                    0                 0.6824074   0.2622599   1.7756429
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          1                    0                 0.4882459   0.2723929   0.8751477
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          1                    0                 1.1529412   0.4241314   3.1341075
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       1                    0                 0.3313352   0.2423253   0.4530399
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.5301205   0.2505573   1.1216106
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.5817915   0.3053721   1.1084226
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         1                    0                 0.6023975   0.4649557   0.7804675
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          1                    0                 0.7263468   0.4414642   1.1950677
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.6717938   0.6040752   0.7471039
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 2.2807016   1.0070621   5.1651230
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         INDIA                          1                    0                 1.0349235   0.7302600   1.4666922
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         NEPAL                          1                    0                 1.0615248   0.6093751   1.8491646
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8030770   0.3369548   1.9140034
6-24 months                   ki1000109-EE              PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE              PAKISTAN                       1                    0                 0.7442780   0.5023159   1.1027917
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          1                    0                 0.8524767   0.4191142   1.7339343
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 0.9380573   0.6643638   1.3245024
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba          GAMBIA                         1                    0                 0.9718621   0.8037620   1.1751189
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          1                    0                 1.2688007   0.9604873   1.6760817
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 0.9995883   0.9039572   1.1053363


### Parameter: PAR


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0408580   -0.0381992    0.1199152
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0378045   -0.1124188    0.0368099
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0042368   -0.0416617    0.0331880
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017403   -0.0265719    0.0230913
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.1556869   -0.3147549    0.0033811
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0695995   -0.2605210    0.1213220
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0364704   -0.0787941    0.0058532
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0696151   -0.1198462   -0.0193841
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1104667    0.0138156    0.2071178
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0297706   -0.0417019   -0.0178393
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0625000   -0.0893171    0.2143171
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0207263   -0.0768343    0.0353817
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0711954   -0.1321321   -0.0102588
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0034307   -0.0211162    0.0279775
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -0.3498692   -0.4650844   -0.2346540
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1014146   -0.2606831    0.0578539
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0219538   -0.0512598    0.0073523
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0751943   -0.1210033   -0.0293854
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0470938   -0.1279106    0.0337229
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0318848   -0.0412290   -0.0225405
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0856584    0.0176512    0.1536656
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0199784   -0.0822928    0.0423359
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0065526   -0.0412626    0.0281574
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061559   -0.0293132    0.0170013
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.1083219   -0.2626194    0.0459755
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0518743   -0.2970243    0.1932757
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0165361   -0.0587274    0.0256551
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0088136   -0.0681633    0.0505361
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0901638   -0.0066065    0.1869341
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0006623   -0.0141510    0.0154756


### Parameter: PAF


agecat                        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.1842323   -0.2603434    0.4719876
0-24 months (no birth wast)   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1009551   -0.3199124    0.0816799
0-24 months (no birth wast)   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0220316   -0.2369873    0.1555705
0-24 months (no birth wast)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0144444   -0.2429260    0.1720363
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN                       0                    NA                -0.3547774   -0.7758336   -0.0335550
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1835273   -0.8265250    0.2331137
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.2053705   -0.4717567    0.0128002
0-24 months (no birth wast)   ki1101329-Keneba          GAMBIA                         0                    NA                -0.1736932   -0.3068339   -0.0541170
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1964790    0.0038868    0.3518347
0-24 months (no birth wast)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.1725597   -0.2441730   -0.1050683
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.2500000   -0.6570476    0.6605408
0-6 months (no birth wast)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.3011414   -1.4167995    0.2994997
0-6 months (no birth wast)    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.4502631   -0.8769078   -0.1206001
0-6 months (no birth wast)    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0530612   -0.4128256    0.3653194
0-6 months (no birth wast)    ki1000109-EE              PAKISTAN                       0                    NA                -1.8076575   -2.6251219   -1.1745312
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.8057851   -2.6156784    0.0981333
0-6 months (no birth wast)    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.4165118   -1.0752795    0.0331395
0-6 months (no birth wast)    ki1101329-Keneba          GAMBIA                         0                    NA                -0.5448197   -0.9132673   -0.2473258
0-6 months (no birth wast)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.2930282   -0.9048800    0.1222954
0-6 months (no birth wast)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.4349943   -0.5698863   -0.3116929
6-24 months                   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.4813186   -0.0462672    0.7428665
6-24 months                   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0727340   -0.3278582    0.1333726
6-24 months                   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0422279   -0.2923626    0.1594936
6-24 months                   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0565871   -0.2915103    0.1356041
6-24 months                   ki1000109-EE              PAKISTAN                       0                    NA                -0.3267129   -0.8897180    0.0685556
6-24 months                   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1638756   -1.2789068    0.4055894
6-24 months                   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1027244   -0.4007532    0.1318948
6-24 months                   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0256616   -0.2138749    0.1333689
6-24 months                   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.1818822   -0.0390895    0.3558623
6-24 months                   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0040168   -0.0899961    0.0899210
