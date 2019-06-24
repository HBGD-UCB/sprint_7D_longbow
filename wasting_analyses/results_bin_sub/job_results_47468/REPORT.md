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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        exclfeed3    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      149     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       32     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       61     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       84     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      139     225
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     225
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0      116     240
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       30     240
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       70     240
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       24     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       76     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       10     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      139     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       10     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       67     286
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      208     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       34     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       65     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      161     249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       19     249
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
0-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
0-24 months   ki1000108-IRC              INDIA                          0                  0        9      10
0-24 months   ki1000108-IRC              INDIA                          0                  1        1      10
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      222     378
0-24 months   ki1000109-EE               PAKISTAN                       1                  1      130     378
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       12     378
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       14     378
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      318     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      104     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       15     444
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     444
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      440     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       27     700
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0     1514    2019
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1      285    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  0      164    2019
0-24 months   ki1101329-Keneba           GAMBIA                         0                  1       56    2019
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      258     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      134     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       59     475
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       24     475
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    21114   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1897   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2349   25765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      405   25765
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       17     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       13     165
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        3     165
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      174     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       65     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        2     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       85     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      140     225
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     225
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0      140     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        6     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0       82     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       12     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       84     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      145     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       70     286
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      214     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        2     286
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       34     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      237     275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     275
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       69     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      176     249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     249
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                  1        0      10
0-6 months    ki1000108-IRC              INDIA                          0                  0        9      10
0-6 months    ki1000108-IRC              INDIA                          0                  1        1      10
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      308     378
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       44     378
0-6 months    ki1000109-EE               PAKISTAN                       0                  0       17     378
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        9     378
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  0      394     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                  1       28     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  0       20     444
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                  1        2     444
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      486     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       17     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       13     700
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0     1753    2019
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1       46    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  0      202    2019
0-6 months    ki1101329-Keneba           GAMBIA                         0                  1       18    2019
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      381     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       11     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       76     475
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        7     475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    22238   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      759   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2486   25742
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      259   25742
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      149     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0       15     165
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1        1     165
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      142     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       29     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       59     235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        5     235
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       80     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      125     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0      114     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1       27     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0       72     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       20     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       76     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        9     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      140     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        7     232
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       63     268
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     268
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      195     268
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        7     268
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       32     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202     253
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       61     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      157     239
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       17     239
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  0        0      10
6-24 months   ki1000108-IRC              INDIA                          1                  1        0      10
6-24 months   ki1000108-IRC              INDIA                          0                  0       10      10
6-24 months   ki1000108-IRC              INDIA                          0                  1        0      10
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      227     372
6-24 months   ki1000109-EE               PAKISTAN                       1                  1      120     372
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       13     372
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       12     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0      298     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1      100     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  0       12     417
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                  1        7     417
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      380     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       55     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      159     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       20     614
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0     1436    1910
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1      264    1910
6-24 months   ki1101329-Keneba           GAMBIA                         0                  0      158    1910
6-24 months   ki1101329-Keneba           GAMBIA                         0                  1       52    1910
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      253     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      134     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       59     468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       22     468
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13906   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1271   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1346   16707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      184   16707
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      132     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       17     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       14     165
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        2     165


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/efa02621-51fe-42c6-9a2c-5c3974227f17/b3bd54f3-26cd-4c9a-af20-9c7b64167c2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efa02621-51fe-42c6-9a2c-5c3974227f17/b3bd54f3-26cd-4c9a-af20-9c7b64167c2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/efa02621-51fe-42c6-9a2c-5c3974227f17/b3bd54f3-26cd-4c9a-af20-9c7b64167c2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/efa02621-51fe-42c6-9a2c-5c3974227f17/b3bd54f3-26cd-4c9a-af20-9c7b64167c2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1767956   0.1211058   0.2324854
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0895522   0.0210423   0.1580622
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1990082   0.1337494   0.2642670
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2620808   0.1781341   0.3460274
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1238126   0.0538607   0.1937645
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0638572   0.0242591   0.1034553
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3696518   0.3191541   0.4201495
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.5342458   0.3197328   0.7487587
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1244290   0.0955401   0.1533180
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1375305   0.0893213   0.1857398
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1587435   0.1418883   0.1755986
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2527201   0.1971486   0.3082917
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3413098   0.2944017   0.3882180
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2842149   0.1862235   0.3822063
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0844793   0.0804930   0.0884655
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1264288   0.1132966   0.1395609
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.0410959   0.0088284   0.0733634
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.1276596   0.0600574   0.1952617
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.1250000   0.0904052   0.1595948
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.3461538   0.1630451   0.5292626
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0339537   0.0181044   0.0498031
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0631408   0.0281911   0.0980904
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.0256462   0.0183477   0.0329448
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.0859866   0.0507309   0.1212422
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.0280612   0.0116955   0.0444270
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0843373   0.0244901   0.1441846
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0350385   0.0326055   0.0374714
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0722696   0.0619574   0.0825819
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.1695906   0.1132239   0.2259574
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.0781250   0.0122357   0.1440143
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.1836560   0.1192112   0.2481008
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.2218667   0.1406231   0.3031103
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.1058824   0.0403304   0.1714343
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.0476190   0.0131187   0.0821194
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3463748   0.2962507   0.3964988
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4859860   0.2824754   0.6894966
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.1239204   0.0928672   0.1549735
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1184159   0.0721818   0.1646501
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.1551535   0.1379626   0.1723444
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.2501674   0.1934038   0.3069310
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.3460808   0.2987027   0.3934590
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.2752941   0.1778411   0.3727472
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0854041   0.0805306   0.0902776
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1034024   0.0867258   0.1200789


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1532258   0.1083048   0.1981468
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2250000   0.1720591   0.2779409
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0851064   0.0493539   0.1208589
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3809524   0.3319322   0.4299725
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1688955   0.1525490   0.1852420
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3326316   0.2902162   0.3750470
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0893460   0.0853745   0.0933175
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0750000   0.0416074   0.1083926
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.1402116   0.1051635   0.1752598
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.0316989   0.0240550   0.0393428
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.0378947   0.0207054   0.0550841
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0395463   0.0370065   0.0420860
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1446809   0.0996085   0.1897532
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.2017167   0.1500806   0.2533529
6-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.0689655   0.0362886   0.1016424
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3548387   0.3061520   0.4035255
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.1654450   0.1487764   0.1821136
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.3333333   0.2905787   0.3760880
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0870892   0.0823628   0.0918157


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.5065299   0.2214605   1.158548
0-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.3169344   0.8448050   2.052919
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.5157572   0.2248684   1.182938
0-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.4452676   0.9458932   2.208281
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.1052928   0.7267203   1.681076
0-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.5920034   1.2494017   2.028551
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.8327181   0.5750030   1.205941
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.4965658   1.3422013   1.668683
0-6 months    ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         INDIA        0                    1                 3.1063830   1.2049021   8.008630
0-6 months    ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     0                    1                 2.7692308   1.5243435   5.030781
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 1.8596115   0.8992940   3.845411
0-6 months    ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       0                    1                 3.3527926   2.0365858   5.519639
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 3.0054765   1.1995016   7.530535
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 2.0625792   1.7723586   2.400323
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 0.4606681   0.1860779   1.140464
6-24 months   ki0047075b-MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         INDIA        0                    1                 1.2080558   0.7360110   1.982849
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 0.4497355   0.1734112   1.166372
6-24 months   ki1000109-EE              PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     0                    1                 1.4030640   0.9005956   2.185874
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 0.9555808   0.6041108   1.511535
6-24 months   ki1101329-Keneba          GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       0                    1                 1.6123867   1.2549043   2.071705
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 0.7954619   0.5450295   1.160964
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 1.2107423   1.0234444   1.432317


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0235698   -0.0479064    0.0007669
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0259918   -0.0149686    0.0669522
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0387062   -0.0903542    0.0129418
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0113006   -0.0029795    0.0255806
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130    0.0157220
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0041424   -0.0115813    0.0198661
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0101520    0.0037632    0.0165409
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0086783   -0.0276564    0.0102999
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0048667    0.0033952    0.0063383
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.0339041    0.0040800    0.0637282
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.0152116    0.0012041    0.0292192
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0089034   -0.0019543    0.0197612
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.0060526    0.0019662    0.0101390
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0098335   -0.0011773    0.0208444
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0045078    0.0032700    0.0057455
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0249098   -0.0490938   -0.0007258
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0180608   -0.0221912    0.0583127
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0369168   -0.0839927    0.0101590
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0084639   -0.0055974    0.0225253
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993    0.0202761
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0017705   -0.0175937    0.0140526
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0102916    0.0037472    0.0168360
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0127475   -0.0314270    0.0059320
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0016852    0.0000464    0.0033239


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1538238   -0.3197802   -0.0087356
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.1155191   -0.0874003    0.2805717
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4547979   -1.1788168    0.0286302
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0296640   -0.0085954    0.0664722
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627    0.0625110
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0322186   -0.0980628    0.1470425
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0601084    0.0217384    0.0969734
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0260897   -0.0847731    0.0294190
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0544707    0.0381089    0.0705543
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.4520548   -0.0343995    0.7097408
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1084906    0.0057298    0.2006307
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.2077461   -0.0766794    0.4170352
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                 0.1909410    0.0606932    0.3031282
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.2594955   -0.0622319    0.4837785
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.1139876    0.0837716    0.1432072
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1721706   -0.3457595   -0.0209729
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0895352   -0.1342904    0.2691941
6-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.5352941   -1.3371869   -0.0085321
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                 0.0238529   -0.0165919    0.0626887
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691    0.0774953
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0144947   -0.1525301    0.1070086
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                 0.0622053    0.0220391    0.1007219
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0382425   -0.0958278    0.0163166
6-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0193497    0.0004089    0.0379316
