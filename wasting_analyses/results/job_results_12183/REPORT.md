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

unadjusted

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
Birth       ki1000109-EE               PAKISTAN                       0                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       ki1101329-Keneba           GAMBIA                         0                  0      842    1202
Birth       ki1101329-Keneba           GAMBIA                         0                  1       15    1202
Birth       ki1101329-Keneba           GAMBIA                         1                  0      335    1202
Birth       ki1101329-Keneba           GAMBIA                         1                  1       10    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1913   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      231   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8283   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      892   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      107     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      460     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       31     602
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
6 months    ki1000109-EE               PAKISTAN                       0                  0      120     371
6 months    ki1000109-EE               PAKISTAN                       0                  1       27     371
6 months    ki1000109-EE               PAKISTAN                       1                  0      202     371
6 months    ki1000109-EE               PAKISTAN                       1                  1       22     371
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       93     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      384     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39     526
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2358   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      341   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9860   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      794   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      852    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3086    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      156    4172
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
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       64     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      310     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58     455
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1063    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      343    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4094    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1172    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      683    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      199    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2531    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      596    4009


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
![](/tmp/8acd75e9-67a1-490e-a347-92752a5d9704/aca17d92-06d2-42a2-9600-1bbd8e64ad0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8acd75e9-67a1-490e-a347-92752a5d9704/aca17d92-06d2-42a2-9600-1bbd8e64ad0d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8acd75e9-67a1-490e-a347-92752a5d9704/aca17d92-06d2-42a2-9600-1bbd8e64ad0d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8acd75e9-67a1-490e-a347-92752a5d9704/aca17d92-06d2-42a2-9600-1bbd8e64ad0d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1686047   0.1125297   0.2246796
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1724138   0.0749882   0.2698394
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0175029   0.0087196   0.0262862
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0289855   0.0112753   0.0466957
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1077425   0.0935838   0.1219012
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0972207   0.0902542   0.1041872
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1836735   0.1209932   0.2463537
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0982143   0.0591887   0.1372399
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0670304   0.0533428   0.0807179
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0473373   0.0288473   0.0658273
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0970874   0.0398543   0.1543204
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0921986   0.0646024   0.1197947
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1263431   0.1130276   0.1396586
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0745260   0.0689964   0.0800556
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0838710   0.0650918   0.1026501
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0481184   0.0371089   0.0591280
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0849673   0.0406801   0.1292545
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1379310   0.0489766   0.2268855
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1214953   0.0905172   0.1524735
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0878378   0.0421951   0.1334805
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1071061   0.0876479   0.1265642
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1037736   0.0747352   0.1328120
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2643678   0.1715992   0.3571364
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1576087   0.1203396   0.1948778
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2439545   0.2184193   0.2694897
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2225598   0.2095343   0.2355853
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2256236   0.1919764   0.2592708
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1905980   0.1745347   0.2066613


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0207987   0.0127276   0.0288697
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
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
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0225922   0.5308176   1.9699699
Birth       ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       1                    0                 1.6560386   0.7510872   3.6513251
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9023429   0.7762575   1.0489080
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5347222   0.3167039   0.9028240
6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       1                    0                 0.7062061   0.4544784   1.0973614
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9496454   0.4902690   1.8394520
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5898700   0.5202368   0.6688236
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5737199   0.4158873   0.7914514
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6233422   0.7084127   3.7199216
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 0.7229730   0.4052732   1.2897224
24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.9688861   0.6940338   1.3525857
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5961720   0.3904828   0.9102094
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9123006   0.8085009   1.0294267
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8447611   0.7131305   1.0006882


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0009606   -0.0273873    0.0293084
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0032958   -0.0023859    0.0089774
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0085288   -0.0213896    0.0043319
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0515980   -0.0963814   -0.0068146
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0055779   -0.0121068    0.0009510
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0039315   -0.0550285    0.0471655
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0413435   -0.0526362   -0.0300507
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0277828   -0.0447774   -0.0107881
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0145587   -0.0129426    0.0420601
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0086481   -0.0228727    0.0055765
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0010129   -0.0116375    0.0096117
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0863458   -0.1672969   -0.0053948
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0168861   -0.0396627    0.0058905
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0273198   -0.0560849    0.0014454


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0056649   -0.1763850    0.1595419
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.1584597   -0.1549517    0.3868228
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0859642   -0.2239060    0.0364308
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3906705   -0.7632405   -0.0968240
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.0907674   -0.2011495    0.0094710
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0422033   -0.7639384    0.3842258
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4863958   -0.6230037   -0.3612862
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4953405   -0.8529161   -0.2067698
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1462807   -0.1727705    0.3785343
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.0766355   -0.2093609    0.0415235
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.0095471   -0.1148178    0.0857829
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4850291   -1.0121484   -0.0959984
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0743659   -0.1795789    0.0214626
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1377672   -0.2916738   -0.0021991
