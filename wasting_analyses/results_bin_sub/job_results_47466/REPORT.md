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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
* brthmon
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

agecat        studyid                    country                        predfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       24     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       15     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      174     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      165     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       50     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       25     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        4     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      189     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       17     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      148     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      223     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     248
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      141     379
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       82     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  0       94     379
0-24 months   ki1000109-EE               PAKISTAN                       0                  1       62     379
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      283     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      136     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       96     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       50     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19205   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1548   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4906   26477
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      818   26477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3155    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      550    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      804    4722
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      213    4722
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        6     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       28     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     235
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      155     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      241     248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        4     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     248
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      198     379
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       25     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  0      128     379
0-6 months    ki1000109-EE               PAKISTAN                       0                  1       28     379
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      407     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       12     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      135     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       11     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    20146   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      593   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     5256   26450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      455   26450
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3623    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      964    4709
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       44    4709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       23     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       12     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       35     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      170     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      168     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       45     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       26     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      192     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       13     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0      111     267
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      147     267
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        8     267
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     246
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       19     246
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      219     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     242
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      142     373
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       76     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  0       99     373
6-24 months   ki1000109-EE               PAKISTAN                       0                  1       56     373
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      135     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       95     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12526   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1049   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3109   17127
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      443   17127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3197    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      501    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      819    4711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      194    4711


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e21a185e-6e86-4d0d-90e7-bfc93f8ace08/7e0abaf0-14ab-450a-a163-707b3780d2db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e21a185e-6e86-4d0d-90e7-bfc93f8ace08/7e0abaf0-14ab-450a-a163-707b3780d2db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e21a185e-6e86-4d0d-90e7-bfc93f8ace08/7e0abaf0-14ab-450a-a163-707b3780d2db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e21a185e-6e86-4d0d-90e7-bfc93f8ace08/7e0abaf0-14ab-450a-a163-707b3780d2db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1844210   0.1150507   0.2537913
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1208096   0.0575006   0.1841186
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3780720   0.3148425   0.4413015
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3792797   0.3030196   0.4555397
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3257362   0.2809426   0.3705298
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3463460   0.2679462   0.4247459
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0794510   0.0753380   0.0835639
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1204218   0.1116983   0.1291453
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1543601   0.1410660   0.1676542
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1851178   0.1609203   0.2093153
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1130945   0.0716154   0.1545736
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1764175   0.1160742   0.2367607
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0286767   0.0126348   0.0447185
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0728054   0.0301317   0.1154791
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0323592   0.0298503   0.0348681
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0617537   0.0556593   0.0678481
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0208569   0.0150768   0.0266371
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0436407   0.0302385   0.0570429
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1896254   0.1205672   0.2586835
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1126158   0.0537330   0.1714985
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3559965   0.2919109   0.4200822
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3570163   0.2802897   0.4337428
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3260618   0.2809376   0.3711860
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3350352   0.2569310   0.4131394
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0806454   0.0756292   0.0856617
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1093043   0.0984133   0.1201953
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1396594   0.1272549   0.1520638
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1676545   0.1445518   0.1907572


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1638655   0.1167401   0.2109910
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3292035   0.2904210   0.3679861
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0893606   0.0854348   0.0932864
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1615841   0.1496375   0.1735306
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0407080   0.0243991   0.0570168
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0396219   0.0371297   0.0421141
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0259078   0.0204779   0.0313377
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1502146   0.1042403   0.1961889
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3285458   0.2895051   0.3675864
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0871139   0.0824317   0.0917961
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1475271   0.1364035   0.1586506


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6550751   0.3430222   1.251008
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.0031943   0.7744750   1.299459
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0632715   0.8152793   1.386698
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5156742   1.3943342   1.647574
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1992593   1.0318875   1.393779
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.5599117   0.9463476   2.571280
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.5388379   1.1290754   5.708828
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.9083794   1.6975687   2.145370
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0923812   1.3946043   3.139284
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5938857   0.3138618   1.123743
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.0028645   0.7585459   1.325875
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0275204   0.7833891   1.347732
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.3553690   1.2089065   1.519576
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2004530   1.0217258   1.410444


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0205554   -0.0653708   0.0242600
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0018753   -0.0387246   0.0424751
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0034673   -0.0196430   0.0265777
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0099096    0.0077440   0.0120752
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0072240    0.0011748   0.0132731
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0267472   -0.0034171   0.0569115
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0120313    0.0000842   0.0239783
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0072627    0.0057037   0.0088217
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0050509    0.0020059   0.0080959
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0394108   -0.0825194   0.0036978
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0021091   -0.0436045   0.0393862
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0024839   -0.0205645   0.0255324
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0064685    0.0038790   0.0090580
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0078677    0.0019868   0.0137486


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1254407   -0.4316955    0.1153029
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0049356   -0.1078638    0.1062500
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0105325   -0.0622068    0.0782907
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1108945    0.0867655    0.1343860
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0447072    0.0064371    0.0815032
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1912676   -0.0506338    0.3774727
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2955512   -0.0341799    0.5201530
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1833000    0.1449136    0.2199632
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1949560    0.0678373    0.3047396
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2623631   -0.5783744   -0.0096213
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0059599   -0.1303205    0.1047182
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0075604   -0.0651273    0.0752876
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0742530    0.0443593    0.1032117
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0533306    0.0125472    0.0924295
