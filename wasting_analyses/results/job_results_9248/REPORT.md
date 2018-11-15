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

unadjusted

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
![](/tmp/8884aacb-8dac-419c-9c3b-50e61ec92852/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8884aacb-8dac-419c-9c3b-50e61ec92852/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8884aacb-8dac-419c-9c3b-50e61ec92852/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8884aacb-8dac-419c-9c3b-50e61ec92852/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1276596   0.0600562   0.1952629
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0625000   0.0228807   0.1021193
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0368421   0.0100361   0.0636481
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0177778   0.0055591   0.0299965
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0930233   0.0541873   0.1318592
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0466321   0.0367139   0.0565503
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1728395   0.0904097   0.2552694
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1568123   0.1206390   0.1929856
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0869565   0.0706201   0.1032930
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0541096   0.0498517   0.0583676
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1382979   0.0683644   0.2082313
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0416667   0.0089602   0.0743732
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685978   0.3929407
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619469   0.0362508   0.0876430
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0476190   0.0172344   0.0780037
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0111607   0.0014252   0.0208962
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0521327   0.0221304   0.0821350
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0215650   0.0144962   0.0286338
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1794872   0.0942294   0.2647449
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128609   0.0810536   0.1446682
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1630435   0.0873937   0.2386933
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0875912   0.0401492   0.1350333
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685990   0.3929395
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1085044   0.0754487   0.1415601
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0621469   0.0265510   0.0977428
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0636792   0.0404177   0.0869408
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1370558   0.0890188   0.1850928
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0837500   0.0701729   0.0973271
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2051282   0.1154193   0.2948371
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1994751   0.1593061   0.2396441


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.2723810   0.1210378   0.6129602
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.4825397   0.1773592   1.3128415
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5012953   0.3137677   0.8009014
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9072714   0.5341448   1.5410453
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6222608   0.5080627   0.7621275
0-6 months    ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA        1                    0                 0.3012821   0.1184289   0.7664590
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.2684366   0.1186976   0.6070737
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.2343750   0.0795318   0.6906879
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.4136560   0.2133067   0.8021840
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6287964   0.3619428   1.0923960
6-24 months   ki0047075b-MAL-ED     INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA        1                    0                 0.5372263   0.2632820   1.0962088
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.4701857   0.2185896   1.0113682
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0246569   0.5194507   2.0212155
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.6110648   0.4153138   0.8990796
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9724409   0.6008487   1.5738428


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0394243   -0.0870070    0.0081584
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1563011   -0.3091626   -0.0034397
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0134046   -0.0341293    0.0073201
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0412815   -0.0769549   -0.0056080
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0132650   -0.0877711    0.0612410
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0299189   -0.0452495   -0.0145882
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.0584659   -0.1055629   -0.0113690
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1567966   -0.3093604   -0.0042328
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0256410   -0.0481179   -0.0031642
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0270509   -0.0543321    0.0002303
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0553042   -0.1308730    0.0202646
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.0451395   -0.0987760    0.0084969
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1136030   -0.2674163    0.0402103
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0010811   -0.0289183    0.0310804
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0474621   -0.0919151   -0.0030090
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0046925   -0.0862812    0.0768962


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.4468085   -1.0674801   -0.0124668
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -2.0989011   -4.8765151   -0.6341638
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.5719298   -1.6828697    0.0789850
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.7978356   -1.6183690   -0.2344374
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0831276   -0.6665403    0.2960474
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5245458   -0.8165133   -0.2795060
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7323628   -1.3486031   -0.2778152
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -2.1196581   -4.9019108   -0.6490027
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.1666667   -2.2015803   -0.4662898
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                -1.0785081   -2.4414444   -0.2553439
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4453441   -1.1933264    0.0475564
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.3828502   -0.9035622   -0.0045770
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.9695885   -2.8093271   -0.0183633
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0170978   -0.5927227    0.3934307
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.5297475   -1.1098671   -0.1091349
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0234114   -0.5232948    0.3124307
