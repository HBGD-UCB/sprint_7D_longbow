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
![](/tmp/8457011b-cef5-4b88-a796-cdff8232f88a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8457011b-cef5-4b88-a796-cdff8232f88a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8457011b-cef5-4b88-a796-cdff8232f88a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8457011b-cef5-4b88-a796-cdff8232f88a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6443075   0.5188792   0.7697357
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5936807   0.4978327   0.6895288
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1754442   0.0969914   0.2538970
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2830022   0.1980979   0.3679066
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4921000   0.4133201   0.5708798
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5233076   0.4705207   0.5760945
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4315129   0.4150494   0.4479765
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4195176   0.4073562   0.4316790
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2879768   0.2592074   0.3167463
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2750081   0.2523166   0.2976996
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2330129   0.1037596   0.3622663
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3759865   0.2455828   0.5063903
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5854544   0.4519921   0.7189167
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6007312   0.5138454   0.6876170
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6705276   0.6512607   0.6897945
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6941814   0.6796530   0.7087098
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6213146   0.5760523   0.6665770
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6050606   0.5614272   0.6486941
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3476312   0.2487581   0.4465043
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3380963   0.2482916   0.4279010
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4439679   0.3555697   0.5323660
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4872272   0.4238461   0.5506083
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2208227   0.1890248   0.2526206
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1482076   0.1275246   0.1688907


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
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9214246   0.7147258   1.1879007
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6130609   0.9211097   2.8248162
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0634173   0.8822571   1.2817764
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9722016   0.9311999   1.0150087
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9549660   0.8551227   1.0664669
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0251479   0.7940050   1.3235789
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.6135864   0.8059959   3.2303653
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0260939   0.7833023   1.3441410
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0352765   1.0021315   1.0695176
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9738393   0.9165300   1.0347321
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1111111   0.6335362   1.9486934
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9725718   0.6741398   1.4031152
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0974380   0.8651597   1.3920785
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6711613   0.5492153   0.8201838


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0079438   -0.0963420    0.0804543
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2408982    0.1736443    0.3081521
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0339223   -0.0336224    0.1014670
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0053031   -0.0184449    0.0078387
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0112884   -0.0336916    0.0111148
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0087314   -0.0812361    0.0986989
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.3318019    0.2248457    0.4387581
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0051889   -0.1072028    0.1175805
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0123003   -0.0029225    0.0275231
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0312763   -0.0563854   -0.0061673
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0338710   -0.1435771    0.2113190
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0389064   -0.1091023    0.0312896
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0519449   -0.0262126    0.1301025
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0686157   -0.0960496   -0.0411818


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0124831   -0.1613414    0.1172948
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.5786059    0.3841771    0.7116493
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0644884   -0.0728182    0.1842216
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0124424   -0.0437833    0.0179574
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0407982   -0.1254787    0.0375110
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0109607   -0.1087726    0.1177643
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.5874525    0.3356949    0.7437993
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0087851   -0.2009719    0.1819067
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0180138   -0.0045040    0.0400267
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0530073   -0.0972827   -0.0105184
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0700000   -0.3766411    0.3717317
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1260228   -0.3832461    0.0833683
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1047461   -0.0658705    0.2480517
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4508050   -0.6585383   -0.2690906
