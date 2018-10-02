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
![](/tmp/3df1695a-2324-4a16-bc2f-ca0416ab79dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3df1695a-2324-4a16-bc2f-ca0416ab79dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3df1695a-2324-4a16-bc2f-ca0416ab79dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3df1695a-2324-4a16-bc2f-ca0416ab79dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level                    baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  ------------------------------------  ---------------  ----------  ----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      NA                0.4878049   0.3344284   0.6411814
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                NA                0.5833333   0.3037108   0.8629558
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3884298   0.3013742   0.4754853
24 months   ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             NA                0.6451613   0.4763200   0.8140026
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      NA                0.3153356   0.2275260   0.4031452
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                NA                0.5148461   0.3632935   0.6663986
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   NA                0.2624896   0.2151988   0.3097803
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             NA                0.5205113   0.4230915   0.6179311
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      NA                0.2638040   0.2209774   0.3066305
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X EBF                NA                0.5980964   0.4625819   0.7336109
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   NA                0.3318459   0.2993075   0.3643843
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             NA                0.6354589   0.5442591   0.7266588
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      NA                0.3969050   0.3800998   0.4137103
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                NA                0.6485278   0.6287732   0.6682823
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3968865   0.3663484   0.4274246
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             NA                0.6455497   0.6160477   0.6750518
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      NA                0.3303204   0.3071714   0.3534695
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                NA                0.5435852   0.5018295   0.5853409
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3345229   0.2874520   0.3815939
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             NA                0.6512482   0.5741784   0.7283181
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      NA                0.1136364   0.0196570   0.2076157
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                NA                0.4166667   0.1371186   0.6962147
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   NA                0.1231884   0.0682352   0.1781416
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             NA                0.3888889   0.2292951   0.5484826
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF      NA                0.4619486   0.3840261   0.5398711
6 months    ki1000109-EE         PAKISTAN     Low birth weight X EBF                NA                0.7969716   0.7164894   0.8774538
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X No EBF   NA                0.2882907   0.2043246   0.3722568
6 months    ki1000109-EE         PAKISTAN     Low birth weight X No EBF             NA                0.6624462   0.5528191   0.7720733
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      NA                0.0714286   0.0203955   0.1224616
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                NA                0.2894737   0.1451546   0.4337927
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   NA                0.1011561   0.0693565   0.1329556
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             NA                0.4059406   0.3100874   0.5017937
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      NA                0.1145270   0.0848057   0.1442482
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X EBF                NA                0.4315587   0.2934786   0.5696388
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   NA                0.1199148   0.0999943   0.1398353
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             NA                0.3969097   0.3127688   0.4810506
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      NA                0.1322647   0.1241331   0.1403963
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                NA                0.4251945   0.4098359   0.4405532
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   NA                0.1728868   0.1559630   0.1898106
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             NA                0.5044090   0.4792619   0.5295561
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      NA                0.1598290   0.1418076   0.1778505
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                NA                0.4630236   0.4204158   0.5056314
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   NA                0.2146713   0.1751304   0.2542122
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             NA                0.6013802   0.5340568   0.6687035


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
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6326925   1.0882173    2.4495887
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.8324133   0.5974228    1.1598351
24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6506583   1.1802213    2.3086117
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X EBF                Normal or high birthweight X EBF    2.2672002   1.7156947    2.9959857
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.2579259   1.0408728    1.5202411
24 months   ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             Normal or high birthweight X EBF    2.4088300   1.9399894    2.9909762
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6339620   1.5556238    1.7162451
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.9999534   0.9178693    1.0893782
24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6264589   1.5306976    1.7282111
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.6456300   1.4837508    1.8251705
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0127225   0.8717317    1.1765168
24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.9715653   1.7222226    2.2570076
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    3.6666667   1.2640841   10.6357199
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0840580   0.4236083    2.7742181
6 months    ki0047075b-MAL-ED    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.4222222   1.3594073    8.6152291
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE         PAKISTAN     Low birth weight X EBF                Normal or high birthweight X EBF    1.7252385   1.4177684    2.0993894
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.6240753   0.4465550    0.8721657
6 months    ki1000109-EE         PAKISTAN     Low birth weight X No EBF             Normal or high birthweight X EBF    1.4340257   1.1325285    1.8157864
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    4.0526316   1.6957945    9.6850311
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.4161850   0.6488218    3.0911105
6 months    ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    5.6831683   2.6779138   12.0610314
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X EBF                Normal or high birthweight X EBF    3.7681846   2.4956998    5.6894724
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0470442   0.7696773    1.4243653
6 months    ki1101329-Keneba     GAMBIA       Low birth weight X No EBF             Normal or high birthweight X EBF    3.4656444   2.4795848    4.8438317
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    3.2147246   3.0074124    3.4363276
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.3071274   1.1685942    1.4620832
6 months    kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.8136333   3.5338118    4.1156122
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    2.8969931   2.5034900    3.3523476
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.3431309   1.0893458    1.6560405
6 months    kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    3.7626469   3.2155083    4.4028845


### Parameter: PAR


agecat      studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                -0.0292683   -0.1663446   0.1078080
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0139538   -0.0656761   0.0935838
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.0736006    0.0366777   0.1105235
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0938889    0.0827706   0.1050072
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0661747    0.0511539   0.0811955
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0646245   -0.0243144   0.1535634
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF   NA                 0.0568686   -0.0041747   0.1179118
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0898064    0.0386065   0.1410064
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.0318905    0.0055045   0.0582765
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1184258    0.1118047   0.1250470
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0911236    0.0765075   0.1057398


### Parameter: PAF


agecat      studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
24 months   ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                -0.0638298   -0.4091631   0.1968752
24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.0423756   -0.2326795   0.2560560
24 months   ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.2181375    0.1011020   0.3199352
24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1913001    0.1680052   0.2139427
24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.1668991    0.1282326   0.2038505
6 months    ki0047075b-MAL-ED    BANGLADESH   Normal or high birthweight X EBF   NA                 0.3625277   -0.3781932   0.7051423
6 months    ki1000109-EE         PAKISTAN     Normal or high birthweight X EBF   NA                 0.1096120   -0.0162614   0.2198948
6 months    ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                 0.5569909    0.1214644   0.7766089
6 months    ki1101329-Keneba     GAMBIA       Normal or high birthweight X EBF   NA                 0.2178053    0.0168173   0.3777061
6 months    kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.4723985    0.4473112   0.4963471
6 months    kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.3631108    0.3061324   0.4154104
