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

unadjusted

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
![](/tmp/2d3794c0-c19e-4634-9018-d05852af2b1d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d3794c0-c19e-4634-9018-d05852af2b1d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d3794c0-c19e-4634-9018-d05852af2b1d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d3794c0-c19e-4634-9018-d05852af2b1d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0517241   0.0113397   0.0921086
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351   0.0148445   0.0920258
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0884354   0.0424753   0.1343954
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0666667   0.0340294   0.0993040
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1456311   0.0774457   0.2138164
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1388235   0.1059200   0.1717271
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0939117   0.0821237   0.1056996
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0469903   0.0423540   0.0516266
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1039095   0.0841317   0.1236872
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0717553   0.0613925   0.0821181
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1020408   0.0530405   0.1510411
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0547945   0.0246123   0.0849768
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1584158   0.0871367   0.2296950
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1078431   0.0777157   0.1379706
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0571429   0.0126499   0.1016358
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0859375   0.0372793   0.1345957
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1164384   0.0643386   0.1685381
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1192661   0.0761838   0.1623483
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2079208   0.1286999   0.2871416
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1770335   0.1404068   0.2136602
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1239130   0.1009902   0.1468359
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1023270   0.0896849   0.1149690


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.7538462   0.3691541   1.5394220
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9532549   0.5640272   1.6110834
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5003670   0.4267432   0.5866927
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6905558   0.5449174   0.8751187
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5369863   0.2585829   1.1151328
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.6807598   0.4008504   1.1561267
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.5039062   0.5742655   3.9384816
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0242849   0.5763364   1.8203946
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8514468   0.5519045   1.3135637
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8257966   0.6686447   1.0198840


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0009074   -0.0287180    0.0305328
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0131666   -0.0472782    0.0209451
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0054796   -0.0664202    0.0554610
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0377187   -0.0478706   -0.0275668
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0251623   -0.0425419   -0.0077826
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0282703   -0.0627878    0.0062472
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0405376   -0.1025918    0.0215165
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0158185   -0.0204494    0.0520865
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0016935   -0.0387956    0.0421826
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0248765   -0.0951777    0.0454247
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0169374   -0.0365312    0.0026565


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0172414   -0.7424613    0.4457182
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.1749271   -0.7228204    0.1987245
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0390973   -0.5789517    0.3161771
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.6712362   -0.8596950   -0.5018755
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.3195321   -0.5629985   -0.1139902
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3832200   -0.9170506    0.0019578
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.3438944   -0.9822754    0.0888995
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2168067   -0.4609385    0.5801386
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0143358   -0.3955274    0.3038231
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1359041   -0.5923325    0.1896930
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1583294   -0.3573247    0.0114916
