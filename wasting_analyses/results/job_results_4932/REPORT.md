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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        exclfeed3    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       10     118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       14     118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       32     118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       62     118
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       11      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        3      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        6      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       36     177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       42     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       34     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       65     177
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       14      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       51      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        6      92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       21      92
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      32
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       23      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3      32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       62      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3      78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       25      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       12      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5      11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6      11
0-24 months   ki1000108-IRC              INDIA                          0                      0        8      14
0-24 months   ki1000108-IRC              INDIA                          0                      1        6      14
0-24 months   ki1000108-IRC              INDIA                          1                      0        0      14
0-24 months   ki1000108-IRC              INDIA                          1                      1        0      14
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       38     514
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        6     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      262     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      208     514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81     238
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       40     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       54     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       88     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      125     307
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0       81    1234
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1       80    1234
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      453    1234
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      620    1234
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       68     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       86     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      370     940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      416     940
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1038   14674
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      892   14674
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     7328   14674
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     5416   14674
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        8     106
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     106
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       74     106
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       24     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        4      58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       11      58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        8      58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       35      58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        8      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        5      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       18      82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       27      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        7      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       30      82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        5      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       24      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        9      42
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       11      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       23      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1      28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        6      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        5      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3       6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3       6
0-6 months    ki1000108-IRC              INDIA                          0                      0        5      10
0-6 months    ki1000108-IRC              INDIA                          0                      1        5      10
0-6 months    ki1000108-IRC              INDIA                          1                      0        0      10
0-6 months    ki1000108-IRC              INDIA                          1                      1        0      10
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       18     216
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        4     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       76     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      1      118     216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43      94
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       16     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1       45     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       23     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      100     184
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0       31     377
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1       36     377
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       95     377
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      215     377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       28     300
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       34     300
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       96     300
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      142     300
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      472    9160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      892    9160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2380    9160
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     5416    9160
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0        4      20
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0      20
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0       10      20
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        6      20
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0        6      60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        3      60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       24      60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       27      60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        2       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       18      95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       15      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       27      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       35      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       27      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        2      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       12      50
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      21
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3      21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       39      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        6      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       19      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        7      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        2       5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3       5
6-24 months   ki1000108-IRC              INDIA                          0                      0        3       4
6-24 months   ki1000108-IRC              INDIA                          0                      1        1       4
6-24 months   ki1000108-IRC              INDIA                          1                      0        0       4
6-24 months   ki1000108-IRC              INDIA                          1                      1        0       4
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       20     298
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        2     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      0      186     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       90     298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38     144
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       24     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1        9     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       65     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       25     123
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0       50     857
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1       44     857
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      358     857
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      405     857
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       40     640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       52     640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      274     640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      274     640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      566    5514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0    5514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     4948    5514
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0    5514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        4      86
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0      86
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       64      86
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       18      86


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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1032cec3-bfbd-46c1-87fe-35d328660b4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1032cec3-bfbd-46c1-87fe-35d328660b4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1032cec3-bfbd-46c1-87fe-35d328660b4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1032cec3-bfbd-46c1-87fe-35d328660b4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5934256   0.3601646   0.8266866
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6576372   0.5691015   0.7461730
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.5276621   0.4125802   0.6427439
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.6615353   0.5637287   0.7593418
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.7846154   0.6984506   0.8707802
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.7777778   0.5946691   0.9608864
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1363636   0.0045897   0.2681376
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4425532   0.3734795   0.5116269
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8647787   0.7984837   0.9310738
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.6966329   0.6342558   0.7590100
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5130217   0.4380588   0.5879847
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5752055   0.5432497   0.6071612
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4960108   0.3772578   0.6147638
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5263975   0.4725803   0.5802148
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4708672   0.4499328   0.4918017
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4249335   0.4132099   0.4366571
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.6000000   0.4545320   0.7454680
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.8108108   0.6777087   0.9439129
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7269979   0.6206392   0.8333566
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8126498   0.7454088   0.8798908
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.5270262   0.4350813   0.6189711
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.6945382   0.6434491   0.7456273
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7577643   0.6228440   0.8926847
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6095947   0.5227838   0.6964056
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6652045   0.6410189   0.6893901
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6902620   0.6761920   0.7043319
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4475885   0.2448845   0.6502926
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5679700   0.4327301   0.7032099
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4774585   0.3756699   0.5792471
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5296683   0.4919648   0.5673718
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5832701   0.4398855   0.7266548
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5022637   0.4383097   0.5662177


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6440678   0.5565826   0.7315530
0-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.6045198   0.5246128   0.6844268
0-24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                0.7826087   0.7016344   0.8635829
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5672609   0.5371792   0.5973426
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5340426   0.4848509   0.5832342
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4298760   0.4185519   0.4412000
0-6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.6951220   0.5922224   0.7980215
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.6657825   0.6181920   0.7133730
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5866667   0.5072781   0.6660552
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6886463   0.6752359   0.7020567
6-24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5093750   0.4496016   0.5691484


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1082050   0.7339841   1.6732218
0-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.2537101   0.9750488   1.6120107
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.9912854   0.7640468   1.2861081
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 3.2453901   1.2192841   8.6383119
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.2064597
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8055620   0.7124010   0.9109057
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.1212107   0.9616825   1.3072023
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0612623   0.8184312   1.3761420
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9024486   0.8595146   0.9475272
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.3513514   1.0083141   1.8110928
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1178159   0.9450302   1.3221930
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.3178437   1.0970098   1.5831325
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8044647   0.6425236   1.0072214
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0376688   0.9974073   1.0795555
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.2689557   0.7641499   2.1072417
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0185185   0.5056188   2.0517038
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.1093494   0.8878350   1.3861315
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8611168   0.6550254   1.1320511


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0506422   -0.1456783    0.2469626
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0768577   -0.0034232    0.1571386
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0020067   -0.0614602    0.0574468
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.2799788    0.1439670    0.4159905
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384    0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2817169   -0.3432388   -0.2201949
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0542392   -0.0150294    0.1235079
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0380318   -0.0706436    0.1467071
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0409913   -0.0600314   -0.0219512
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0951220    0.0036396    0.1866043
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0610456   -0.0225814    0.1446726
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.1387563    0.0566827    0.2208299
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1710977   -0.2918433   -0.0503520
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0234418    0.0014802    0.0454033
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0787272   -0.0793438    0.2367983
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0036955   -0.1366586    0.1440496
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0464621   -0.0490805    0.1420048
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0738951   -0.2058805    0.0580903


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0786286   -0.2864619    0.3401086
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.1271385   -0.0181570    0.2516996
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0025641   -0.0815646    0.0706659
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.6724724    0.1526889    0.8733944
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815    0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.4831680   -0.6197213   -0.3581271
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0956160   -0.0351264    0.2098449
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0712149   -0.1563289    0.2539823
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0953560   -0.1409469   -0.0515869
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.1368421   -0.0098481    0.2622241
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0774647   -0.0357664    0.1783173
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.2084108    0.0751872    0.3224429
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2916438   -0.5254707   -0.0936583
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0340404    0.0016999    0.0653331
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.1495818   -0.2168850    0.4056865
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0133690   -0.6512460    0.4104811
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0886816   -0.1132770    0.2540031
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1450702   -0.4371277    0.0876345
