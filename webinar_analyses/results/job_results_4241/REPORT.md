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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** birthwtXexclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* W_nrooms
* W_nchldlt5
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
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat      studyid                    country                        birthwtXexclfeed6                      stunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------------------------  --------  -------  ------
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF             0       21     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF             1       20     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                       0        5     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                       1        7     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF          0       74     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF          1       47     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                    0       11     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                    1       20     205
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF             0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                       0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                       1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF          0      142     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF          1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                    0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF             0        1     217
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF             1        4     217
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                       0        0     217
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                       1        0     217
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF          0      109     217
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF          1       69     217
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                    0       17     217
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                    1       17     217
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF             0       12     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF             1        2     220
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                       0        0     220
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                       1        0     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF          0      152     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF          1       34     220
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                    0       11     220
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                    1        9     220
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF             0        3     195
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF             1        5     195
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                       0        0     195
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                       1        0     195
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF          0      120     195
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF          1       56     195
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                    0        2     195
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                    1        9     195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF             0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF             1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                       0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                       1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF          0      138     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF          1       75     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                    0       10     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                    1        4     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF             0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF             1        0     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                       0        0     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                       1        0     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF          0       39     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF          1       63     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                    0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                    1        4     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF             0        7      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF             1       10      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                       0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                       1        2      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF          0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF          1        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                    0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                    1        0      19
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X EBF             0        0      14
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X EBF             1        0      14
24 months   ki1000108-IRC              INDIA                          Low birth weight X EBF                       0        0      14
24 months   ki1000108-IRC              INDIA                          Low birth weight X EBF                       1        0      14
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF          0        5      14
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF          1        6      14
24 months   ki1000108-IRC              INDIA                          Low birth weight X No EBF                    0        0      14
24 months   ki1000108-IRC              INDIA                          Low birth weight X No EBF                    1        3      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF             0       73     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF             1       33     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                       0       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                       1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF          0      245     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF          1       87     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                    0       49     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                    1       52     577
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF             0      291    1310
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF             1      105    1310
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                       0       15    1310
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                       1       19    1310
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF          0      531    1310
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF          1      265    1310
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                    0       31    1310
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                    1       53    1310
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF             0     5140   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF             1     3396   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                       0     1684   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                       1     3094   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF          0     1294   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF          1      838   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                    0      566   17054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                    1     1042   17054
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF             0     2904    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF             1     1428    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                       0      688    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                       1      826    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF          0      674    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF          1      352    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                    0      142    7304
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                    1      290    7304
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF             0       39     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF             1        5     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                       0        7     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                       1        5     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF          0      121     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF          1       17     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                    0       22     230
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                    1       14     230
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF             0       14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                       0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                       1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF          0      180     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                    0        7     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                    1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF             0        4     225
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF             1        2     225
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                       0        0     225
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                       1        0     225
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF          0      155     225
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF          1       29     225
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                    0       25     225
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                    1       10     225
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF             0       14     228
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF             1        0     228
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                       0        0     228
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                       1        0     228
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF          0      187     228
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF          1        6     228
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                    0       16     228
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                    1        5     228
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF             0        8     266
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF             1        2     266
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                       0        0     266
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                       1        1     266
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF          0      197     266
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF          1       43     266
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                    0        5     266
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                    1       10     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF             0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF             1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                       0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                       1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF          0      183     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF          1       43     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                    0       11     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                    1        5     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF             0        1     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF             1        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                       0        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                       1        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF          0      102     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF          1       17     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                    0        2     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                    1        4     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF             0       12      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF             1        5      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                       0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                       1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF          0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF          1        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                    0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                    1        0      19
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight X EBF             0        0      14
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight X EBF             1        0      14
6 months    ki1000108-IRC              INDIA                          Low birth weight X EBF                       0        0      14
6 months    ki1000108-IRC              INDIA                          Low birth weight X EBF                       1        0      14
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF          0       10      14
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF          1        1      14
6 months    ki1000108-IRC              INDIA                          Low birth weight X No EBF                    0        1      14
6 months    ki1000108-IRC              INDIA                          Low birth weight X No EBF                    1        2      14
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight X EBF             0      154     744
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight X EBF             1      136     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight X EBF                       0       30     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight X EBF                       1      116     744
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight X No EBF          0      138     744
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight X No EBF          1       58     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight X No EBF                    0       36     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight X No EBF                    1       76     744
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X EBF             0      221     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X EBF             1       59     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X EBF                       0       32     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X EBF                       1       58     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X No EBF          0       11     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X No EBF          1        2     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X No EBF                    0        2     389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X No EBF                    1        4     389
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF             0       91     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF             1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                       0       27     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                       1       11     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF          0      311     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF          1       35     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                    0       60     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                    1       41     583
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF             0      389    1605
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF             1       50    1605
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                       0       19    1605
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                       1       17    1605
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF          0      896    1605
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF          1      123    1605
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                    0       66    1605
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                    1       45    1605
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF             0    14962   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF             1     2266   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                       0     5278   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                       1     3850   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF          0     3292   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF          1      722   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                    0     1426   33308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                    1     1512   33308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF             0     3664    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF             1      694    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                       0      814    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                       1      672    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF          0      844    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF          1      226    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                    0      182    7348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                    1      252    7348


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/62e855fc-960e-48a4-8529-15f09158bfaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62e855fc-960e-48a4-8529-15f09158bfaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62e855fc-960e-48a4-8529-15f09158bfaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62e855fc-960e-48a4-8529-15f09158bfaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level                    baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  ------------------------------------  ---------------  ----------  ----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      NA                0.4878049   0.3344284   0.6411814
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                NA                0.5833333   0.3037108   0.8629558
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3884298   0.3013742   0.4754853
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             NA                0.6451613   0.4763200   0.8140026
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      NA                0.3156262   0.2283463   0.4029062
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                NA                0.5198494   0.3743519   0.6653468
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   NA                0.2628066   0.2155033   0.3101100
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             NA                0.5200928   0.4233847   0.6168009
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      NA                0.2648888   0.2217553   0.3080223
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X EBF                NA                0.5974537   0.4482740   0.7466334
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   NA                0.3324695   0.2998244   0.3651145
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             NA                0.6371923   0.5400602   0.7343244
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      NA                0.3966358   0.3797965   0.4134750
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                NA                0.6482271   0.6283667   0.6680875
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3968704   0.3660442   0.4276965
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             NA                0.6453823   0.6156199   0.6751447
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      NA                0.3303289   0.3071773   0.3534805
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                NA                0.5436310   0.5018446   0.5854174
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3343800   0.2872463   0.3815138
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             NA                0.6513830   0.5740859   0.7286800
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      NA                0.1136364   0.0196570   0.2076157
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                NA                0.4166667   0.1371186   0.6962147
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   NA                0.1231884   0.0682352   0.1781416
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             NA                0.3888889   0.2292951   0.5484826
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF      NA                0.4617760   0.3842114   0.5393406
6 months    ki1000109-EE         PAKISTAN     Low birth weight X EBF                NA                0.7964297   0.7170365   0.8758228
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X No EBF   NA                0.2887890   0.2054780   0.3721001
6 months    ki1000109-EE         PAKISTAN     Low birth weight X No EBF             NA                0.6636981   0.5551693   0.7722269
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      NA                0.0714286   0.0203955   0.1224616
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                NA                0.2894737   0.1451546   0.4337927
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   NA                0.1011561   0.0693565   0.1329556
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             NA                0.4059406   0.3100874   0.5017937
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      NA                0.1150045   0.0852373   0.1447716
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X EBF                NA                0.4749489   0.3127508   0.6371471
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   NA                0.1200563   0.1000972   0.1400155
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             NA                0.4092506   0.3198015   0.4986997
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      NA                0.1322750   0.1241369   0.1404130
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                NA                0.4251898   0.4098157   0.4405639
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   NA                0.1728317   0.1559101   0.1897533
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             NA                0.5043137   0.4791421   0.5294853
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      NA                0.1599244   0.1418978   0.1779511
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                NA                0.4637583   0.4208099   0.5067068
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   NA                0.2145270   0.1749166   0.2541374
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             NA                0.6005526   0.5307666   0.6703385


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   NA                   NA                0.4585366   0.3901604   0.5269127
24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.3374046   0.3117905   0.3630186
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.4907939   0.4775954   0.5039925
24 months   kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.3964951   0.3770031   0.4159871
6 months    ki0047075b-MAL-ED    BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316
6 months    ki1000109-EE         PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.1464174   0.1291167   0.1637182
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.2506905   0.2425258   0.2588553
6 months    kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.2509526   0.2340036   0.2679017


### Parameter: RR


agecat      studyid              country      intervention_level                    baseline_level                       estimate    ci_lower     ci_upper
----------  -------------------  -----------  ------------------------------------  ---------------------------------  ----------  ----------  -----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.1958333   0.6740654    2.1214818
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.7962810   0.5412213    1.1715419
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.3225806   0.8785350    1.9910643
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6470412   1.1106857    2.4424055
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.8326515   0.5986111    1.1581953
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6478125   1.1809274    2.2992828
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X EBF                Normal or high birthweight X EBF    2.2554886   1.6742127    3.0385796
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.2551283   1.0379586    1.5177359
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             Normal or high birthweight X EBF    2.4055085   1.9249147    3.0060923
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6343134   1.5555141    1.7171044
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0005915   0.9177784    1.0908769
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6271409   1.5307382    1.7296150
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6457264   1.4837745    1.8253551
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0122640   0.8711636    1.1762182
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.9719226   1.7220834    2.2580083
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    3.6666667   1.2640841   10.6357199
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0840580   0.4236083    2.7742181
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.4222222   1.3594073    8.6152291
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE         PAKISTAN     Low birth weight X EBF                Normal or high birthweight X EBF    1.7247099   1.4191558    2.0960519
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.6253877   0.4488702    0.8713205
6 months    ki1000109-EE         PAKISTAN     Low birth weight X No EBF             Normal or high birthweight X EBF    1.4372729   1.1372847    1.8163906
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    4.0526316   1.6957945    9.6850311
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.4161850   0.6488218    3.0911105
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    5.6831683   2.6779138   12.0610314
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X EBF                Normal or high birthweight X EBF    4.1298304   2.6903892    6.3394170
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0439275   0.7677027    1.4195399
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             Normal or high birthweight X EBF    3.5585627   2.5365965    4.9922675
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    3.2144383   3.0070211    3.4361627
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.3066091   1.1680917    1.4615525
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.8126160   3.5327027    4.1147083
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    2.8998591   2.5050799    3.3568521
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.3414275   1.0876361    1.6544392
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.7552270   3.1994014    4.4076150


### Parameter: PAR


agecat      studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                -0.0292683   -0.1663446   0.1078080
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0136632   -0.0655051   0.0928315
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.0725158    0.0353529   0.1096786
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0941582    0.0829956   0.1053208
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0661662    0.0511438   0.0811886
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0646245   -0.0243144   0.1535634
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF   NA                 0.0570412   -0.0037517   0.1178341
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0898064    0.0386065   0.1410064
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.0314130    0.0049905   0.0578354
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1184155    0.1117906   0.1250405
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0910282    0.0764099   0.1056465


### Parameter: PAF


agecat      studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                -0.0638298   -0.4091631   0.1968752
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0414931   -0.2317053   0.2540947
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.2149223    0.0970302   0.3174223
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1918487    0.1684566   0.2145828
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1668777    0.1282061   0.2038339
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                 0.3625277   -0.3781932   0.7051423
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF   NA                 0.1099447   -0.0153336   0.2197653
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.5569909    0.1214644   0.7766089
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.2145440    0.0133208   0.3747298
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.4723575    0.4472446   0.4963294
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.3627306    0.3057385   0.4150442
