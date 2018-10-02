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
![](/tmp/93aa9cb6-e7f6-496f-bb3a-11dc17886c2c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93aa9cb6-e7f6-496f-bb3a-11dc17886c2c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93aa9cb6-e7f6-496f-bb3a-11dc17886c2c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93aa9cb6-e7f6-496f-bb3a-11dc17886c2c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5825359   0.3374837   0.8275882
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6597626   0.5702605   0.7492647
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.7073096   0.5930775   0.8215417
0-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.7543829   0.6573151   0.8514507
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                0.7846154   0.6984506   0.8707802
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                0.7777778   0.5946691   0.9608864
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1363636   0.0045897   0.2681376
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4425532   0.3734795   0.5116269
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8666368   0.8076381   0.9256354
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7053893   0.6445597   0.7662188
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5137658   0.4352636   0.5922681
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5752425   0.5431464   0.6073386
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5597975   0.4390757   0.6805194
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5289950   0.4751366   0.5828535
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4708855   0.4500122   0.4917587
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4248693   0.4131495   0.4365891
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                0.6000000   0.4545320   0.7454680
0-6 months    ki0047075b-MAL-ED         INDIA        1                    NA                0.8108108   0.6777087   0.9439129
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.7317531   0.6253900   0.8381161
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.8144129   0.7472468   0.8815789
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.5283172   0.4353974   0.6212369
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.6943139   0.6431496   0.7454782
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7913891   0.6731685   0.9096098
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6157121   0.5294609   0.7019632
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6652126   0.6411772   0.6892481
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6900348   0.6759718   0.7040978
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                0.4486668   0.2453448   0.6519888
6-24 months   ki0047075b-MAL-ED         INDIA        1                    NA                0.5674630   0.4322413   0.7026847
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.4768004   0.3807277   0.5728730
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5297663   0.4922541   0.5672785
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5652174   0.4059418   0.7244930
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5000000   0.4354869   0.5645131


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1325698   0.7278747   1.7622735
0-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.0665526   0.8641627   1.3163429
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL        1                    0                 0.9912854   0.7640468   1.2861081
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 3.2453901   1.2192841   8.6383119
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.2064597
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8139387   0.7247363   0.9141204
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.1196589   0.9530197   1.3154356
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9449756   0.7445817   1.1993029
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9022774   0.8595036   0.9471798
0-6 months    ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA        1                    0                 1.3513514   1.0083141   1.8110928
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1129613   0.9418799   1.3151177
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.3141991   1.0921354   1.5814149
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.7780143   0.6342063   0.9544312
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0373146   0.9973338   1.0788982
6-24 months   ki0047075b-MAL-ED         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA        1                    0                 1.2647761   0.7610091   2.1020229
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0185185   0.5056188   2.0517038
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.1110861   0.9010406   1.3700962
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8846154   0.6486774   1.2063691


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0615319   -0.1468471    0.2699108
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.1027899   -0.1847425   -0.0208372
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0020067   -0.0614602    0.0574468
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.2799788    0.1439670    0.4159905
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384    0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2835749   -0.3414702   -0.2256796
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0534951   -0.0194232    0.1264133
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0257550   -0.1363563    0.0848464
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0410095   -0.0599796   -0.0220394
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.0951220    0.0036396    0.1866043
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0562904   -0.0272361    0.1398169
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.1374653    0.0543790    0.2205517
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2047225   -0.3132479   -0.0961971
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0234337    0.0016190    0.0452483
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.0776490   -0.0809020    0.2362000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0036955   -0.1366586    0.1440496
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0471203   -0.0425242    0.1367647
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0558424   -0.2034345    0.0917498


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0955363   -0.2983527    0.3699289
0-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.1700356   -0.3159473   -0.0403025
0-24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.0025641   -0.0815646    0.0706659
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.6724724    0.1526889    0.8733944
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815    0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.4863547   -0.6206562   -0.3631826
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0943042   -0.0438438    0.2141689
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0482264   -0.2773014    0.1397656
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0953984   -0.1408207   -0.0517847
0-6 months    ki0047075b-MAL-ED         INDIA        0                    NA                 0.1368421   -0.0098481    0.2622241
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0714306   -0.0415536    0.1721587
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.2064718    0.0714738    0.3218426
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.3489588   -0.5663118   -0.1617672
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0340286    0.0019101    0.0651135
6-24 months   ki0047075b-MAL-ED         INDIA        0                    NA                 0.1475332   -0.2200569    0.4043723
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0133690   -0.6512460    0.4104811
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0899378   -0.0983408    0.2459415
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1096292   -0.4410898    0.1455931
