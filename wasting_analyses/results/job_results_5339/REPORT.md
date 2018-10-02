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

agecat        studyid                    country                        predfeed6    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       35     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       26     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       42     121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       64     170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       97     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        2     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        7     170
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       17      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       68      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        4      90
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       19      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        5      29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      45
0-24 months   ki1000109-EE               PAKISTAN                       0                      0      148     514
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       84     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      152     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      130     514
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      136    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      150    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      374    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      416    1076
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22      34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2      34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2324   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1764   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6284   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4630   15002
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      686    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      270    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1970    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      746    3672
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        7      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       26      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        5      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       21      59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       21      76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        1      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        3      76
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       32      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        2      42
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      12
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       54     216
0-6 months    ki1000109-EE               PAKISTAN                       0                      1       48     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       40     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       74     216
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       42     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       56     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       98     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      146     342
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4       4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      944    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1764    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2026    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4630    9364
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      150    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      158    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      278    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      458    1044
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       11      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       21      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       43      94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       46      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        1      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        4      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       36      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2      48
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        2      19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      49
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      33
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       94     298
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       36     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      0      112     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       56     298
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       94     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       94     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      276     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      270     734
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18      30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2      30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1380    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     4258    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0    5638
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      536    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      112    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1692    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      288    2628


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
![](/tmp/4928e90e-d51c-42b9-88eb-c5085a154aeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4928e90e-d51c-42b9-88eb-c5085a154aeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4928e90e-d51c-42b9-88eb-c5085a154aeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4928e90e-d51c-42b9-88eb-c5085a154aeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6477973   0.5173277   0.7782670
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6019193   0.5024633   0.7013753
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1782939   0.0992147   0.2573731
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2871184   0.2019697   0.3722672
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5238597   0.4401961   0.6075234
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5273107   0.4741797   0.5804417
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4319547   0.4155532   0.4483561
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4194683   0.4073227   0.4316139
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2895084   0.2616066   0.3174102
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2752712   0.2526788   0.2978637
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4705882   0.3324773   0.6086992
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6491228   0.5218669   0.7763787
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5715357   0.4324002   0.7106712
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5982663   0.5108446   0.6856879
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6705336   0.6512507   0.6898165
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6940317   0.6795029   0.7085606
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6278832   0.5832298   0.6725366
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6057278   0.5621744   0.6492812
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3357447   0.2364613   0.4350281
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3355881   0.2449377   0.4262386
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4453298   0.3454120   0.5452476
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4877707   0.4235063   0.5520351
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2206694   0.1876603   0.2536786
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1485382   0.1276991   0.1693772


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5260223   0.4802445   0.5718001
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4262098   0.4150208   0.4373989
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2766885   0.2556490   0.2977279
0-6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.7966102   0.6946250   0.8985954
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5906433   0.5164645   0.6648221
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6828279   0.6694976   0.6961581
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5900383   0.5478064   0.6322702
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4959128   0.4403572   0.5514684
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1522070   0.1331665   0.1712475


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9291784   0.7154329   1.2067834
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6103661   0.9261703   2.8000021
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0065875   0.8358929   1.2121390
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9710934   0.9304400   1.0135230
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9508229   0.8540534   1.0585570
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0251479   0.7940050   1.3235789
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3793860   0.9691550   1.9632624
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0467697   0.7883440   1.3899094
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0350439   1.0019452   1.0692360
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9647141   0.9090424   1.0237952
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1111111   0.6335362   1.9486934
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9995336   0.6840430   1.4605331
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0953023   0.8461345   1.4178446
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6731252   0.5482970   0.8263725


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0114337   -0.1023280    0.0794606
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2380485    0.1706390    0.3054580
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0021626   -0.0692630    0.0735882
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0057448   -0.0187966    0.0073070
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0128199   -0.0345275    0.0088876
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0087314   -0.0812361    0.0986989
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0942266   -0.0059107    0.1943639
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0191075   -0.0979466    0.1361617
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0122942   -0.0029115    0.0275000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0378449   -0.0625153   -0.0131746
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0338710   -0.1435771    0.2113190
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0270199   -0.0980199    0.0439802
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0505830   -0.0362214    0.1373875
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0684624   -0.0968302   -0.0400947


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0179673   -0.1711171    0.1151548
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.5717614    0.3766537    0.7058003
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0041112   -0.1413536    0.1310365
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0134788   -0.0446043    0.0167192
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0463335   -0.1284505    0.0298078
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0109607   -0.1087726    0.1177643
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1668274   -0.0333632    0.3282356
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0323504   -0.1876796    0.2116176
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0180049   -0.0044882    0.0399943
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0641398   -0.1079433   -0.0220681
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0700000   -0.3766411    0.3717317
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0875209   -0.3468337    0.1218651
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1019999   -0.0907985    0.2607211
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4497981   -0.6625518   -0.2642701
