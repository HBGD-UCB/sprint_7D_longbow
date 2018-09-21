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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        exclfeed36    swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      164     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       58     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     230
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      165     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      183     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        5     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     195
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      152     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     167
Birth       ki0047075b-MAL-ED          PERU                           0                   0      251     266
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0     266
Birth       ki0047075b-MAL-ED          PERU                           1                   0       15     266
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      114     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       ki1000108-IRC              INDIA                          0                   0        3       3
Birth       ki1000108-IRC              INDIA                          0                   1        0       3
Birth       ki1000108-IRC              INDIA                          1                   0        0       3
Birth       ki1000108-IRC              INDIA                          1                   1        0       3
Birth       ki1000109-EE               PAKISTAN                       0                   0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1101329-Keneba           GAMBIA                         0                   0      849    1202
Birth       ki1101329-Keneba           GAMBIA                         0                   1        8    1202
Birth       ki1101329-Keneba           GAMBIA                         1                   0      342    1202
Birth       ki1101329-Keneba           GAMBIA                         1                   1        3    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     4214   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       74   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    18028   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      322   22638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      222    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      972    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       10    1204
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      175     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        2     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       63     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      224     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      221     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      255     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
6 months    ki0047075b-MAL-ED          PERU                           1                   0       16     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      251     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      246     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       9
6 months    ki1000108-IRC              INDIA                          0                   0        4       4
6 months    ki1000108-IRC              INDIA                          0                   1        0       4
6 months    ki1000108-IRC              INDIA                          1                   0        0       4
6 months    ki1000108-IRC              INDIA                          1                   1        0       4
6 months    ki1000109-EE               PAKISTAN                       0                   0      280     742
6 months    ki1000109-EE               PAKISTAN                       0                   1       14     742
6 months    ki1000109-EE               PAKISTAN                       1                   0      444     742
6 months    ki1000109-EE               PAKISTAN                       1                   1        4     742
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      437     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        0     582
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1261    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1       22    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   0      498    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1        9    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      206    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      834    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     5288   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      110   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    21050   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      258   26706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1840    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       20    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6446    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       38    8344
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      153     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       58     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      219     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      214     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      187     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     200
24 months   ki0047075b-MAL-ED          PERU                           1                   0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      238     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      213     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       9
24 months   ki1000108-IRC              INDIA                          0                   0        4       4
24 months   ki1000108-IRC              INDIA                          0                   1        0       4
24 months   ki1000108-IRC              INDIA                          1                   0        0       4
24 months   ki1000108-IRC              INDIA                          1                   1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      421     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        7     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      146     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     576
24 months   ki1101329-Keneba           GAMBIA                         0                   0      950    1395
24 months   ki1101329-Keneba           GAMBIA                         0                   1       21    1395
24 months   ki1101329-Keneba           GAMBIA                         1                   0      418    1395
24 months   ki1101329-Keneba           GAMBIA                         1                   1        6    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      160     910
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       14     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      722     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       14     910
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2676   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      136   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10120   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      412   13344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1714    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       50    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6100    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      154    8018


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c87b0261-692c-4513-a3ac-1915e009af13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c87b0261-692c-4513-a3ac-1915e009af13/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c87b0261-692c-4513-a3ac-1915e009af13/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c87b0261-692c-4513-a3ac-1915e009af13/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170860   0.0119093   0.0222628
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0175821   0.0141317   0.0210325
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0171473   0.0100418   0.0242529
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0177515   0.0062542   0.0292487
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0202030   0.0145289   0.0258770
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0122321   0.0100032   0.0144610
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0145544   0.0093350   0.0197738
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0060748   0.0007113   0.0114383
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0216272   0.0124745   0.0307798
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0141509   0.0029044   0.0253975
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0743042   0.0208676   0.1277408
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0190295   0.0050401   0.0330189
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0419051   0.0314734   0.0523368
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0401842   0.0341639   0.0462046
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0213457   0.0120144   0.0306770
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0249447   0.0186030   0.0312865


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0174927   0.0144504   0.0205350
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0173184   0.0112733   0.0233635
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0137797   0.0115120   0.0160474
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0069511   0.0026049   0.0112973
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0193548   0.0121227   0.0265870
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0307692   0.0148841   0.0466544
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0410671   0.0355641   0.0465702
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0254428   0.0199234   0.0309621


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0290348   0.7234382   1.4637221
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.0352340   0.4798567   2.2333946
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6054602   0.4396653   0.8337752
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4173852   0.1608037   1.0833727
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.6543127   0.2659151   1.6100063
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2561030   0.0916450   0.7156826
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9589347   0.7163038   1.2837510
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.1686090   0.7024249   1.9441894


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0004067   -0.0044518    0.0052652
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0001711   -0.0036571    0.0039993
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0064233   -0.0110740   -0.0017725
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0076033   -0.0134504   -0.0017563
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0022723   -0.0066833    0.0021386
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0435350   -0.0878482    0.0007782
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0008379   -0.0101612    0.0084853
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0040971   -0.0045249    0.0127191


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0232483   -0.2969460    0.2643919
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0098811   -0.2377542    0.2079724
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4661415   -0.8316270   -0.1735855
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.0938300   -2.9456934   -0.1111162
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1174047   -0.3652216    0.0854280
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4148864   -3.1119458   -0.4182279
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0204038   -0.2749640    0.1833307
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1610320   -0.2494349    0.4366515
