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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        exclfeed3    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       63     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      169     244
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     244
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      132     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       83     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       82     238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       12     238
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      135     238
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        9     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      147     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       84     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     235
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      212     281
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     281
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       68     281
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     267
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     267
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      178     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       68     246
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10      10
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      10
0-24 months   ki1000108-IRC              INDIA                          0                    0        9      10
0-24 months   ki1000108-IRC              INDIA                          0                    1        1      10
0-24 months   ki1000108-IRC              INDIA                          1                    0        0      10
0-24 months   ki1000108-IRC              INDIA                          1                    1        0      10
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       40     752
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       12     752
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      656     752
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       44     752
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355     413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40     413
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      183     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        7     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      442     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        8     640
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0      195    1952
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       20    1952
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1656    1952
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       81    1952
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      134     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       28     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      656     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      122     940
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2520   30962
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      240   30962
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    26676   30962
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1526   30962
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       30     326
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        2     326
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      274     326
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       20     326
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       64     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        3     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      173     244
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     244
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      133     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       83     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       81     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       13     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0      138     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        6     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      145     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       85     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        1     235
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      213     281
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     281
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       68     281
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      231     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       33     266
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     266
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      178     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       68     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     246
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7      10
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3      10
0-6 months    ki1000108-IRC              INDIA                          0                    0        7      10
0-6 months    ki1000108-IRC              INDIA                          0                    1        3      10
0-6 months    ki1000108-IRC              INDIA                          1                    0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                    1        0      10
0-6 months    ki1000109-EE               PAKISTAN                       0                    0       40     730
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       12     730
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      636     730
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       42     730
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      180     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        9     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      443     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        5     637
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0      200    1834
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       11    1834
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0     1588    1834
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       35    1834
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      128     918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       28     918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      676     918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       86     918
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       59     230
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     230
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      156     230
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       11     230
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      118     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       77     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       77     229
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       15     229
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0      125     229
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       12     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      144     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        1     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       82     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        1     228
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      185     249
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        2     249
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       62     249
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     249
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      215     249
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     249
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       32     249
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      169     232
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     232
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       63     232
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     232
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       10      10
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0      10
6-24 months   ki1000108-IRC              INDIA                          0                    0        9      10
6-24 months   ki1000108-IRC              INDIA                          0                    1        1      10
6-24 months   ki1000108-IRC              INDIA                          1                    0        0      10
6-24 months   ki1000108-IRC              INDIA                          1                    1        0      10
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       40     734
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       12     734
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      608     734
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       74     734
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       12     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        1     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      293     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       63     369
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      166     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       11     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      397     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       27     601
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0      170    1797
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       27    1797
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0     1466    1797
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1      134    1797
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      124     918
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       32     918
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      610     918
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      152     918
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       28     316
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        2     316
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      260     316
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       26     316


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/a36f427f-b587-4286-9fe1-a526b397ea85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a36f427f-b587-4286-9fe1-a526b397ea85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a36f427f-b587-4286-9fe1-a526b397ea85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a36f427f-b587-4286-9fe1-a526b397ea85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1276596   0.0600562   0.1952629
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0625000   0.0228807   0.1021193
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2907373   0.1482575   0.4332172
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0631135   0.0376886   0.0885384
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100361   0.0636481
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177778   0.0055591   0.0299965
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1301671   0.0936866   0.1666477
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0470940   0.0371721   0.0570158
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1369832   0.0575101   0.2164563
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1553383   0.1191981   0.1914784
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0677716   0.0572049   0.0783383
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0553427   0.0511394   0.0595459
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1382979   0.0683644   0.2082313
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0416667   0.0089602   0.0743732
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2300476   0.0687640   0.3913313
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619660   0.0362699   0.0876621
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0476190   0.0172344   0.0780037
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0111607   0.0014252   0.0208962
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0468017   0.0193567   0.0742466
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0219674   0.0148059   0.0291290
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1794872   0.0942294   0.2647449
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128609   0.0810536   0.1446682
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1789694   0.1051106   0.2528282
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0912536   0.0443363   0.1381709
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2934758   0.1492673   0.4376842
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1088187   0.0757706   0.1418668
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0605423   0.0255468   0.0955378
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0633736   0.0401806   0.0865665
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1971747   0.1535761   0.2407733
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0845706   0.0710140   0.0981271
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2051994   0.1162698   0.2941291
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1994607   0.1593145   0.2396069


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0517418   0.0419129   0.0615707
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570377   0.0528781   0.0611972
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0798319   0.0453258   0.1143380
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0739726   0.0470855   0.1008598
0-6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0219780   0.0105837   0.0333723
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0250818   0.0179232   0.0322404
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1241830   0.0939798   0.1543862
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1179039   0.0760436   0.1597643
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1171662   0.0842168   0.1501157
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0895938   0.0763853   0.1028022
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2004357   0.1637726   0.2370989


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.4895833   0.2143384   1.1182869
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.2170808   0.1150719   0.4095187
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.4825397   0.1773592   1.3128415
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.3617963   0.2548837   0.5135541
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1339950   0.6068181   2.1191600
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8166055   0.6926687   0.9627178
0-6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.3012821   0.1184289   0.7664590
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.2693614   0.1193205   0.6080730
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.2343750   0.0795318   0.6906879
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.4693732   0.2402288   0.9170891
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6287964   0.3619428   1.0923960
6-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.5098838   0.2636866   0.9859489
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.3707929   0.2081403   0.6605513
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0467647   0.5282352   2.0742963
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.4289121   0.3264811   0.5634799
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9720334   0.6033506   1.5660032


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0394243   -0.0870070    0.0081584
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.2162693   -0.3506420   -0.0818965
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0134046   -0.0341293    0.0073201
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0784253   -0.1118943   -0.0449564
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0225912   -0.0493671    0.0945496
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0107339   -0.0204035   -0.0010643
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0584659   -0.1055629   -0.0113690
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1560750   -0.3077688   -0.0043812
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0256410   -0.0481179   -0.0031642
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0217199   -0.0466515    0.0032118
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0553042   -0.1308730    0.0202646
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0610655   -0.1134334   -0.0086975
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1763096   -0.3135749   -0.0390442
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0026856   -0.0268526    0.0322239
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1075809   -0.1479395   -0.0672223
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0047637   -0.0855947    0.0760672


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.4468085   -1.0674801   -0.0124668
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -2.9041872   -5.3147182   -1.4138334
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.5719298   -1.6828697    0.0789850
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.5157050   -2.2714957   -0.9345194
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1415718   -0.4536159    0.4930580
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1881902   -0.3708834   -0.0298440
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7323628   -1.3486031   -0.2778152
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -2.1099032   -4.8756458   -0.6460315
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.1666667   -2.2015803   -0.4662898
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.8659619   -2.1360063   -0.1102701
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4453441   -1.1933264    0.0475564
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.5179255   -1.0309187   -0.1345102
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -1.5047816   -3.0552056   -0.5471301
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0424755   -0.5594931    0.4120826
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.2007631   -1.7230872   -0.7786277
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0237668   -0.5180152    0.3095600
