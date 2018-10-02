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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predfeed36    swasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      103     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     230
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      149     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      172     195
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       16     195
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     195
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      138     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       25     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     167
Birth       ki0047075b-MAL-ED          PERU                           0                   0      150     266
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0     266
Birth       ki0047075b-MAL-ED          PERU                           1                   0      116     266
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      230     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      114     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     116
Birth       ki1000109-EE               PAKISTAN                       0                   0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     4182   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       72   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    18060   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      324   22638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      218    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1        0    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      976    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       10    1204
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      110     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      128     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      212     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      204     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       32     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      145     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
6 months    ki0047075b-MAL-ED          PERU                           1                   0      126     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      248     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      245     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki1000109-EE               PAKISTAN                       0                   0      280     742
6 months    ki1000109-EE               PAKISTAN                       0                   1       14     742
6 months    ki1000109-EE               PAKISTAN                       1                   0      444     742
6 months    ki1000109-EE               PAKISTAN                       1                   1        4     742
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      206    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      834    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     5248   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      110   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    21090   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      258   26706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1814    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       20    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6472    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       38    8344
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       94     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      207     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      198     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       30     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      106     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1        0     200
24 months   ki0047075b-MAL-ED          PERU                           1                   0       93     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      235     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      212     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      160     910
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       14     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      722     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       14     910
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2658   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      134   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0    10138   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      414   13344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     1688    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       50    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     6126    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      154    8018


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fde73e7a-4d0b-46ac-842f-64a418870127/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fde73e7a-4d0b-46ac-842f-64a418870127/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fde73e7a-4d0b-46ac-842f-64a418870127/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fde73e7a-4d0b-46ac-842f-64a418870127/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0165406   0.0113722   0.0217090
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0176105   0.0141762   0.0210447
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0205319   0.0149547   0.0261091
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0121514   0.0099326   0.0143703
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0117067   0.0062727   0.0171407
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0059886   0.0006315   0.0113458
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0711365   0.0183413   0.1239316
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0188041   0.0049397   0.0326686
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0401472   0.0303187   0.0499757
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0394594   0.0334723   0.0454465
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0261384   0.0167834   0.0354935
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0254772   0.0192038   0.0317506


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0174927   0.0144504   0.0205350
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0137797   0.0115120   0.0160474
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0069511   0.0026049   0.0112973
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0307692   0.0148841   0.0466544
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0410671   0.0355641   0.0465702
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0254428   0.0199234   0.0309621


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0646805   0.7433971   1.5248172
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5918309   0.4327513   0.8093882
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5115571   0.1866984   1.4016763
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2643389   0.0927454   0.7534075
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9828681   0.7380963   1.3088124
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9747035   0.6323236   1.5024694


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0009521   -0.0038978    0.0058020
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0067523   -0.0113144   -0.0021902
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0047556   -0.0107569    0.0012458
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0403672   -0.0840857    0.0033512
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0009199   -0.0078596    0.0096994
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0006957   -0.0092610    0.0078697


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0544293   -0.2653527    0.2933954
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4900161   -0.8477952   -0.2015119
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.6841452   -2.3037416    0.1414749
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3119347   -3.0047357   -0.3346804
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0224006   -0.2161699    0.2141718
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0273427   -0.4271961    0.2604850
