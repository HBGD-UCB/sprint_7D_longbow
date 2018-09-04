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

unadjusted

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
![](/tmp/821fe6bf-c2d0-4476-97c1-d1dad4137469/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/821fe6bf-c2d0-4476-97c1-d1dad4137469/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/821fe6bf-c2d0-4476-97c1-d1dad4137469/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/821fe6bf-c2d0-4476-97c1-d1dad4137469/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0213723   0.0118618   0.0308829
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1314941   0.1170818   0.1459064
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0860601   0.0806103   0.0915098
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1088435   0.0466294   0.1710577
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0706897   0.0451392   0.0962401
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1793103   0.1167861   0.2418346
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2927928   0.2328527   0.3527329
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0319564   0.0223295   0.0415832
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0335306   0.0178566   0.0492046
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0679612   0.0193104   0.1166120
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0260047   0.0108239   0.0411856
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1055762   0.0929136   0.1182388
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0488535   0.0447987   0.0529083
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0969828   0.0772665   0.1166991
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0447117   0.0364813   0.0529421
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0980392   0.0508082   0.1452703
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1724138   0.0749691   0.2698585
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0864486   0.0598016   0.1130956
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0810811   0.0370669   0.1250953
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0927835   0.0745190   0.1110481
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0542453   0.0326782   0.0758124
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1724138   0.0929521   0.2518755
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0921409   0.0625984   0.1216834
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1758865   0.1532022   0.1985709
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1448041   0.1342734   0.1553347
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1302378   0.1068606   0.1536151
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0863057   0.0745567   0.0980548


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
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6544786   0.5748652   0.7451176
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6494612   0.3298393   1.2788041
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6328829   1.0898063   2.4465875
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.0492616   0.6016806   1.8297911
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.3826410   0.1519244   0.9637304
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.4627324   0.4009137   0.5340832
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.4610272   0.3520964   0.6036588
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.7586206   0.8368484   3.6957071
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.9379109   0.5024033   1.7509375
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.5846436   0.3751606   0.9110981
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5344173   0.3048268   0.9369318
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8232813   0.7127713   0.9509251
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6626779   0.5306755   0.8275152


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0022030   -0.0066453    0.0022393
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0363414   -0.0489007   -0.0237820
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0304391   -0.0841190    0.0232407
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0686461    0.0159450    0.1213471
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0004459   -0.0047642    0.0056560
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0337406   -0.0747500    0.0072687
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0453145   -0.0558557   -0.0347734
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0406414   -0.0571352   -0.0241475
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0204442   -0.0096590    0.0505474
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0013792   -0.0146009    0.0118426
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0117218   -0.0203682   -0.0030754
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0649577   -0.1336202    0.0037049
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0245344   -0.0438394   -0.0052293
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0342895   -0.0545267   -0.0140524


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.1149231   -0.3671976    0.0908018
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.3819266   -0.5179454   -0.2580960
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3882325   -1.2585093    0.1466985
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.2768473    0.0338221    0.4587437
6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0137609   -0.1608425    0.1621019
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.9859763   -2.4978023   -0.1275942
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7519625   -0.9231868   -0.5959826
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7213408   -1.0357800   -0.4554687
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1725490   -0.1163449    0.3866814
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0162121   -0.1840925    0.1278663
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.1446036   -0.2536834   -0.0450145
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6045039   -1.3710031   -0.0857990
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1621012   -0.2959764   -0.0420554
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3573751   -0.5872565   -0.1607872
