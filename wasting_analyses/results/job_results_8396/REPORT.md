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

unadjusted

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
![](/tmp/d25507ba-0ea9-42bc-b2e6-c63064a282e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d25507ba-0ea9-42bc-b2e6-c63064a282e7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d25507ba-0ea9-42bc-b2e6-c63064a282e7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d25507ba-0ea9-42bc-b2e6-c63064a282e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6415094   0.4947153   0.7883035
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6376812   0.5346516   0.7407107
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3761468   0.2803097   0.4719839
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4520548   0.3633123   0.5407973
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5196078   0.4155941   0.6236215
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5396040   0.4864787   0.5927292
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4293333   0.4043805   0.4542862
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4291815   0.4142366   0.4441264
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2848101   0.2440094   0.3256109
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2757830   0.2506036   0.3009625
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7812500   0.6381241   0.9243759
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8214286   0.6823152   0.9605419
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4791667   0.3368869   0.6214464
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6440678   0.5183967   0.7697389
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4351707   0.7648293
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6015625   0.5163730   0.6867520
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6764706   0.6467316   0.7062096
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7259230   0.7084169   0.7434290
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5197368   0.4402341   0.5992396
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6277778   0.5777944   0.6777611
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4285714   0.2258750   0.6312678
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5121951   0.3484618   0.6759284
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2950820   0.1783533   0.4118106
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3218391   0.2226817   0.4209965
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4776119   0.3548655   0.6003584
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5108696   0.4455959   0.5761433
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1739130   0.1332981   0.2145280
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1422550   0.1204082   0.1641018


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


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9940324   0.7509234   1.315847
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.2018042   0.8710903   1.658075
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0384831   0.8307919   1.298096
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9996463   0.9341603   1.069723
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9683049   0.8170208   1.147602
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0514286   0.8192646   1.349383
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3441415   0.9421617   1.917629
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0026042   0.7360426   1.365702
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0731035   1.0206227   1.128283
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.2078762   1.0165512   1.435210
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.1951219   0.6752625   2.115202
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0906769   0.6603165   1.801524
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0696332   0.8027241   1.425291
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8179663   0.6184822   1.081792


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0021652   -0.1036917   0.0993613
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0434611   -0.0312942   0.1182163
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0159653   -0.0772770   0.1092075
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0001120   -0.0215640   0.0213400
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0066273   -0.0418310   0.0285764
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0187500   -0.0746467   0.1121467
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0909268   -0.0144892   0.1963427
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0012270   -0.1444749   0.1469289
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0357826    0.0108017   0.0607635
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0759663    0.0097975   0.1421351
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0552995   -0.1163127   0.2269118
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0157288   -0.0742746   0.1057323
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0267612   -0.0850927   0.1386151
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0236377   -0.0581109   0.0108356


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0033866   -0.1753248   0.1433989
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.1035754   -0.0930311   0.2648177
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0298097   -0.1608701   0.1891692
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0002609   -0.0515094   0.0484899
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0238235   -0.1585875   0.0952651
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0234375   -0.1009118   0.1337414
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1594945   -0.0496491   0.3269661
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0020408   -0.2722617   0.2172031
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0502386    0.0144465   0.0847308
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1275237    0.0084015   0.2323357
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1142857   -0.3185948   0.4050562
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0506058   -0.2881237   0.3002619
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0530584   -0.1964744   0.2505495
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1572957   -0.4104519   0.0504225
