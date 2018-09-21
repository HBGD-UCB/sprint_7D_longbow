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

agecat      studyid                    country                        predfeed36    wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       89     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      102     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     230
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      143     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      148     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       31     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2     195
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      123     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       19     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       24     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     167
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     266
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5     266
Birth       ki0047075b-MAL-ED          PERU                           1                  0      115     266
Birth       ki0047075b-MAL-ED          PERU                           1                  1        1     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      217     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       14     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        2     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     116
Birth       ki1000109-EE               PAKISTAN                       0                  0        2       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3796   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      458   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    16596   22638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1788   22638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      210    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        8    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      924    1204
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       62    1204
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      125     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       32     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      145     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           1                  0      126     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      244     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      244     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     247
6 months    ki1000109-EE               PAKISTAN                       0                  0      240     742
6 months    ki1000109-EE               PAKISTAN                       0                  1       54     742
6 months    ki1000109-EE               PAKISTAN                       1                  0      404     742
6 months    ki1000109-EE               PAKISTAN                       1                  1       44     742
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      186    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       20    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      768    1052
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       78    1052
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     4682   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      676   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    19754   26706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1594   26706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1678    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      156    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6198    8344
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      312    8344
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       87     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      103     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       14     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      194     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       29     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      104     200
24 months   ki0047075b-MAL-ED          PERU                           0                  1        2     200
24 months   ki0047075b-MAL-ED          PERU                           1                  0       93     200
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      234     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      128     910
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       46     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      620     910
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      116     910
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2110   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      682   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8204   13344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     2348   13344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     1344    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      394    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     5084    8018
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1196    8018


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/4b90c2ad-b48f-4005-9d8b-70788c25f43b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b90c2ad-b48f-4005-9d8b-70788c25f43b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b90c2ad-b48f-4005-9d8b-70788c25f43b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b90c2ad-b48f-4005-9d8b-70788c25f43b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1906309   0.1171883   0.2640736
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1502060   0.0863041   0.2141079
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0985747   0.0922690   0.1048803
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0989847   0.0927461   0.1052233
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0366972   0.0036757   0.0697188
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0628803   0.0384122   0.0873484
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1788023   0.1233276   0.2342771
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0976799   0.0606184   0.1347414
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0961042   0.0392438   0.1529645
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0921094   0.0645504   0.1196684
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1194332   0.1083591   0.1305072
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0761745   0.0707044   0.0816446
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0903396   0.0742636   0.1064157
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0491909   0.0383869   0.0599948
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0744681   0.0212699   0.1276662
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1196581   0.0607082   0.1786081
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2638781   0.1720179   0.3557383
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1576251   0.1204049   0.1948452
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2312096   0.2104510   0.2519683
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2252904   0.2126025   0.2379784
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2137412   0.1861935   0.2412890
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1920616   0.1764808   0.2076425


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0581395   0.0372149   0.0790642
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1320755   0.0975770   0.1665739
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0931559   0.0682937   0.1180181
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849996   0.0797287   0.0902706
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0560882   0.0466363   0.0655401
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1780220   0.1428346   0.2132094
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2270683   0.2155455   0.2385912
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1983038   0.1835884   0.2130192


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7879413   0.4443752   1.3971338
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0041599   0.9841391   1.0245879
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.7134888   0.6416305   4.5759111
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5463012   0.3356817   0.8890713
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9584328   0.4940360   1.8593656
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6378002   0.5697089   0.7140298
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5445104   0.4109919   0.7214049
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6068376   0.6746844   3.8268663
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5973405   0.3924573   0.9091833
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9743991   0.8785425   1.0807145
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8985709   0.7763605   1.0400189


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0210657   -0.0718016    0.0296702
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0006391   -0.0008954    0.0021735
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0214423   -0.0122812    0.0551658
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0467269   -0.0856788   -0.0077749
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0029483   -0.0536930    0.0477965
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0344336   -0.0437519   -0.0251153
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0342514   -0.0489139   -0.0195890
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0250580   -0.0190769    0.0691929
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0858561   -0.1658932   -0.0058190
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0041413   -0.0225434    0.0142608
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0154374   -0.0384406    0.0075658


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1242337   -0.4654948    0.1375599
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0064412   -0.0091243    0.0217666
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.3688073   -0.5058058    0.7354213
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3537891   -0.6854764   -0.0873751
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0316490   -0.7491159    0.3915213
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4051026   -0.5200111   -0.2988808
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.6106710   -0.9360622   -0.3399678
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2517730   -0.3354583    0.5807854
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4822781   -1.0029728   -0.0969437
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0182380   -0.1026940    0.0597494
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0778473   -0.2003541    0.0321565
