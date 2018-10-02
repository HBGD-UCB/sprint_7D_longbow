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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        exclfeed36    wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      143     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       29     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       48     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10     230
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      159     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      157     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       33     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        5     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     195
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      136     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       20     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       11     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     167
Birth       ki0047075b-MAL-ED          PERU                           0                  0      245     266
Birth       ki0047075b-MAL-ED          PERU                           0                  1        6     266
Birth       ki0047075b-MAL-ED          PERU                           1                  0       15     266
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      220     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       14     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        2     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       3
Birth       ki1000108-IRC              INDIA                          0                  0        2       3
Birth       ki1000108-IRC              INDIA                          0                  1        1       3
Birth       ki1000108-IRC              INDIA                          1                  0        0       3
Birth       ki1000108-IRC              INDIA                          1                  1        0       3
Birth       ki1000109-EE               PAKISTAN                       0                  0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1101329-Keneba           GAMBIA                         0                  0      842    1202
Birth       ki1101329-Keneba           GAMBIA                         0                  1       15    1202
Birth       ki1101329-Keneba           GAMBIA                         1                  0      335    1202
Birth       ki1101329-Keneba           GAMBIA                         1                  1       10    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3826   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      462   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    16566   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1784   22638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      214    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        8    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      920    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       62    1204
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      171     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       61     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      191     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      211     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      217     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      255     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           1                  0       16     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      247     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      245     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1       9
6 months    ki1000108-IRC              INDIA                          0                  0        3       4
6 months    ki1000108-IRC              INDIA                          0                  1        1       4
6 months    ki1000108-IRC              INDIA                          1                  0        0       4
6 months    ki1000108-IRC              INDIA                          1                  1        0       4
6 months    ki1000109-EE               PAKISTAN                       0                  0      240     742
6 months    ki1000109-EE               PAKISTAN                       0                  1       54     742
6 months    ki1000109-EE               PAKISTAN                       1                  0      404     742
6 months    ki1000109-EE               PAKISTAN                       1                  1       44     742
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      420     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       22     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      138     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        2     582
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1197    1790
6 months    ki1101329-Keneba           GAMBIA                         0                  1       86    1790
6 months    ki1101329-Keneba           GAMBIA                         1                  0      483    1790
6 months    ki1101329-Keneba           GAMBIA                         1                  1       24    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      186    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       20    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      768    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       78    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4716   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      682   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19720   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1588   26706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1704    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      156    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6172    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      312    8344
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      140     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       13     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       50     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        8     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      150     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      194     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       27     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        6     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      209     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      185     200
24 months   ki0047075b-MAL-ED          PERU                           0                  1        3     200
24 months   ki0047075b-MAL-ED          PERU                           1                  0       12     200
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      237     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0       9
24 months   ki1000108-IRC              INDIA                          0                  0        4       4
24 months   ki1000108-IRC              INDIA                          0                  1        0       4
24 months   ki1000108-IRC              INDIA                          1                  0        0       4
24 months   ki1000108-IRC              INDIA                          1                  1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      376     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       52     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      135     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     576
24 months   ki1101329-Keneba           GAMBIA                         0                  0      867    1395
24 months   ki1101329-Keneba           GAMBIA                         0                  1      104    1395
24 months   ki1101329-Keneba           GAMBIA                         1                  0      380    1395
24 months   ki1101329-Keneba           GAMBIA                         1                  1       44    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      128     910
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       46     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      620     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      116     910
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2126   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      686   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8188   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2344   13344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1366    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      398    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5062    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1192    8018


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
![](/tmp/ef2dece9-7d46-421f-9d1e-6a8a2419c37f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef2dece9-7d46-421f-9d1e-6a8a2419c37f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ef2dece9-7d46-421f-9d1e-6a8a2419c37f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ef2dece9-7d46-421f-9d1e-6a8a2419c37f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1536515   0.0997207   0.2075824
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0884961   0.0120563   0.1649360
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0172521   0.0085152   0.0259891
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0291168   0.0116709   0.0465628
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1001210   0.0937149   0.1065270
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0990483   0.0928007   0.1052959
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0360360   0.0035958   0.0684763
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0631365   0.0385755   0.0876974
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2684636   0.2100952   0.3268319
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1254659   0.0872135   0.1637182
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0670042   0.0533234   0.0806850
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0473848   0.0288969   0.0658727
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0817639   0.0309837   0.1325441
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0915498   0.0641142   0.1189854
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1209290   0.1097333   0.1321246
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0759882   0.0705253   0.0814511
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0717465   0.0557277   0.0877653
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0487714   0.0379298   0.0596131
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0849673   0.0406801   0.1292545
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1379310   0.0489766   0.2268855
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1214955   0.0905174   0.1524736
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0878374   0.0421950   0.1334799
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1103491   0.0912107   0.1294875
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1171224   0.0899910   0.1442537
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2907821   0.2063272   0.3752369
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1586664   0.1215893   0.1957435
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2228369   0.2016335   0.2440402
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2243222   0.2115699   0.2370745
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2075318   0.1798756   0.2351880
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1912078   0.1754119   0.2070036


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0207987   0.0127276   0.0288697
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0581395   0.0372149   0.0790642
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1320755   0.0975770   0.1665739
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0614525   0.0503239   0.0725811
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0931559   0.0682937   0.1180181
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849996   0.0797287   0.0902706
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0560882   0.0466363   0.0655401
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1128472   0.0869854   0.1387090
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1060932   0.0899270   0.1222593
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1780220   0.1428346   0.2132094
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2270683   0.2155455   0.2385912
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1983038   0.1835884   0.2130192


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.5759536   0.2265548   1.4642042
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 1.6877234   0.7706811   3.6959649
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9892860   0.9664393   1.0126728
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.7520367   0.6558927   4.6800833
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4673479   0.3208624   0.6807094
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.7071914   0.4553522   1.0983141
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1196849   0.5626363   2.2282499
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6283704   0.5612369   0.7035343
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6797743   0.4962614   0.9311485
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6233422   0.7084127   3.7199216
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7229682   0.4052714   1.2897111
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 1.0613806   0.7963402   1.4146325
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5456539   0.3758810   0.7921076
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0066655   0.9028034   1.1224763
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9213420   0.7908208   1.0734051


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0159137   -0.0117533    0.0435807
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0035465   -0.0021229    0.0092160
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0009072   -0.0027371    0.0009226
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0221035   -0.0111471    0.0553541
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.1363881   -0.1791300   -0.0936463
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0055517   -0.0120764    0.0009731
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0113920   -0.0340809    0.0568649
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0359294   -0.0453436   -0.0265151
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0156583   -0.0302873   -0.0010294
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0145587   -0.0129426    0.0420601
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0086483   -0.0228728    0.0055762
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0042559   -0.0146127    0.0061009
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1127601   -0.1862091   -0.0393111
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0042315   -0.0145692    0.0230321
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0092280   -0.0326580    0.0142020


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0938500   -0.0849589    0.2431900
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.1705169   -0.1422240    0.3976293
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0091444   -0.0277909    0.0091638
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.3801802   -0.4789852    0.7402431
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.0326528   -1.4661467   -0.6753576
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0903411   -0.2006658    0.0098463
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1222895   -0.5298794    0.4964468
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4227001   -0.5386813   -0.3154612
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2791730   -0.5831745   -0.0335459
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1462807   -0.1727705    0.3785343
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0766373   -0.2093614    0.0415207
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0401146   -0.1427187    0.0532768
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6334054   -1.1115935   -0.2635070
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0186353   -0.0676739    0.0979674
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0465346   -0.1716747    0.0652399
