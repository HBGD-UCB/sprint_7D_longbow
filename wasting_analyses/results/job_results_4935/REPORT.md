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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat        studyid                    country                        predfeed36    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       19     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       34     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       25     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       44     122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       68     177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       97     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        2     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       10     177
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       19      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       68      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        5      93
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5      32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       21      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        5      32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      45
0-24 months   ki1000109-EE               PAKISTAN                       0                       0      136     510
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       82     510
0-24 months   ki1000109-EE               PAKISTAN                       1                       0      160     510
0-24 months   ki1000109-EE               PAKISTAN                       1                       1      132     510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       98    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      106    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      372    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      436    1012
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22      34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2      34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1712   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1288   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4812   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3618   11430
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      678    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      270    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1896    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      722    3566
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        7      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       25      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        5      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       23      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       24      82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       54      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        1      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        3      82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       32      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        2      43
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1        8      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        3      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      12
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       50     214
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       46     214
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       42     214
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       76     214
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       28     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       42     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0      102     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1      154     326
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4       4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      616    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1288    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1366    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3618    6888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      146    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      158    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      268    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      452    1024
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       12      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1        9      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       44      95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       43      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        1      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        7      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       10      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       36      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        3      50
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5      21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       13      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        2      21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      33
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       86     296
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       36     296
6-24 months   ki1000109-EE               PAKISTAN                       1                       0      118     296
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       56     296
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       70     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       64     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      270     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      282     686
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18      30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2      30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1096    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3446    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0    4542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      532    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      112    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1628    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      270    2542


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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/491d0096-54a6-4943-8cb6-fccf5ac2cb75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/491d0096-54a6-4943-8cb6-fccf5ac2cb75/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/491d0096-54a6-4943-8cb6-fccf5ac2cb75/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/491d0096-54a6-4943-8cb6-fccf5ac2cb75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6457517   0.5169669   0.7745366
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6369870   0.5425008   0.7314731
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2005987   0.1248444   0.2763530
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3302304   0.2520920   0.4083689
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5238830   0.4362744   0.6114916
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5408646   0.4884957   0.5932335
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4374830   0.4185798   0.4563863
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4246712   0.4107461   0.4385963
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2543518   0.2258149   0.2828887
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2715150   0.2484467   0.2945833
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7812500   0.6381241   0.9243759
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8214286   0.6823152   0.9605419
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2342322   0.0989554   0.3695090
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.4099059   0.2805765   0.5392354
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6474150   0.4848568   0.8099731
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6051282   0.5199378   0.6903185
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6736513   0.6516424   0.6956602
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7223258   0.7060123   0.7386392
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6514642   0.6045369   0.6983916
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6137190   0.5693773   0.6580607
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4285714   0.2258750   0.6312678
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5121951   0.3484618   0.6759284
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3276056   0.2208129   0.4343982
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3085574   0.2175833   0.3995315
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4649347   0.3636313   0.5662380
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5099638   0.4455484   0.5743792
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2243781   0.1915496   0.2572065
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1457453   0.1245876   0.1669031


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4292213   0.4164001   0.4420426
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2781828   0.2567504   0.2996153
0-6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8000000   0.6995926   0.9004074
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7122532   0.6971343   0.7273720
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5957031   0.5531528   0.6382534
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1502754   0.1309788   0.1695719


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9864271   0.7692052   1.2649919
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6462238   1.0437485   2.5964616
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0324150   0.8525451   1.2502338
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9707147   0.9251109   1.0185666
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0674783   0.9450390   1.2057807
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0514286   0.8192646   1.3493833
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.7499982   0.8773634   3.4905643
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9346837   0.7008668   1.2465044
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0722547   1.0342489   1.1116572
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9420609   0.8846643   1.0031814
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1951219   0.6752625   2.1152018
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9418564   0.6201459   1.4304593
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0968505   0.8528994   1.4105778
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6495526   0.5284845   0.7983555


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0064075   -0.0953105    0.0824955
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2190091    0.1539617    0.2840565
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0116902   -0.0668503    0.0902306
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0082617   -0.0232824    0.0067591
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0238311    0.0013240    0.0463381
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0187500   -0.0746467    0.1121467
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.3358613    0.2241427    0.4475798
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0461880   -0.1900236    0.0976477
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0386019    0.0212768    0.0559270
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0557611   -0.0828061   -0.0287161
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0552995   -0.1163127    0.2269118
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0167948   -0.0943207    0.0607311
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0394385   -0.0540207    0.1328977
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0741027   -0.1021742   -0.0460311


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0100219   -0.1589840    0.1197943
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.5219376    0.3460396    0.6505237
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0218274   -0.1361774    0.1578589
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0192481   -0.0549064    0.0152050
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0856669    0.0019143    0.1623916
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0234375   -0.1009118    0.1337414
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.5891337    0.3229877    0.7506528
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0768228   -0.3449569    0.1378554
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0541969    0.0296292    0.0781426
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0936055   -0.1414801   -0.0477389
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1142857   -0.3185948    0.4050562
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0540354   -0.3363262    0.1686232
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0781931   -0.1254740    0.2450044
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4931126   -0.7091446   -0.3043865
