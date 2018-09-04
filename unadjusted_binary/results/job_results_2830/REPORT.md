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

unadjusted

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
![](/tmp/78ba43c2-3168-482c-bc00-8baf6a842c0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78ba43c2-3168-482c-bc00-8baf6a842c0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78ba43c2-3168-482c-bc00-8baf6a842c0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78ba43c2-3168-482c-bc00-8baf6a842c0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1657459   0.1114615   0.2200302
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1774194   0.0821315   0.2727072
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0573678   0.0420754   0.0726602
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0440771   0.0229526   0.0652016
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3686851   0.3490270   0.3883431
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2933214   0.2837091   0.3029336
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3809524   0.2941088   0.4677959
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2879310   0.2471894   0.3286727
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1864407   0.1289453   0.2439361
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1746032   0.0806650   0.2685413
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4275862   0.3469512   0.5082212
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5765766   0.5114917   0.6416614
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1674208   0.1325848   0.2022568
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1357143   0.0789338   0.1924948
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.1496493   0.1301242   0.1691743
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.1420118   0.1116192   0.1724045
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2718447   0.1858414   0.3578480
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1914894   0.1539570   0.2290218
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3252788   0.3059900   0.3445677
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2328498   0.2233212   0.2423784
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3135776   0.2784901   0.3486651
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2392846   0.2228697   0.2556995
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4509804   0.3719477   0.5300131
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4827586   0.3538514   0.6116659
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3563830   0.2877505   0.4250155
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.5000000   0.2163937   0.7836063
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.3224299   0.2781101   0.3667498
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3513514   0.2743727   0.4283300
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.3587629   0.3285682   0.3889576
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2948113   0.2513957   0.3382269
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5057471   0.4005736   0.6109207
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4281843   0.3776420   0.4787266
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.5028369   0.4734096   0.5322642
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4811660   0.4654001   0.4969319
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4382786   0.3991775   0.4773797
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3882166   0.3678808   0.4085523


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
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0704302   0.5706378   2.0079651
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 0.7683250   0.4439916   1.3295822
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7955879   0.7474608   0.8468139
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7558190   0.5791536   0.9863745
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9365079   0.5037263   1.7411185
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3484452   1.0823856   1.6799046
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.8106178   0.5080243   1.2934443
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.9489645   0.7385742   1.2192866
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.7044073   0.4855062   1.0220047
6 months    ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       1                    0                 1.0172872   0.6688622   1.5472145
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7158468   0.6672971   0.7679288
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7630795   0.6707192   0.8681580
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0704648   0.7777887   1.4732727
24 months   ki0047075b-MAL-ED     PERU         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         1                    0                 1.4029851   0.7707342   2.5538857
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.0896984   0.8413552   1.4113451
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.8217442   0.6935407   0.9736466
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8466371   0.6665736   1.0753417
24 months   ki1148112-LCNI-5      MALAWI       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       1                    0                 1.0333333   0.7106383   1.5025615
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9569028   0.8969195   1.0208975
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8857758   0.8036112   0.9763412


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0029784   -0.0250095    0.0309663
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0038535   -0.0114220    0.0037151
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0602812   -0.0777334   -0.0428290
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0742124   -0.1503496    0.0019249
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0031073   -0.0320258    0.0258111
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0901250    0.0269994    0.1532505
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0076270   -0.0236891    0.0084351
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0021632   -0.0123962    0.0080698
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0646203   -0.1401311    0.0108905
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0010621   -0.0250685    0.0271927
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0738396   -0.0907183   -0.0569608
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0577636   -0.0875151   -0.0280122
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0087352   -0.0328727    0.0503432
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0086170   -0.0095205    0.0267546
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0074312   -0.0154154    0.0302778
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0194516   -0.0356106   -0.0032925
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0627647   -0.1572310    0.0317017
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029015   -0.0305815    0.0363845
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0171055   -0.0425790    0.0083680
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0390740   -0.0716896   -0.0064585


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0176526   -0.1630025    0.1702457
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -0.0720078   -0.2221909    0.0597208
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1954619   -0.2535638   -0.1400531
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2419389   -0.5165647   -0.0170435
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0169492   -0.1875356    0.1291330
6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1740835    0.0416058    0.2882489
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0477303   -0.1529664    0.0479006
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0146673   -0.0864640    0.0523848
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3118375   -0.7303170    0.0054321
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.0029782   -0.0730552    0.0736242
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.2936676   -0.3629575   -0.2279002
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.2258033   -0.3467830   -0.1156910
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0190014   -0.0758448    0.1054860
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.0236083   -0.0273941    0.0720788
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0225283   -0.0492437    0.0893908
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0573266   -0.1060550   -0.0107449
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1416866   -0.3766447    0.0531702
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                 0.0059607   -0.0652660    0.0724250
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0352160   -0.0890040    0.0159153
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0978797   -0.1824138   -0.0193892
