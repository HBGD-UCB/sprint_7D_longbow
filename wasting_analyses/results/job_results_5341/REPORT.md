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
![](/tmp/05944e78-183d-46dd-9d6b-9a7c76c03ade/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05944e78-183d-46dd-9d6b-9a7c76c03ade/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05944e78-183d-46dd-9d6b-9a7c76c03ade/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05944e78-183d-46dd-9d6b-9a7c76c03ade/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6458558   0.5142771   0.7774344
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6376783   0.5415948   0.7337618
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2108077   0.1328092   0.2888062
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3387854   0.2594719   0.4180989
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5229988   0.4359604   0.6100372
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5409032   0.4886466   0.5931599
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4377522   0.4193727   0.4561318
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4243628   0.4105229   0.4382027
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2509116   0.2235130   0.2783102
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2707293   0.2478368   0.2936219
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7812500   0.6381241   0.9243759
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8214286   0.6823152   0.9605419
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2359876   0.0986708   0.3733044
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.4126121   0.2823002   0.5429240
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4351707   0.7648293
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6015625   0.5163730   0.6867520
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6732477   0.6516594   0.6948361
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7223024   0.7060585   0.7385462
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6571776   0.6139020   0.7004532
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6139294   0.5702887   0.6575700
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4285714   0.2258750   0.6312678
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5121951   0.3484618   0.6759284
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2947049   0.1900777   0.3993320
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3080098   0.2174295   0.3985902
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4793380   0.4007477   0.5579282
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5095846   0.4469710   0.5721982
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2236934   0.1907287   0.2566581
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1457431   0.1245696   0.1669165


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4292213   0.4164001   0.4420426
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2781828   0.2567503   0.2996153
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
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9873385   0.7661854   1.2723257
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6070831   1.0322980   2.5019092
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0342342   0.8556056   1.2501559
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9694132   0.9251686   1.0157736
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0789831   0.9585051   1.2146044
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0514286   0.8192646   1.3493833
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.7484485   0.8742401   3.4968334
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0026042   0.7360426   1.3657023
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0728627   1.0354861   1.1115883
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9341909   0.8828853   0.9884779
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1951219   0.6752625   2.1152018
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0451467   0.6705198   1.6290820
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0631009   0.8720880   1.2959512
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6515304   0.5296706   0.8014263


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0065115   -0.0968309    0.0838078
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2088002    0.1433459    0.2742545
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0125743   -0.0651851    0.0903337
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0085309   -0.0230901    0.0060283
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0272713    0.0056810    0.0488615
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0187500   -0.0746467    0.1121467
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.3341059    0.2212114    0.4470004
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0012270   -0.1444749    0.1469289
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0390055    0.0220112    0.0559998
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0614745   -0.0855895   -0.0373594
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0552995   -0.1163127    0.2269118
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0161059   -0.0622220    0.0944339
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0250352   -0.0489220    0.0989924
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0734180   -0.1015900   -0.0452460


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0101847   -0.1616418    0.1215252
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.4976079    0.3190563    0.6293411
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0234783   -0.1328446    0.1582299
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0198753   -0.0544344    0.0135511
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0980336    0.0181464    0.1714209
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0234375   -0.1009118    0.1337414
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.5860546    0.3153868    0.7497115
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0020408   -0.2722617    0.2172031
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0547635    0.0306901    0.0782390
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1031965   -0.1469864   -0.0610784
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1142857   -0.3185948    0.4050562
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0518191   -0.2360314    0.2726342
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0496363   -0.1069954    0.1841057
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4885566   -0.7048842   -0.2996782
