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

agecat      studyid                    country                        exclfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      151     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       51     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     243
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      156     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1       16     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       10     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        3     185
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      164     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   1       29     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        2     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        3     198
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      143     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1       18     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     172
Birth       ki0047075b-MAL-ED          PERU                           0                   0      228     273
Birth       ki0047075b-MAL-ED          PERU                           0                   1       30     273
Birth       ki0047075b-MAL-ED          PERU                           1                   0       13     273
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      212     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      102     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       18     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       3
Birth       ki1000108-IRC              INDIA                          0                   0        3       4
Birth       ki1000108-IRC              INDIA                          0                   1        1       4
Birth       ki1000108-IRC              INDIA                          1                   0        0       4
Birth       ki1000108-IRC              INDIA                          1                   1        0       4
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       4
Birth       ki1000109-EE               PAKISTAN                       0                   1        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       4
Birth       ki1101329-Keneba           GAMBIA                         0                   0      838    1252
Birth       ki1101329-Keneba           GAMBIA                         0                   1       51    1252
Birth       ki1101329-Keneba           GAMBIA                         1                   0      347    1252
Birth       ki1101329-Keneba           GAMBIA                         1                   1       16    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3524   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     2058   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    15766   27892
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     6544   27892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      182    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      112    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      826    1454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      334    1454
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      144     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       33     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       52     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      186     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        6     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      185     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       44     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        5     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      209     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      200     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1       55     271
6 months    ki0047075b-MAL-ED          PERU                           1                   0       12     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        4     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      204     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       50     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      188     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        4       9
6 months    ki1000108-IRC              INDIA                          0                   0        3       4
6 months    ki1000108-IRC              INDIA                          0                   1        1       4
6 months    ki1000108-IRC              INDIA                          1                   0        0       4
6 months    ki1000108-IRC              INDIA                          1                   1        0       4
6 months    ki1000109-EE               PAKISTAN                       0                   0      166     734
6 months    ki1000109-EE               PAKISTAN                       0                   1      124     734
6 months    ki1000109-EE               PAKISTAN                       1                   0      188     734
6 months    ki1000109-EE               PAKISTAN                       1                   1      256     734
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      368     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       74     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      121     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       19     582
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1091    1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1      192    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   0      435    1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1       72    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      150    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       56    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      684    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1      162    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3630   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1750   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    16394   26750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     4976   26750
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1274    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      582    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     4934    8342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1552    8342
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       84     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       69     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       30     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       28     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      147     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      131     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       90     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        1     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        5     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      167     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       47     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       12     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      121     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1       67     200
24 months   ki0047075b-MAL-ED          PERU                           1                   0        6     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      154     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       84     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       60     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      153     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5       9
24 months   ki1000108-IRC              INDIA                          0                   0        1       4
24 months   ki1000108-IRC              INDIA                          0                   1        3       4
24 months   ki1000108-IRC              INDIA                          1                   0        0       4
24 months   ki1000108-IRC              INDIA                          1                   1        0       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      290     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      138     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       96     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       52     576
24 months   ki1101329-Keneba           GAMBIA                         0                   0      622    1394
24 months   ki1101329-Keneba           GAMBIA                         0                   1      348    1394
24 months   ki1101329-Keneba           GAMBIA                         1                   0      299    1394
24 months   ki1101329-Keneba           GAMBIA                         1                   1      125    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       86     912
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       88     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      422     912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      316     912
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1402   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1418   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5482   13386
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     5084   13386
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      992    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      774    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3842    8046
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     2438    8046


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/80eb7d17-dac6-4fb8-af27-f932bd072618/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/80eb7d17-dac6-4fb8-af27-f932bd072618/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/80eb7d17-dac6-4fb8-af27-f932bd072618/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/80eb7d17-dac6-4fb8-af27-f932bd072618/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1830639   0.1288349   0.2372930
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3264596   0.2323719   0.4205472
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0572091   0.0419713   0.0724470
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0448078   0.0237310   0.0658846
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3083939   0.2997244   0.3170635
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3083916   0.2997210   0.3170622
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3060300   0.2688277   0.3432322
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3066595   0.2694039   0.3439152
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1885279   0.1318262   0.2452297
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1396073   0.0593286   0.2198859
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4589231   0.3918805   0.5259657
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5941110   0.5361275   0.6520945
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1680849   0.1334679   0.2027018
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1343596   0.0784530   0.1902662
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1546923   0.1355553   0.1738293
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1909222   0.1615997   0.2202448
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2571059   0.1798331   0.3343787
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1900183   0.1527796   0.2272570
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3551296   0.2925989   0.4176604
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3534705   0.2224470   0.4844940
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2806976   0.2664743   0.2949210
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2422704   0.2331937   0.2513472
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2834908   0.2554673   0.3115144
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2430383   0.2273422   0.2587344
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4685266   0.3932034   0.5438498
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4573871   0.3482524   0.5665217
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3563830   0.2877505   0.4250155
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.5000000   0.2163937   0.7836063
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3259548   0.2830121   0.3688975
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3405501   0.2702481   0.4108522
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.3538894   0.3246595   0.3831192
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2928386   0.2528425   0.3328346
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3989658   0.3177319   0.4801997
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4227639   0.3733015   0.4722262
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4830667   0.4046234   0.5615100
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5035625   0.3375129   0.6696121
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4552635   0.4320324   0.4784946
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4839808   0.4688152   0.4991465
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3852801   0.3525937   0.4179665
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3881113   0.3681818   0.4080408


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1687243   0.1215395   0.2159090
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0535144   0.0410431   0.0659857
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3084038   0.2997331   0.3170746
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3067400   0.2694794   0.3440006
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5177112   0.4665188   0.5689035
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.1474860   0.1310548   0.1639172
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2072243   0.1725535   0.2418951
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2514393   0.2427410   0.2601375
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2558140   0.2405969   0.2710310
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3650000   0.2981110   0.4318890
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.3393113   0.3144474   0.3641753
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4429825   0.3973399   0.4886250
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4857314   0.4714029   0.5000599
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3992046   0.3802350   0.4181742


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.7833091   1.1722132   2.7129802
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.7832277   0.4562949   1.3444061
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9999925   0.9999436   1.0000415
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0020572   1.0012110   1.0029042
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7405124   0.3899099   1.4063724
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.2945763   1.1046109   1.5172110
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7993556   0.5037327   1.2684690
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.2342066   1.0200017   1.4933954
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7390662   0.5163533   1.0578394
6 months    ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       1                    0                 0.9953282   0.6602999   1.5003457
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.8631012   0.8174766   0.9112722
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8573057   0.7693189   0.9553557
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9762244   0.7445431   1.2799985
24 months   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         1                    0                 1.4029851   0.7707342   2.5538857
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0447772   0.8277163   1.3187602
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.8274862   0.7094482   0.9651632
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0596493   0.8393317   1.3377984
24 months   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       1                    0                 1.0424286   0.7237310   1.5014659
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0630785   1.0072077   1.1220485
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0073484   0.9198715   1.1031442


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0143397   -0.0428398    0.0141605
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0036948   -0.0112510    0.0038615
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000099   -0.0000018    0.0000216
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0007101    0.0004950    0.0009252
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0051946   -0.0327662    0.0223769
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0587880    0.0111713    0.1064048
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0082911   -0.0241250    0.0075429
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0072063   -0.0169127    0.0025001
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0498816   -0.1175320    0.0177688
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0014880   -0.0246044    0.0275804
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0292584   -0.0407327   -0.0177840
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0276769   -0.0502210   -0.0051327
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0088109   -0.0453914    0.0277696
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0086170   -0.0095205    0.0267546
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0039063   -0.0163942    0.0242068
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0145780   -0.0293162    0.0001601
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0440166   -0.0294353    0.1174685
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0037058   -0.0291406    0.0365522
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0304678    0.0111877    0.0497479
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0139245   -0.0128785    0.0407275


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0849887   -0.2707086    0.0735874
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0690424   -0.2191309    0.0625685
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0000322   -0.0000057    0.0000701
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0023149    0.0016344    0.0029949
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0283343   -0.1903420    0.1116240
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1135537    0.0168820    0.2007196
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0518859   -0.1556369    0.0425505
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0488606   -0.1169841    0.0151081
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2407129   -0.6152319    0.0469674
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0041726   -0.0717465    0.0747137
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1163635   -0.1632334   -0.0713821
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1081914   -0.1997094   -0.0236547
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0191660   -0.1021085    0.0575343
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0236083   -0.0273941    0.0720788
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0118423   -0.0516315    0.0714849
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0429636   -0.0873502   -0.0003888
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0993643   -0.0814554    0.2499509
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0076130   -0.0622140    0.0728498
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0627257    0.0222659    0.1015113
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0348806   -0.0346557    0.0997434
