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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        predfeed6    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      108     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      117     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      175     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       19     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      203     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       29     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      282     754
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       30     754
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      416     754
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       26     754
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      242    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       46    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      714    1120
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      118    1120
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     5880   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      580   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    23674   31350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1216   31350
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1772    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      204    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6766    9264
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      522    9264
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      109     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      197     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       17     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       18     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      201     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       29     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     234
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      241     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      280     732
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       32     732
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      398     732
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       22     732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      234    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       44    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      706    1066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       82    1066
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      101     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      110     228
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       12     228
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      163     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       32     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      184     227
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       26     227
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       17     227
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     227
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      200     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       28     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     230
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      138     248
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1     248
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0      108     248
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      237     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     242
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      233     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     235
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      272     736
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       38     736
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      378     736
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       48     736
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      130     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       23     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     153
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      218    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       60    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      670    1094
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      146    1094
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     1640    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      230    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6276    8858
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      712    8858


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/5ee5d93b-174e-4a77-a1b8-8e671d7d3960/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ee5d93b-174e-4a77-a1b8-8e671d7d3960/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ee5d93b-174e-4a77-a1b8-8e671d7d3960/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ee5d93b-174e-4a77-a1b8-8e671d7d3960/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0442478   0.0062515   0.0822441
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0640000   0.0210033   0.1069967
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0961538   0.0498312   0.1424765
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0588235   0.0277608   0.0898863
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1109486   0.0602232   0.1616740
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1352774   0.1023415   0.1682134
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0816793   0.0734996   0.0898591
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0513970   0.0472035   0.0555905
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0909278   0.0748460   0.1070095
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0750007   0.0650023   0.0849992
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1264117   0.0788605   0.1739629
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0583892   0.0282562   0.0885222
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1246193   0.0712543   0.1779843
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1002739   0.0705564   0.1299915
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0471698   0.0067225   0.0876171
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0983607   0.0454004   0.1513209
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1107949   0.0633404   0.1582493
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1086462   0.0674085   0.1498839
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1791932   0.1200361   0.2383504
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1748888   0.1383576   0.2114200
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1081889   0.0888096   0.1275683
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1050078   0.0928249   0.1171908


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0546218   0.0256911   0.0835526
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0745614   0.0403897   0.1087331
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1882998   0.1555073   0.2210923
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1063445   0.0949209   0.1177682


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.4463999   0.4861604   4.3032566
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.6117647   0.2993296   1.2503142
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.2192802   0.7257045   2.0485532
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6292535   0.5576217   0.7100871
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8248384   0.6664040   1.0209397
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.4618970   0.2435518   0.8759898
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8046423   0.4778889   1.3548113
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 2.0852459   0.7575801   5.7396577
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9806068   0.5540701   1.7355018
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9759789   0.6607801   1.4415307
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9705970   0.7977082   1.1809564


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0103741   -0.0197885    0.0405366
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0218833   -0.0546309    0.0108643
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0354800   -0.0080943    0.0790542
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0243906   -0.0310936   -0.0176876
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0125599   -0.0265493    0.0014295
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0526412   -0.0854701   -0.0198123
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0064204   -0.0502126    0.0373718
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0273916   -0.0084205    0.0632037
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0060529   -0.0294860    0.0415919
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0091066   -0.0410707    0.0592839
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0018444   -0.0181302    0.0144414


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1899251   -0.5852079    0.5860345
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.2946429   -0.8058824    0.0718664
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.2423023   -0.1228407    0.4887023
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4257498   -0.5487893   -0.3124848
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1602686   -0.3560922    0.0072774
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.7135810   -1.2310110   -0.3161565
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0543187   -0.4972378    0.2575743
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.3673696   -0.2946403    0.6908630
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0518019   -0.3064840    0.3118326
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0483621   -0.2590223    0.2807000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0173434   -0.1827431    0.1249261
