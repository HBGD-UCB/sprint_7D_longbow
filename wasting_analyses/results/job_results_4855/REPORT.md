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
![](/tmp/a9c4fa85-c562-403c-a37c-13727fb2c6bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9c4fa85-c562-403c-a37c-13727fb2c6bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9c4fa85-c562-403c-a37c-13727fb2c6bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9c4fa85-c562-403c-a37c-13727fb2c6bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0164607   0.0111213   0.0218001
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0176057   0.0141680   0.0210433
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0204833   0.0149024   0.0260642
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0121072   0.0098888   0.0143256
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0118409   0.0063952   0.0172867
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0059902   0.0006327   0.0113476
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0710346   0.0181483   0.1239208
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0188036   0.0049299   0.0326773
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0403221   0.0304209   0.0502233
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0395967   0.0336010   0.0455923
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0259306   0.0168368   0.0350244
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0255345   0.0192767   0.0317924


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
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0695559   0.7391548   1.5476457
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5910751   0.4317630   0.8091702
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5058858   0.1848621   1.3843856
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2647107   0.0927226   0.7557144
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9820079   0.7369806   1.3085004
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9847248   0.6430417   1.5079627


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0010320   -0.0039537    0.0060177
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0067036   -0.0112687   -0.0021386
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0048898   -0.0109070    0.0011274
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0402653   -0.0840475    0.0035168
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0007450   -0.0080942    0.0095842
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0004879   -0.0088660    0.0078903


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0589955   -0.2715711    0.3036257
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4864878   -0.8445721   -0.1979179
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7034608   -2.3380202    0.1306887
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3086237   -3.0022547   -0.3316852
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0181413   -0.2222053    0.2112237
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0191751   -0.4090402    0.2628188
