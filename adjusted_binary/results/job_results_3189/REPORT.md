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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** exclfeed36

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

agecat      studyid                    country                        exclfeed36    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      175     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        6     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0       61     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     243
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0      165     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        7     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0       12     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        1     185
Birth       ki0047075b-MAL-ED          INDIA                          0                    0      186     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        7     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    0        5     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        0     198
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0      155     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        6     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        0     172
Birth       ki0047075b-MAL-ED          PERU                           0                    0      253     273
Birth       ki0047075b-MAL-ED          PERU                           0                    1        5     273
Birth       ki0047075b-MAL-ED          PERU                           1                    0       14     273
Birth       ki0047075b-MAL-ED          PERU                           1                    1        1     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      235     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0       3
Birth       ki1000108-IRC              INDIA                          0                    0        4       4
Birth       ki1000108-IRC              INDIA                          0                    1        0       4
Birth       ki1000108-IRC              INDIA                          1                    0        0       4
Birth       ki1000108-IRC              INDIA                          1                    1        0       4
Birth       ki1000109-EE               PAKISTAN                       0                    0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                    0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                    1        0       4
Birth       ki1101329-Keneba           GAMBIA                         0                    0      870    1252
Birth       ki1101329-Keneba           GAMBIA                         0                    1       19    1252
Birth       ki1101329-Keneba           GAMBIA                         1                    0      358    1252
Birth       ki1101329-Keneba           GAMBIA                         1                    1        5    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     4848   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      734   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20390   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1920   27892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      262    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       32    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1078    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1       82    1454
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      172     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       60     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      221     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        8     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    0        6     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      220     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                    0      245     271
6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     271
6 months    ki0047075b-MAL-ED          PERU                           1                    0       15     271
6 months    ki0047075b-MAL-ED          PERU                           1                    1        1     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      248     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      232     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        2       9
6 months    ki1000108-IRC              INDIA                          0                    0        4       4
6 months    ki1000108-IRC              INDIA                          0                    1        0       4
6 months    ki1000108-IRC              INDIA                          1                    0        0       4
6 months    ki1000108-IRC              INDIA                          1                    1        0       4
6 months    ki1000109-EE               PAKISTAN                       0                    0      238     734
6 months    ki1000109-EE               PAKISTAN                       0                    1       52     734
6 months    ki1000109-EE               PAKISTAN                       1                    0      314     734
6 months    ki1000109-EE               PAKISTAN                       1                    1      130     734
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      431     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     582
6 months    ki1101329-Keneba           GAMBIA                         0                    0     1242    1790
6 months    ki1101329-Keneba           GAMBIA                         0                    1       41    1790
6 months    ki1101329-Keneba           GAMBIA                         1                    0      490    1790
6 months    ki1101329-Keneba           GAMBIA                         1                    1       17    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      192    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       14    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      824    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       22    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     4812   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      568   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20326   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1044   26750
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1676    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      180    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6196    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      290    8342
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      138     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       15     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       48     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       10     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      195     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    0        4     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      207     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                    0      174     200
24 months   ki0047075b-MAL-ED          PERU                           0                    1       14     200
24 months   ki0047075b-MAL-ED          PERU                           1                    0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      212     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      144     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       69     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3       9
24 months   ki1000108-IRC              INDIA                          0                    0        3       4
24 months   ki1000108-IRC              INDIA                          0                    1        1       4
24 months   ki1000108-IRC              INDIA                          1                    0        0       4
24 months   ki1000108-IRC              INDIA                          1                    1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      391     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       37     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      136     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       12     576
24 months   ki1101329-Keneba           GAMBIA                         0                    0      880    1394
24 months   ki1101329-Keneba           GAMBIA                         0                    1       90    1394
24 months   ki1101329-Keneba           GAMBIA                         1                    0      401    1394
24 months   ki1101329-Keneba           GAMBIA                         1                    1       23    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      144     912
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       30     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      670     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       68     912
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2324   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      496   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9036   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1530   13386
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1536    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      230    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     5738    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      542    8046


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/960b0ebf-1c35-499d-8b31-0b17d952a842/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/960b0ebf-1c35-499d-8b31-0b17d952a842/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/960b0ebf-1c35-499d-8b31-0b17d952a842/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/960b0ebf-1c35-499d-8b31-0b17d952a842/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0213723   0.0118618   0.0308829
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0950583   0.0899589   0.1001577
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0950849   0.0899871   0.1001827
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0751814   0.0494789   0.1008838
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0782465   0.0543079   0.1021851
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1768240   0.1163381   0.2373100
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2966406   0.2398007   0.3534804
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0319258   0.0223058   0.0415458
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0333576   0.0176657   0.0490495
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0607407   0.0171210   0.1043604
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0261941   0.0109448   0.0414435
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0853856   0.0761832   0.0945879
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0538233   0.0497748   0.0578718
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0775789   0.0622025   0.0929552
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0466304   0.0388176   0.0544432
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0954775   0.0490283   0.1419267
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1764551   0.0825008   0.2704094
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0864576   0.0598216   0.1130936
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0809410   0.0369846   0.1248974
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0928451   0.0746240   0.1110661
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0594905   0.0379433   0.0810377
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1272116   0.0550994   0.1993238
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0907064   0.0612974   0.1201154
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1586727   0.1411561   0.1761893
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1484271   0.1382764   0.1585777
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1182132   0.0985682   0.1378582
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0873276   0.0757421   0.0989132


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0191693   0.0115710   0.0267677
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0951527   0.0900508   0.1002546
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0784044   0.0544827   0.1023261
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2479564   0.2037162   0.2921966
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0324022   0.0241972   0.0406072
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0342205   0.0186698   0.0497713
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0602617   0.0561000   0.0644233
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563414   0.0484727   0.0642101
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1184834   0.0747732   0.1621936
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0810617   0.0667291   0.0953942
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1074561   0.0790002   0.1359121
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1513522   0.1415495   0.1611548
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0959483   0.0853397   0.1065568


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.6444831   0.2423845   1.7136347
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0002798   0.9996708   1.0008892
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0407692   0.8798556   1.2311117
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6776034   1.1520668   2.4428733
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.0448497   0.5976887   1.8265544
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.4312452   0.1714204   1.0848910
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6303556   0.5582126   0.7118222
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6010704   0.4735998   0.7628502
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.8481322   0.9010931   3.7904988
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.9361933   0.5014897   1.7477086
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.6407503   0.4245976   0.9669413
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7130357   0.3712819   1.3693637
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9354293   0.8317174   1.0520736
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7387298   0.6012199   0.9076907


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0022030   -0.0066453    0.0022393
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000944    0.0000518    0.0001371
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0032230   -0.0069951    0.0134412
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0711324    0.0228666    0.1193982
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0004765   -0.0047352    0.0056881
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0265202   -0.0630061    0.0099658
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0251239   -0.0323944   -0.0178534
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0212375   -0.0333678   -0.0091072
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0230059   -0.0070005    0.0530123
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0013882   -0.0146000    0.0118237
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0117834   -0.0204244   -0.0031424
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0197554   -0.0816651    0.0421543
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0073205   -0.0215615    0.0069205
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0222649   -0.0390908   -0.0054390


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.1149231   -0.3671976    0.0908018
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0009925    0.0005447    0.0014401
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0411078   -0.0987103    0.1631331
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2868746    0.0641152    0.4566128
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0147044   -0.1599609    0.1630689
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7749786   -2.1552507    0.0014901
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4169135   -0.5390241   -0.3044916
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3769428   -0.6086843   -0.1785852
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1941696   -0.0927232    0.4057392
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0163179   -0.1840641    0.1276638
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1453632   -0.2545422   -0.0456857
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1838464   -0.9167699    0.2688260
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0483673   -0.1467707    0.0415922
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2320512   -0.4234607   -0.0663801
