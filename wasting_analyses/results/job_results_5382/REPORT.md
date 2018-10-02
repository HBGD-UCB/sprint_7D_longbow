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
* W_birthwt
* W_birthlen
* W_nrooms
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

agecat        studyid                    country                        predfeed36    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      110     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      124     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        7     247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      178     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       37     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      200     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       20     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      202     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       32     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      155     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0      126     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        1     282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      268     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      251     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-24 months   ki1000109-EE               PAKISTAN                       0                     0      268     744
0-24 months   ki1000109-EE               PAKISTAN                       0                     1       26     744
0-24 months   ki1000109-EE               PAKISTAN                       1                     0      420     744
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       30     744
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      176    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       30    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      732    1056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1      118    1056
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     4554   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      472   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    19632   25626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      968   25626
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1742    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      202    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     6494    8940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      502    8940
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      112     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0      128     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        3     247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      179     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       37     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      202     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       18     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      200     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       32     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      155     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0      127     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      266     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      251     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-6 months    ki1000109-EE               PAKISTAN                       0                     0      264     732
0-6 months    ki1000109-EE               PAKISTAN                       0                     1       30     732
0-6 months    ki1000109-EE               PAKISTAN                       1                     0      414     732
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       24     732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0      170    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       32    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      728    1018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       88    1018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0       99     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      117     233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       11     233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      161     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       34     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      186     231
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       27     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       18     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      199     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        2     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       30     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      128     250
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1     250
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0      120     250
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        1     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      250     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      236     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     238
6-24 months   ki1000109-EE               PAKISTAN                       0                     0      258     728
6-24 months   ki1000109-EE               PAKISTAN                       0                     1       34     728
6-24 months   ki1000109-EE               PAKISTAN                       1                     0      384     728
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       52     728
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      130     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       23     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     153
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     153
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      160    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       42    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      688    1038
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1      148    1038
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      171     216
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     216
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     216
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1612    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      228    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     6018    8544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      686    8544


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
![](/tmp/52dfc90f-7614-4248-80b7-e91c3100e1c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/52dfc90f-7614-4248-80b7-e91c3100e1c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/52dfc90f-7614-4248-80b7-e91c3100e1c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/52dfc90f-7614-4248-80b7-e91c3100e1c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0517241   0.0113397   0.0921086
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351   0.0148445   0.0920258
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0760764   0.0319987   0.1201542
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0627963   0.0304117   0.0951809
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1388603   0.0713805   0.2063402
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1384587   0.1055673   0.1713500
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0852179   0.0761411   0.0942948
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0487575   0.0442236   0.0532914
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0942333   0.0781983   0.1102683
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0753863   0.0652623   0.0855103
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1137718   0.0657376   0.1618059
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0576056   0.0275409   0.0876703
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1580145   0.0884258   0.2276031
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1078676   0.0777957   0.1379395
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0571429   0.0126499   0.1016358
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0859375   0.0372793   0.1345957
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1085410   0.0643398   0.1527421
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1208806   0.0797243   0.1620369
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1641910   0.0951589   0.2332232
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1750293   0.1387677   0.2112909
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1077348   0.0881340   0.1273356
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1053244   0.0930027   0.1176460


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1178782   0.0898370   0.1459194
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0729614   0.0394957   0.1064270
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.1181319   0.0849287   0.1513351
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1830443   0.1497431   0.2163456
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1069757   0.0954392   0.1185121


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.0330789   0.3566438   2.9924868
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.8254370   0.3799564   1.7932220
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9971073   0.5805451   1.7125681
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5721510   0.4995366   0.6553209
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.7999964   0.6498600   0.9848185
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5063262   0.2590132   0.9897806
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6826438   0.4059947   1.1478044
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5039062   0.5742655   3.9384816
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.1136864   0.6585828   1.8832826
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0660103   0.6691199   1.6983173
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9776262   0.8016197   1.1922773


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0009074   -0.0287180    0.0305328
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0008076   -0.0333974    0.0317822
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0012912   -0.0590188    0.0616012
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0290250   -0.0366070   -0.0214431
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0154861   -0.0293442   -0.0016280
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0400013   -0.0738070   -0.0061955
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0401363   -0.1005611    0.0202886
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0158185   -0.0204494    0.0520865
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0095909   -0.0250731    0.0442549
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0188533   -0.0422783    0.0799849
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0007591   -0.0171262    0.0156080


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0172414   -0.7424613    0.4457182
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0107299   -0.5507288    0.3412291
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0092127   -0.5297297    0.3582792
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5165242   -0.6605654   -0.3849775
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1966557   -0.3900768   -0.0301480
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.5422393   -1.0677109   -0.1503069
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3404893   -0.9600661    0.0832393
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2168067   -0.4609385    0.5801386
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0811882   -0.2609467    0.3304911
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1029985   -0.3018609    0.3819526
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0070964   -0.1723699    0.1348779
