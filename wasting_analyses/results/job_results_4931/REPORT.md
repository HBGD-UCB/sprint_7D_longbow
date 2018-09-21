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

**Intervention Variable:** predfeed3

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

agecat        studyid               country                        predfeed3    wast_rec90d   n_cell       n
------------  --------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        5     118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        6     118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       37     118
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       70     118
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        2      23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        7      23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        4      23
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1       10      23
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      0       22     177
0-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       31     177
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       48     177
0-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       76     177
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        5      92
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       34      92
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0       15      92
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       38      92
0-24 months   ki0047075b-MAL-ED     PERU                           0                      0        1      32
0-24 months   ki0047075b-MAL-ED     PERU                           0                      1       12      32
0-24 months   ki0047075b-MAL-ED     PERU                           1                      0        5      32
0-24 months   ki0047075b-MAL-ED     PERU                           1                      1       14      32
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        7      78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       47      78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        6      78
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       18      78
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        7      45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       24      45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        1      45
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1       13      45
0-24 months   ki1000109-EE          PAKISTAN                       0                      0       38     514
0-24 months   ki1000109-EE          PAKISTAN                       0                      1        6     514
0-24 months   ki1000109-EE          PAKISTAN                       1                      0      262     514
0-24 months   ki1000109-EE          PAKISTAN                       1                      1      208     514
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       68     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       86     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      370     940
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      416     940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0     1034   14674
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1      890   14674
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     7332   14674
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1     5418   14674
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        8     106
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0     106
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       74     106
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       24     106
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      0        2      58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                      1        4      58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      0       10      58
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                      1       42      58
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      0        0      14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                      1        7      14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      0        1      14
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                      1        6      14
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      0       12      82
0-6 months    ki0047075b-MAL-ED     INDIA                          0                      1       20      82
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      0       13      82
0-6 months    ki0047075b-MAL-ED     INDIA                          1                      1       37      82
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      0        3      42
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                      1       17      42
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      0        6      42
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                      1       16      42
0-6 months    ki0047075b-MAL-ED     PERU                           0                      0        0      11
0-6 months    ki0047075b-MAL-ED     PERU                           0                      1        3      11
0-6 months    ki0047075b-MAL-ED     PERU                           1                      0        0      11
0-6 months    ki0047075b-MAL-ED     PERU                           1                      1        8      11
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        2      28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       16      28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        2      28
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1        8      28
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        1      12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1        6      12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        0      12
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        5      12
0-6 months    ki1000109-EE          PAKISTAN                       0                      0       18     216
0-6 months    ki1000109-EE          PAKISTAN                       0                      1        4     216
0-6 months    ki1000109-EE          PAKISTAN                       1                      0       76     216
0-6 months    ki1000109-EE          PAKISTAN                       1                      1      118     216
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      0       28     300
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                      1       34     300
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      0       96     300
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                      1      142     300
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      0      470    9160
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                      1      890    9160
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      0     2382    9160
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                      1     5418    9160
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      0        4      20
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0      20
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      0       10      20
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                      1        6      20
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      0        3      60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                      1        2      60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      0       27      60
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                      1       28      60
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      0        2       9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                      1        0       9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      0        3       9
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                      1        4       9
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      0       10      95
6-24 months   ki0047075b-MAL-ED     INDIA                          0                      1       11      95
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      0       35      95
6-24 months   ki0047075b-MAL-ED     INDIA                          1                      1       39      95
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      0        2      50
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                      1       17      50
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      0        9      50
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                      1       22      50
6-24 months   ki0047075b-MAL-ED     PERU                           0                      0        1      21
6-24 months   ki0047075b-MAL-ED     PERU                           0                      1        9      21
6-24 months   ki0047075b-MAL-ED     PERU                           1                      0        5      21
6-24 months   ki0047075b-MAL-ED     PERU                           1                      1        6      21
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      0        5      50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                      1       31      50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      0        4      50
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                      1       10      50
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      0        6      33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                      1       18      33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      0        1      33
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                      1        8      33
6-24 months   ki1000109-EE          PAKISTAN                       0                      0       20     298
6-24 months   ki1000109-EE          PAKISTAN                       0                      1        2     298
6-24 months   ki1000109-EE          PAKISTAN                       1                      0      186     298
6-24 months   ki1000109-EE          PAKISTAN                       1                      1       90     298
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      0       40     640
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                      1       52     640
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      0      274     640
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                      1      274     640
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      0      564    5514
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                      1        0    5514
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      0     4950    5514
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                      1        0    5514
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      0        4      86
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                      1        0      86
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      0       64      86
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                      1       18      86


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/60ca264f-ab29-411b-ac8a-25b40f960a6c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60ca264f-ab29-411b-ac8a-25b40f960a6c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60ca264f-ab29-411b-ac8a-25b40f960a6c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60ca264f-ab29-411b-ac8a-25b40f960a6c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    NA                0.5454545   0.2068166   0.8840925
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    NA                0.6542056   0.5647903   0.7436209
0-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                0.2689665   0.1723985   0.3655346
0-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                0.5485757   0.4605153   0.6366361
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    NA                0.8717949   0.7698881   0.9737017
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    NA                0.7169811   0.6011080   0.8328543
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                0.8703704   0.7788517   0.9618891
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    NA                0.7500000   0.5833892   0.9166108
0-24 months   ki1000109-EE          PAKISTAN       0                    NA                0.1363636   0.0045897   0.2681376
0-24 months   ki1000109-EE          PAKISTAN       1                    NA                0.4425532   0.3734795   0.5116269
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                0.3836553   0.2716412   0.4956693
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                0.5223537   0.4687679   0.5759396
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    NA                0.4843347   0.4640498   0.5046197
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    NA                0.4257587   0.4140563   0.4374611
0-6 months    ki0047075b-MAL-ED     INDIA          0                    NA                0.5939193   0.4308388   0.7569998
0-6 months    ki0047075b-MAL-ED     INDIA          1                    NA                0.7321479   0.6062663   0.8580296
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    NA                0.5483871   0.3726315   0.7241427
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    NA                0.5966387   0.5078041   0.6854732
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    NA                0.6403814   0.6195151   0.6612477
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    NA                0.6887077   0.6747819   0.7026334
6-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                0.5543498   0.3155859   0.7931136
6-24 months   ki0047075b-MAL-ED     INDIA          1                    NA                0.5231556   0.3979655   0.6483456
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                0.5617095   0.4062060   0.7172131
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    NA                0.5002602   0.4359573   0.5645631


### Parameter: E(Y)


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     NA                   NA                0.6440678   0.5565826   0.7315530
0-24 months   ki0047075b-MAL-ED     INDIA          NA                   NA                0.6045198   0.5246128   0.6844268
0-24 months   ki0047075b-MAL-ED     NEPAL          NA                   NA                0.7826087   0.7016344   0.8635829
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   NA                   NA                0.8333333   0.7515924   0.9150742
0-24 months   ki1000109-EE          PAKISTAN       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5340426   0.4848509   0.5832342
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     NA                   NA                0.4298760   0.4185519   0.4412000
0-6 months    ki0047075b-MAL-ED     INDIA          NA                   NA                0.6951220   0.5922224   0.7980215
0-6 months    ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5866667   0.5072781   0.6660552
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     NA                   NA                0.6886463   0.6752359   0.7020567
6-24 months   ki0047075b-MAL-ED     INDIA          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1113344-GMS-Nepal   NEPAL          NA                   NA                0.5093750   0.4496016   0.5691484


### Parameter: RR


agecat        studyid               country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH     1                    0                 1.1993769   0.6350804   2.2650757
0-24 months   ki0047075b-MAL-ED     INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     INDIA          1                    0                 2.0395685   1.3648590   3.0478165
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     NEPAL          1                    0                 0.8224195   0.6733193   1.0045366
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   1                    0                 0.8617021   0.6737479   1.1020896
0-24 months   ki1000109-EE          PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN       1                    0                 3.2453901   1.2192841   8.6383119
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL          1                    0                 1.3615185   1.0011240   1.8516514
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     1                    0                 0.8790588   0.8392707   0.9207332
0-6 months    ki0047075b-MAL-ED     INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA          1                    0                 1.2327397   0.8910018   1.7055490
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL          1                    0                 1.0879881   0.7640980   1.5491707
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     1                    0                 1.0754648   1.0376626   1.1146442
6-24 months   ki0047075b-MAL-ED     INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA          1                    0                 0.9437283   0.5823502   1.5293600
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL          1                    0                 0.8906030   0.6569100   1.2074313


### Parameter: PAR


agecat        studyid               country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    NA                 0.0986133   -0.2193500    0.4165765
0-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                 0.3355532    0.2455279    0.4255786
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    NA                -0.0891862   -0.1782293   -0.0001430
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                -0.0370370   -0.0955878    0.0215137
0-24 months   ki1000109-EE          PAKISTAN       0                    NA                 0.2799788    0.1439670    0.4159905
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.1503873    0.0478239    0.2529507
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    NA                -0.0544588   -0.0729435   -0.0359740
0-6 months    ki0047075b-MAL-ED     INDIA          0                    NA                 0.1012027   -0.0271287    0.2295340
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.0382796   -0.1179078    0.1944669
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    NA                 0.0482649    0.0291061    0.0674237
6-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                -0.0280340   -0.2304828    0.1744149
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                -0.0523345   -0.1960612    0.0913921


### Parameter: PAF


agecat        studyid               country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH     0                    NA                 0.1531100   -0.5217649    0.5286903
0-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                 0.5550740    0.3899743    0.6754905
0-24 months   ki0047075b-MAL-ED     NEPAL          0                    NA                -0.1139601   -0.2380747   -0.0022878
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA   0                    NA                -0.0444444   -0.1181059    0.0243642
0-24 months   ki1000109-EE          PAKISTAN       0                    NA                 0.6724724    0.1526889    0.8733944
0-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.2816017    0.0604602    0.4506927
0-24 months   kiGH5241-JiVitA-3     BANGLADESH     0                    NA                -0.1266848   -0.1711305   -0.0839259
0-6 months    ki0047075b-MAL-ED     INDIA          0                    NA                 0.1455898   -0.0615819    0.3123312
0-6 months    ki1113344-GMS-Nepal   NEPAL          0                    NA                 0.0652493   -0.2430486    0.2970839
0-6 months    kiGH5241-JiVitA-3     BANGLADESH     0                    NA                 0.0700866    0.0421172    0.0972393
6-24 months   ki0047075b-MAL-ED     INDIA          0                    NA                -0.0532646   -0.5167653    0.2685973
6-24 months   ki1113344-GMS-Nepal   NEPAL          0                    NA                -0.1027427   -0.4246677    0.1464386
